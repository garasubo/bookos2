use core::ptr::{write_volatile};

pub fn init_led() {
    unsafe {
        write_volatile(0x4100_8000 as *mut u32, 1 << 15);
    }
}

pub fn set_led() {
    unsafe {
        write_volatile(0x4100_8018 as *mut u32, 1 << 15);
    }
}

pub fn clear_led() {
    unsafe {
        write_volatile(0x4100_8014 as *mut u32, 1 << 15);
    }
}
