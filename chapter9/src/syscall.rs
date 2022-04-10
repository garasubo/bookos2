pub fn syscall_yield() {
    unsafe {
        asm!("svc 0", in("r0") 0);
    }
}