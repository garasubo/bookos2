use crate::port::{Pin, PortC};

pub struct Button<'a, const N: usize>{
    pin: &'a Pin<PortC, N>,
}

pub type Button1<'a> = Button<'a, 26>;
pub type Button2<'a> = Button<'a, 27>;
pub type Button3<'a> = Button<'a, 28>;

impl<'a> Button1<'a> {
    pub fn new(pin: &'a Pin<PortC, 26>) -> Self {
        Self { pin }
    }
}

impl<'a> Button2<'a> {
    pub fn new(pin: &'a Pin<PortC, 27>) -> Self {
        Self { pin }
    }
}

impl<'a> Button3<'a> {
    pub fn new(pin: &'a Pin<PortC, 28>) -> Self {
        Self { pin }
    }
}

impl<'a, const N: usize> Button<'a, N> {
    pub fn init(&self) {
        self.pin.clear_dir();
        self.pin.enable_floating_input();
    }

    pub fn is_pushed(&self) -> bool {
        !self.pin.get_in()
    }
}