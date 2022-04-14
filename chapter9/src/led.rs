use crate::port::{PortA, Pin};
pub struct LED<'a> {
    pin: &'a Pin<PortA, 15>,
}

impl<'a> LED<'a> {
    pub fn new(pin: &'a Pin<PortA, 15>) -> Self {
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
