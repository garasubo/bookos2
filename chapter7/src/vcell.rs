use core::cell::UnsafeCell;
use core::ptr::{read_volatile, write_volatile};

#[repr(transparent)]
pub struct VolatileCell<T> {
    inner: UnsafeCell<T>,
}

impl<T> VolatileCell<T> {
    pub fn read(&self) -> T {
        unsafe {
            read_volatile(self.inner.get())
        }
    }

    pub fn write(&self, val: T) {
        unsafe {
            write_volatile(self.inner.get(), val);
        }
    }
}