use core::mem::MaybeUninit;
use core::marker::PhantomData;

#[repr(C)]
pub struct ContextFrame {
    pub r0: u32,
    pub r1: u32,
    pub r2: u32,
    pub r3: u32,
    pub r12: u32,
    pub lr: u32,
    pub return_addr: u32,
    pub xpsr: u32,
}

#[repr(align(8))]
pub struct AlignedStack(pub MaybeUninit<[u8; 1024]>);

extern "C" {
    fn asm_execute_process(sp: usize, regs: &mut [u32; 8]) -> usize;
}

pub struct Process<'a> {
    sp: usize,
    regs: [u32; 8],
    marker: PhantomData<&'a u8>,
}

impl<'a> Process<'a> {
    pub fn new(stack: &'a mut AlignedStack, app_main: extern "C" fn() -> !) -> Self {
        let sp = 
            (stack.0.as_ptr() as usize) + unsafe { stack.0.assume_init_ref().len() } - 0x20;
        let context_freame: &mut ContextFrame = unsafe {
            &mut *(sp as *mut ContextFrame)
        };
        context_freame.r0 = 0;
        context_freame.r1 = 0;
        context_freame.r2 = 0;
        context_freame.r3 = 0;
        context_freame.r12 = 0;
        context_freame.lr = 0;
        context_freame.return_addr = app_main as u32;
        context_freame.xpsr = 0x0100_0000;

        Process {
            sp,
            regs: [0; 8],
            marker: PhantomData,
        }
    }

    pub fn exec(&mut self) {
        self.sp = unsafe { asm_execute_process(self.sp, &mut self.regs) }
    }
}

