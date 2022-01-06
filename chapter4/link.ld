MEMORY
{
  FLASH : ORIGIN = 0x00000000 + 16K, LENGTH = 512K - 16K
  RAM : ORIGIN = 0x20000000, LENGTH = 192K
}

/* The entry point is the reset handler */
ENTRY(Reset);

EXTERN(RESET_VECTOR);

SECTIONS
{
  .vector_table ORIGIN(FLASH) :
  {
    /* First entry: initial Stack Pointer value */
    LONG(ORIGIN(RAM) + LENGTH(RAM));

    /* Second entry: reset vector */
    KEEP(*(.vector_table.reset_vector));

    KEEP(*(.vector_table.exceptions));
  } > FLASH

  .text :
  {
    *(.text .text.*);
  } > FLASH

    .rodata :
  {
      *(.rodata .rodata.*);
  } > FLASH

  .bss (NOLOAD):
  {
    _sbss = .;
    *(.bss .bss.*);
    _ebss = .;
  } > RAM

  .data : AT(ADDR(.rodata) + SIZEOF(.rodata))
  {
    _sdata = .;
    *(.data .data.*);
    _edata = .;
  } > RAM

  _sidata = LOADADDR(.data);

  /DISCARD/ :
  {
    *(.ARM.exidx .ARM.exidx.*);
  }
}

PROVIDE(NMI = DefaultExceptionHandler);
PROVIDE(HardFault = DefaultExceptionHandler);
PROVIDE(MemManage = DefaultExceptionHandler);
PROVIDE(BusFault = DefaultExceptionHandler);
PROVIDE(UsageFault = DefaultExceptionHandler);
PROVIDE(SVCall = DefaultExceptionHandler);
PROVIDE(PendSV = DefaultExceptionHandler);
PROVIDE(SysTick = DefaultExceptionHandler);
