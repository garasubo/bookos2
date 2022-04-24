pub fn syscall_yield() {
    unsafe {
        asm!("svc 0", in("r0") 0);
    }
}

pub fn syscall_set_led(value: bool) {
    unsafe {
        asm!("svc 0", in("r0") 1, in("r1") value as u32);
    }
}

pub fn syscall_get_switch() -> bool {
    let result: u32;
    unsafe {
        asm!("svc 0", in("r0") 2, lateout("r0") result);
    }

    result > 0
}