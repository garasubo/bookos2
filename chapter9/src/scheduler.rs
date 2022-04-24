use crate::linked_list::{LinkedList, ListItem};
use crate::port::{Port, PortA, PortC};
use crate::process::Process;
use crate::led::LED;
use crate::button::Button1;

pub struct Scheduler<'a> {
    list: LinkedList<'a, Process<'a>>,
}

impl<'a> Scheduler<'a> {
    pub fn new() -> Self {
        Scheduler {
            list: LinkedList::new(),
        }
    }

    pub fn push(&mut self, item: &'a mut ListItem<'a, Process<'a>>) {
        self.list.push(item);
    }

    fn schedule_next(&mut self) {
        let current = self.list.pop().unwrap();
        self.list.push(current);
    }

    pub fn exec(&mut self) -> ! {
        let porta = Port::<PortA>::new();
        let led = LED::new(&porta.pin15);
        let portc = Port::<PortC>::new();
        let button1 = Button1::new(&portc.pin26);
        led.init();
        button1.init();
        loop {
            let current = self.list.head_mut();
            if current.is_none() {
                unimplemented!();
            }
            let mut should_schedule_next = false;
            current.map(|p| {
                p.exec();
                let context_frame = p.get_context_frame();
                match context_frame.r0 {
                    0 => {
                        should_schedule_next = true;
                    },
                    1 => {
                        if context_frame.r1 > 0 {
                            led.set();
                        } else {
                            led.clear();
                        }
                    },
                    2 => {
                        context_frame.r0 = button1.is_pushed() as u32;
                    },
                    _ => {}
                }
            });
            if should_schedule_next {
                self.schedule_next();
            }
        }

    }
}