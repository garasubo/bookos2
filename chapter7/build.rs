use std::error::Error;
use cc::Build;

fn main() -> Result<(), Box<dyn Error>> {
    println!("cargo:rerun-if-changed=src/asm.s");
    Build::new().file("src/asm.s").compile("asm");

    Ok(())
}