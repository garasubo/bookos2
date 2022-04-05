use core::ops::Deref;
use crate::vcell::VolatileCell;

struct Pin<const N: usize>;

impl<const N: usize> Pin<N> {
    fn new() -> Self {
        Self {}
    }

    fn registers<'a>(&'a self) -> &'a PortRegisters {
        let registers = 0x4100_8000 as *const PortRegisters;
        unsafe { &*registers }
    }
    
    fn clear_dir(&self) {
        self.registers().dirclr.write(1 << N);
    }

    fn set_dir(&self) {
        self.registers().dirset.write(1 << N);
    }

    fn set_out(&self) {
        self.registers().outset.write(1 << N);
    }
    
    fn clear_out(&self) {
        self.registers().outclr.write(1 << N);
    }
}  

pub struct PortA {
    pa0: Pin<0>,
    pa1: Pin<1>,
    pa2: Pin<2>,
    pa3: Pin<3>,
    pa4: Pin<4>,
    pa5: Pin<5>,
    pa6: Pin<6>,
    pa7: Pin<7>,
    pa8: Pin<8>,
    pa9: Pin<9>,
    pa10: Pin<10>,
    pa11: Pin<11>,
    pa12: Pin<12>,
    pa13: Pin<13>,
    pa14: Pin<14>,
    pa15: Pin<15>,
    pa16: Pin<16>,
    pa17: Pin<17>,
    pa18: Pin<18>,
    pa19: Pin<19>,
    pa20: Pin<20>,
    pa21: Pin<21>,
    pa22: Pin<22>,
    pa23: Pin<23>,
    pa24: Pin<24>,
    pa25: Pin<25>,
    pa26: Pin<26>,
    pa27: Pin<27>,
    pa28: Pin<28>,
    pa29: Pin<29>,
    pa30: Pin<30>,
    pa31: Pin<31>,
}

impl PortA {
    pub fn new() -> Self {
        Self {
            pa0: Pin::new(),
            pa1: Pin::new(),
            pa2: Pin::new(),
            pa3: Pin::new(),
            pa4: Pin::new(),
            pa5: Pin::new(),
            pa6: Pin::new(),
            pa7: Pin::new(),
            pa8: Pin::new(),
            pa9: Pin::new(),
            pa10: Pin::new(),
            pa11: Pin::new(),
            pa12: Pin::new(),
            pa13: Pin::new(),
            pa14: Pin::new(),
            pa15: Pin::new(),
            pa16: Pin::new(),
            pa17: Pin::new(),
            pa18: Pin::new(),
            pa19: Pin::new(),
            pa20: Pin::new(),
            pa21: Pin::new(),
            pa22: Pin::new(),
            pa23: Pin::new(),
            pa24: Pin::new(),
            pa25: Pin::new(),
            pa26: Pin::new(),
            pa27: Pin::new(),
            pa28: Pin::new(),
            pa29: Pin::new(),
            pa30: Pin::new(),
            pa31: Pin::new(),
        }
    }
}

impl Deref for PortA {
    type Target = PortRegisters;    

    fn deref(&self) -> &Self::Target {
        let registers = 0x4100_8000 as *const PortRegisters;
        unsafe { &*registers }
    }
}

#[repr(C)]
pub struct PortRegisters {
    pub dir: VolatileCell<u32>,
    pub dirclr: VolatileCell<u32>,
    pub dirset: VolatileCell<u32>,
    pub dirtgl: VolatileCell<u32>,

    pub out: VolatileCell<u32>,
    pub outclr: VolatileCell<u32>,
    pub outset: VolatileCell<u32>,
    pub outtgl: VolatileCell<u32>,

    pub in_: VolatileCell<u32>,
    pub ctrl: VolatileCell<u32>,
    pub wrconfigf: VolatileCell<u32>,
    pub evctrl: VolatileCell<u32>,

    pub pmux: [VolatileCell<u8>; 16],

    pub pincfg: [VolatileCell<u8>; 32],
}

pub struct LED<'a> {
    pin: &'a Pin<15>,
}

impl<'a> LED<'a> {
    pub fn new(pin: &'a Pin<15>) -> Self {
        Self { pin }
    }

    pub fn init(&self) {
        self.pin.set_dir();
    }

    pub fn set(&self) {
        self.pin.set_out();
    }
    
    pub fn clear(&self) {
        self.pin.clear_out();
    }
}
