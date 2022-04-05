use alloc::alloc::{GlobalAlloc, Layout};

use crate::mutex::Mutex;

struct ListNode {
    size: usize,
    next: Option<&'static mut ListNode>,
}

impl ListNode {
    const fn new(size: usize) -> Self {
        Self {
            size,
            next: None,
        }
    }

    fn start_addr(&self) -> usize {
        self as *const Self as usize
    }
    
    fn end_addr(&self) -> usize {
        self.start_addr() + self.size
    }
}

fn align_addr(addr: usize, align: usize) -> usize {
    (addr + align - 1) / align * align
}

pub struct SimpleAllocator {
    head: ListNode,
}

impl SimpleAllocator {
    pub const fn new() -> Self {
        Self {
            head: ListNode::new(0),
        }
    }

    pub unsafe fn add_new_node(&mut self, start_addr: usize, size: usize) {
        let end_addr = start_addr + size;
        let aligned_addr = align_addr(start_addr, core::mem::align_of::<ListNode>());
        let size = end_addr - aligned_addr;
        if size < core::mem::size_of::<ListNode>() {
            return;
        }
        let new_area_ptr = aligned_addr as *mut ListNode;
        (*new_area_ptr).size = size;
        (*new_area_ptr).next = self.head.next.take();

        self.head.next = Some(&mut *new_area_ptr);
    }

    unsafe fn alloc(&mut self, layout: Layout) -> *mut u8 {
        let align = layout.align();
        let size = layout.size();
        let mut current = &mut self.head;
        while let Some(ref mut node) = current.next {
            let start_addr = node.start_addr();
            let aligned_addr = align_addr(start_addr, align);
            let end_addr = node.end_addr();
            let node_size = end_addr - aligned_addr;
            if node_size < size {
                current = current.next.as_mut().unwrap();
            } else {
                let next = current.next.take();
                let result = aligned_addr as *mut u8;
                current.next = next.unwrap().next.take();
                self.add_new_node(start_addr, aligned_addr - start_addr);
                self.add_new_node(aligned_addr + size, end_addr - (aligned_addr + size));

                return result;
            }
        }



        return core::ptr::null_mut();
    }

    unsafe fn dealloc(&mut self, ptr: *mut u8, layout: Layout) {
        self.add_new_node(ptr as usize, layout.size());
    }
}

unsafe impl GlobalAlloc for Mutex<SimpleAllocator> {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        self.lock().alloc(layout)
    }
    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        self.lock().dealloc(ptr, layout);
    }
}
