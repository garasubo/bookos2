use std::error::Error;
use cc::Build;

fn main() -> Result<(), Box<dyn Error>> {
    Build::new().file("src/asm.s").compile("asm");

    Ok(())
}