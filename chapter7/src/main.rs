#![no_main]
#![no_std]
#![feature(asm)]
#![feature(naked_functions)]

use core::panic::PanicInfo;
use core::ptr;
use cortex_m_semihosting::hprintln;
use core::mem::MaybeUninit;

mod process;
mod linked_list;
mod scheduler;
mod systick;
mod mutex;
mod led;
mod vcell;
mod port;
mod button;

use process::{AlignedStack, Process};
use linked_list::ListItem;
use scheduler::Scheduler;

use port::{Port, PortA, PortC};
use led::LED;
use button::{Button1, Button2, Button3};


static GLOBAL_COUNT: mutex::Mutex<usize> = mutex::Mutex::new(0);

#[no_mangle]
pub unsafe extern "C" fn Reset() -> ! {
    extern "C" {
        static mut _sbss: u8;
        static mut _ebss: u8;
        static mut _sidata: u8;
        static mut _sdata: u8;
        static mut _edata: u8;
    }

    let count = &_ebss as *const u8 as usize - &_sbss as *const u8 as usize;
    ptr::write_bytes(&mut _sbss as *mut u8, 0, count);

    let count =
        &_edata as *const u8 as usize - &_sdata as *const u8 as usize;
    ptr::copy_nonoverlapping(
        &_sidata as *const u8,
        &mut _sdata as *mut u8,
        count
    );

    hprintln!("Hello World").unwrap();

    systick::init();

    #[link_section = ".app_stack"]
    static mut APP_STACK: AlignedStack = AlignedStack(MaybeUninit::uninit());
    #[link_section = ".app_stack"]
    static mut APP_STACK2: AlignedStack = AlignedStack(MaybeUninit::uninit());
    #[link_section = ".app_stack"]
    static mut APP_STACK3: AlignedStack = AlignedStack(MaybeUninit::uninit());

    let process1 = Process::new(&mut APP_STACK, app_main);
    let mut item1 = ListItem::new(process1);
    let process2 = Process::new(&mut APP_STACK2, app_main2);
    let mut item2 = ListItem::new(process2);
    let process3 = Process::new(&mut APP_STACK3, app_main3);
    let mut item3 = ListItem::new(process3);
    let mut sched = Scheduler::new();
    sched.push(&mut item1);
    sched.push(&mut item2);
    sched.push(&mut item3);

    let porta = Port::<PortA>::new();
    let led = LED::new(&porta.pin15);
    let portc = Port::<PortC>::new();
    let button1 = Button1::new(&portc.pin26);
    let button2 = Button2::new(&portc.pin27);
    let button3 = Button3::new(&portc.pin28);
    led.init();
    button1.init();
    button2.init();
    button3.init();
    while !button1.is_pushed() {}
    hprintln!("Set LED").unwrap();
    led.set();
    while !button2.is_pushed() {}
    hprintln!("Clear LED").unwrap();
    led.clear();
    while !button3.is_pushed() {}
    hprintln!("Set LED").unwrap();
    led.set();

    sched.exec();
}

extern "C" fn app_main() -> ! {
    let mut i = 0;
    let mut guard = GLOBAL_COUNT.lock();
    *guard += 1;
    drop(guard);

    loop {
        hprintln!("App: {}", i).unwrap();
        unsafe { asm!("svc 0"); }
        i += 1;
    }
}

extern "C" fn app_main2() -> ! {
    loop {
        hprintln!("App2").unwrap();
        unsafe { asm!("svc 0"); }
    }
}

extern "C" fn app_main3() -> ! {
    loop {
        hprintln!("App3").unwrap();
        unsafe { asm!("svc 0"); }
    }
}

pub union Vector {
    reserved: u32,
    handler: unsafe extern "C" fn(),
}

extern "C" {
    fn NMI();
    fn HardFault();
    fn MemManage();
    fn BusFault();
    fn UsageFault();
    fn PendSV();
}

#[link_section = ".vector_table.exceptions"]
#[no_mangle]
pub static EXCEPTIONS: [Vector; 14] = [
    Vector { handler: NMI },
    Vector { handler: HardFault },
    Vector { handler: MemManage },
    Vector { handler: BusFault },
    Vector {
        handler: UsageFault,
    },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { handler: SVCall },
    Vector { reserved: 0 },
    Vector { reserved: 0 },
    Vector { handler: PendSV },
    Vector { handler: SysTick },
];

#[no_mangle]
pub extern "C" fn SysTick() {
    hprintln!("Systick").unwrap();
}

#[no_mangle]
#[naked]
pub unsafe extern "C" fn SVCall() {
    asm!(
        "cmp lr, #0xfffffff9",
        "bne 1f",

        "mov r0, #1",
        "msr CONTROL, r0",
        "isb",
        "movw lr, #0xfffd",
        "movt lr, #0xffff",
        "bx lr",

        "1:",
        "mov r0, #0",
        "msr CONTROL, r0",
        "isb",
        "movw lr, #0xfff9",
        "movt lr, #0xffff",
        "bx lr",
        options(noreturn),
    );
}

#[no_mangle]
pub extern "C" fn DefaultExceptionHandler() {
    loop {}
}

// The reset vector, a pointer into the reset handler
#[link_section = ".vector_table.reset_vector"]
#[no_mangle]
pub static RESET_VECTOR: unsafe extern "C" fn() -> ! = Reset;

#[panic_handler]
fn panic(_panic: &PanicInfo<'_>) -> ! {
    loop {}
}
