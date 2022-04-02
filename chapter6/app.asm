warning: unused import: `core::cell::Cell`
  --> src/main.rs:20:5
   |
20 | use core::cell::Cell;
   |     ^^^^^^^^^^^^^^^^
   |
   = note: `#[warn(unused_imports)]` on by default

warning: associated function is never used: `is_empty`
  --> src/linked_list.rs:52:12
   |
52 |     pub fn is_empty(&self) -> bool {
   |            ^^^^^^^^
   |
   = note: `#[warn(dead_code)]` on by default

warning: unused `Result` that must be used
  --> src/main.rs:73:5
   |
73 |     GLOBAL_COUNT.compare_exchange(false, true, Ordering::Relaxed, Ordering::Relaxed);
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: `#[warn(unused_must_use)]` on by default
   = note: this `Result` may be an `Err` variant, which should be handled

warning: 3 warnings emitted


bookos:	file format elf32-littlearm

Disassembly of section .text:

00004040 <<() as core::fmt::Debug>::fmt::hf7494cedc883aec0.llvm.15468157479303592149>:
    4040: 08 46        	mov	r0, r1
    4042: 45 f2 48 11  	movw	r1, #20808
    4046: c0 f2 00 01  	movt	r1, #0
    404a: 02 22        	movs	r2, #2
    404c: 00 f0 0f be  	b.w	0x4c6e <core::fmt::Formatter::pad::h2af898439b848233> @ imm = #3102

00004050 <core::ptr::drop_in_place<()>::h5339abc05ed01fec.llvm.15468157479303592149>:
    4050: 70 47        	bx	lr

00004052 <bookos::systick::init::hb6a5a21719ba2d82>:
    4052: 80 b5        	push	{r7, lr}
    4054: 6f 46        	mov	r7, sp
    4056: 82 b0        	sub	sp, #8
    4058: 45 f2 88 10  	movw	r0, #20872
    405c: 0d 21        	movs	r1, #13
    405e: c0 f2 00 00  	movt	r0, #0
    4062: 00 f0 eb f9  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #982
    4066: 00 28        	cmp	r0, #0
    4068: 01 bf        	itttt	eq
    406a: 4e f2 10 00  	movweq	r0, #57360
    406e: ce f2 00 00  	movteq	r0, #57344
    4072: 00 21        	moveq	r1, #0
    4074: 81 60        	streq	r1, [r0, #8]
    4076: 01 bf        	itttt	eq
    4078: 4f f4 00 01  	moveq.w	r1, #8388608
    407c: 41 60        	streq	r1, [r0, #4]
    407e: 03 21        	moveq	r1, #3
    4080: 01 60        	streq	r1, [r0]
    4082: 04 bf        	itt	eq
    4084: 02 b0        	addeq	sp, #8
    4086: 80 bd        	popeq	{r7, pc}
    4088: 45 f2 a4 10  	movw	r0, #20900
    408c: 45 f2 78 13  	movw	r3, #20856
    4090: c0 f2 00 00  	movt	r0, #0
    4094: 01 aa        	add	r2, sp, #4
    4096: 00 90        	str	r0, [sp]
    4098: 45 f2 4a 10  	movw	r0, #20810
    409c: c0 f2 00 00  	movt	r0, #0
    40a0: c0 f2 00 03  	movt	r3, #0
    40a4: 2b 21        	movs	r1, #43
    40a6: 00 f0 63 fb  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #1734
    40aa: fe de        	trap

000040ac <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50>:
    40ac: 80 b5        	push	{r7, lr}
    40ae: 6f 46        	mov	r7, sp
    40b0: 05 68        	ldr	r5, [r0]
    40b2: d5 b1        	cbz	r5, 0x40ea <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0x3e> @ imm = #52
    40b4: 04 46        	mov	r4, r0
    40b6: 00 26        	movs	r6, #0
    40b8: 05 e0        	b	0x40c6 <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0x1a> @ imm = #10
    40ba: c4 e9 00 65  	strd	r6, r5, [r4]
    40be: 20 46        	mov	r0, r4
    40c0: 05 60        	str	r5, [r0]
    40c2: 25 68        	ldr	r5, [r4]
    40c4: 8d b1        	cbz	r5, 0x40ea <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0x3e> @ imm = #34
    40c6: 28 68        	ldr	r0, [r5]
    40c8: 29 1d        	adds	r1, r5, #4
    40ca: 00 f0 a8 f9  	bl	0x441e <asm_execute_process> @ imm = #848
    40ce: 69 6a        	ldr	r1, [r5, #36]
    40d0: 28 60        	str	r0, [r5]
    40d2: 00 29        	cmp	r1, #0
    40d4: f1 d0        	beq	0x40ba <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0xe> @ imm = #-30
    40d6: 60 68        	ldr	r0, [r4, #4]
    40d8: c4 e9 00 15  	strd	r1, r5, [r4]
    40dc: 00 28        	cmp	r0, #0
    40de: ee d0        	beq	0x40be <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0x12> @ imm = #-36
    40e0: 24 30        	adds	r0, #36
    40e2: 05 60        	str	r5, [r0]
    40e4: 25 68        	ldr	r5, [r4]
    40e6: 00 2d        	cmp	r5, #0
    40e8: ed d1        	bne	0x40c6 <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50+0x1a> @ imm = #-38
    40ea: 45 f2 c4 10  	movw	r0, #20932
    40ee: 45 f2 d4 12  	movw	r2, #20948
    40f2: c0 f2 00 00  	movt	r0, #0
    40f6: c0 f2 00 02  	movt	r2, #0
    40fa: 0f 21        	movs	r1, #15
    40fc: 00 f0 0d fb  	bl	0x471a <core::panicking::panic::h1d8047119dafb914> @ imm = #1562
    4100: fe de        	trap

00004102 <<() as core::fmt::Debug>::fmt::hf7494cedc883aec0>:
    4102: 08 46        	mov	r0, r1
    4104: 45 f2 e4 11  	movw	r1, #20964
    4108: c0 f2 00 01  	movt	r1, #0
    410c: 02 22        	movs	r2, #2
    410e: 00 f0 ae bd  	b.w	0x4c6e <core::fmt::Formatter::pad::h2af898439b848233> @ imm = #2908

00004112 <core::ptr::drop_in_place<()>::h5339abc05ed01fec>:
    4112: 70 47        	bx	lr

00004114 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h74f2f70b11307f76E>:
    4114: 00 28        	cmp	r0, #0
    4116: 08 bf        	it	eq
    4118: 70 47        	bxeq	lr
    411a: 80 b5        	push	{r7, lr}
    411c: 6f 46        	mov	r7, sp
    411e: 82 b0        	sub	sp, #8
    4120: 45 f2 3c 20  	movw	r0, #21052
    4124: 45 f2 14 23  	movw	r3, #21012
    4128: c0 f2 00 00  	movt	r0, #0
    412c: 01 aa        	add	r2, sp, #4
    412e: 00 90        	str	r0, [sp]
    4130: 45 f2 e6 10  	movw	r0, #20966
    4134: c0 f2 00 00  	movt	r0, #0
    4138: c0 f2 00 03  	movt	r3, #0
    413c: 2b 21        	movs	r1, #43
    413e: 00 f0 17 fb  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #1582
    4142: fe de        	trap

00004144 <Reset>:
    4144: 80 b5        	push	{r7, lr}
    4146: 6f 46        	mov	r7, sp
    4148: a0 b0        	sub	sp, #128
    414a: 40 f2 0c 01  	movw	r1, #12
    414e: 40 f2 00 00  	movw	r0, #0
    4152: c2 f2 00 01  	movt	r1, #8192
    4156: c2 f2 00 00  	movt	r0, #8192
    415a: 09 1a        	subs	r1, r1, r0
    415c: 00 f0 f1 ff  	bl	0x5142 <__aeabi_memclr> @ imm = #4066
    4160: 40 f2 0c 01  	movw	r1, #12
    4164: 40 f2 0c 00  	movw	r0, #12
    4168: c2 f2 00 01  	movt	r1, #8192
    416c: c2 f2 00 00  	movt	r0, #8192
    4170: 0a 1a        	subs	r2, r1, r0
    4172: 45 f2 c4 31  	movw	r1, #21444
    4176: c0 f2 00 01  	movt	r1, #0
    417a: 00 f0 db ff  	bl	0x5134 <__aeabi_memcpy> @ imm = #4022
    417e: 45 f2 24 20  	movw	r0, #21028
    4182: 0c 21        	movs	r1, #12
    4184: c0 f2 00 00  	movt	r0, #0
    4188: 00 f0 58 f9  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #688
    418c: ff f7 c2 ff  	bl	0x4114 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h74f2f70b11307f76E> @ imm = #-124
    4190: ff f7 5f ff  	bl	0x4052 <bookos::systick::init::hb6a5a21719ba2d82> @ imm = #-322
    4194: 40 f2 10 03  	movw	r3, #16
    4198: 44 f2 55 22  	movw	r2, #16981
    419c: 00 20        	movs	r0, #0
    419e: c2 f2 00 03  	movt	r3, #8192
    41a2: 4f f0 80 71  	mov.w	r1, #16777216
    41a6: c0 f2 00 02  	movt	r2, #0
    41aa: c3 e9 f8 00  	strd	r0, r0, [r3, #992]
    41ae: 44 f2 07 3c  	movw	r12, #17159
    41b2: c3 e9 fa 00  	strd	r0, r0, [r3, #1000]
    41b6: c0 f2 00 0c  	movt	r12, #0
    41ba: c3 e9 fc 00  	strd	r0, r0, [r3, #1008]
    41be: c3 e9 fe 21  	strd	r2, r1, [r3, #1016]
    41c2: 03 f5 78 73  	add.w	r3, r3, #992
    41c6: 40 f2 10 42  	movw	r2, #1040
    41ca: 00 93        	str	r3, [sp]
    41cc: 40 f6 10 03  	movw	r3, #2064
    41d0: c2 f2 00 02  	movt	r2, #8192
    41d4: c2 f2 00 03  	movt	r3, #8192
    41d8: c2 e9 f8 00  	strd	r0, r0, [r2, #992]
    41dc: c2 e9 fa 00  	strd	r0, r0, [r2, #1000]
    41e0: c2 e9 fc 00  	strd	r0, r0, [r2, #1008]
    41e4: cd e9 07 00  	strd	r0, r0, [sp, #28]
    41e8: cd e9 05 00  	strd	r0, r0, [sp, #20]
    41ec: cd e9 03 00  	strd	r0, r0, [sp, #12]
    41f0: cd e9 01 00  	strd	r0, r0, [sp, #4]
    41f4: c3 e9 f8 00  	strd	r0, r0, [r3, #992]
    41f8: c3 e9 fa 00  	strd	r0, r0, [r3, #1000]
    41fc: c3 e9 fc 00  	strd	r0, r0, [r3, #1008]
    4200: cd e9 11 00  	strd	r0, r0, [sp, #68]
    4204: cd e9 0f 00  	strd	r0, r0, [sp, #60]
    4208: cd e9 0d 00  	strd	r0, r0, [sp, #52]
    420c: cd e9 0b 00  	strd	r0, r0, [sp, #44]
    4210: cd e9 1b 00  	strd	r0, r0, [sp, #108]
    4214: cd e9 19 00  	strd	r0, r0, [sp, #100]
    4218: cd e9 17 00  	strd	r0, r0, [sp, #92]
    421c: cd e9 15 00  	strd	r0, r0, [sp, #84]
    4220: 1d 90        	str	r0, [sp, #116]
    4222: 03 f5 78 70  	add.w	r0, r3, #992
    4226: 14 90        	str	r0, [sp, #80]
    4228: 68 46        	mov	r0, sp
    422a: c2 e9 fe c1  	strd	r12, r1, [r2, #1016]
    422e: 44 f2 57 3c  	movw	r12, #17239
    4232: 1e 90        	str	r0, [sp, #120]
    4234: 14 a8        	add	r0, sp, #80
    4236: c0 f2 00 0c  	movt	r12, #0
    423a: 1f 90        	str	r0, [sp, #124]
    423c: 13 90        	str	r0, [sp, #76]
    423e: 1e a8        	add	r0, sp, #120
    4240: c3 e9 fe c1  	strd	r12, r1, [r3, #1016]
    4244: 02 f5 78 71  	add.w	r1, r2, #992
    4248: 0a 91        	str	r1, [sp, #40]
    424a: 0a a9        	add	r1, sp, #40
    424c: 09 91        	str	r1, [sp, #36]
    424e: ff f7 2d ff  	bl	0x40ac <bookos::scheduler::Scheduler::exec::h80bb4afccbd57a50> @ imm = #-422
    4252: fe de        	trap

00004254 <bookos::app_main::h596905cd8cc205d4>:
    4254: 80 b5        	push	{r7, lr}
    4256: 6f 46        	mov	r7, sp
    4258: 8a b0        	sub	sp, #40
    425a: 00 20        	movs	r0, #0
    425c: 01 21        	movs	r1, #1
    425e: 01 90        	str	r0, [sp, #4]
    4260: 40 f2 00 00  	movw	r0, #0
    4264: c2 f2 00 00  	movt	r0, #8192
    4268: d0 e8 4f 2f  	ldrexb	r2, [r0]
    426c: 22 b9        	cbnz	r2, 0x4278 <bookos::app_main::h596905cd8cc205d4+0x24> @ imm = #8
    426e: c0 e8 42 1f  	strexb	r2, r1, [r0]
    4272: 00 2a        	cmp	r2, #0
    4274: f8 d1        	bne	0x4268 <bookos::app_main::h596905cd8cc205d4+0x14> @ imm = #-16
    4276: 01 e0        	b	0x427c <bookos::app_main::h596905cd8cc205d4+0x28> @ imm = #2
    4278: bf f3 2f 8f  	clrex
    427c: 01 20        	movs	r0, #1
    427e: 45 f2 54 2b  	movw	r11, #21076
    4282: 44 f6 49 76  	movw	r6, #20297
    4286: 07 90        	str	r0, [sp, #28]
    4288: 02 a8        	add	r0, sp, #8
    428a: 00 25        	movs	r5, #0
    428c: 4f f0 02 0a  	mov.w	r10, #2
    4290: c0 f2 00 0b  	movt	r11, #0
    4294: c0 f2 00 06  	movt	r6, #0
    4298: 0d f1 20 09  	add.w	r9, sp, #32
    429c: 0d f1 04 08  	add.w	r8, sp, #4
    42a0: cd f8 18 90  	str.w	r9, [sp, #24]
    42a4: cd e9 04 55  	strd	r5, r5, [sp, #16]
    42a8: cd f8 0c a0  	str.w	r10, [sp, #12]
    42ac: cd f8 08 b0  	str.w	r11, [sp, #8]
    42b0: 09 96        	str	r6, [sp, #36]
    42b2: cd f8 20 80  	str.w	r8, [sp, #32]
    42b6: 00 f0 22 f9  	bl	0x44fe <cortex_m_semihosting::export::hstdout_fmt::h2e4364b6a0adcace> @ imm = #580
    42ba: 90 b9        	cbnz	r0, 0x42e2 <bookos::app_main::h596905cd8cc205d4+0x8e> @ imm = #36
    42bc: 02 ac        	add	r4, sp, #8
    42be: 00 df        	svc	#0
    42c0: cd e9 04 55  	strd	r5, r5, [sp, #16]
    42c4: 01 98        	ldr	r0, [sp, #4]
    42c6: cd e9 02 ba  	strd	r11, r10, [sp, #8]
    42ca: 01 30        	adds	r0, #1
    42cc: 01 90        	str	r0, [sp, #4]
    42ce: 01 20        	movs	r0, #1
    42d0: cd e9 08 86  	strd	r8, r6, [sp, #32]
    42d4: cd e9 06 90  	strd	r9, r0, [sp, #24]
    42d8: 20 46        	mov	r0, r4
    42da: 00 f0 10 f9  	bl	0x44fe <cortex_m_semihosting::export::hstdout_fmt::h2e4364b6a0adcace> @ imm = #544
    42de: 00 28        	cmp	r0, #0
    42e0: ed d0        	beq	0x42be <bookos::app_main::h596905cd8cc205d4+0x6a> @ imm = #-38
    42e2: 45 f2 64 20  	movw	r0, #21092
    42e6: 45 f2 14 23  	movw	r3, #21012
    42ea: c0 f2 00 00  	movt	r0, #0
    42ee: 02 aa        	add	r2, sp, #8
    42f0: 00 90        	str	r0, [sp]
    42f2: 45 f2 e6 10  	movw	r0, #20966
    42f6: c0 f2 00 00  	movt	r0, #0
    42fa: c0 f2 00 03  	movt	r3, #0
    42fe: 2b 21        	movs	r1, #43
    4300: 00 f0 36 fa  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #1132
    4304: fe de        	trap

00004306 <bookos::app_main2::ha18843be511b0fd2>:
    4306: 80 b5        	push	{r7, lr}
    4308: 6f 46        	mov	r7, sp
    430a: 82 b0        	sub	sp, #8
    430c: 45 f2 74 20  	movw	r0, #21108
    4310: 05 21        	movs	r1, #5
    4312: c0 f2 00 00  	movt	r0, #0
    4316: 00 f0 91 f8  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #290
    431a: 50 b9        	cbnz	r0, 0x4332 <bookos::app_main2::ha18843be511b0fd2+0x2c> @ imm = #20
    431c: 45 f2 74 24  	movw	r4, #21108
    4320: c0 f2 00 04  	movt	r4, #0
    4324: 20 46        	mov	r0, r4
    4326: 05 21        	movs	r1, #5
    4328: 00 df        	svc	#0
    432a: 00 f0 87 f8  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #270
    432e: 00 28        	cmp	r0, #0
    4330: f8 d0        	beq	0x4324 <bookos::app_main2::ha18843be511b0fd2+0x1e> @ imm = #-16
    4332: 45 f2 7c 20  	movw	r0, #21116
    4336: 45 f2 14 23  	movw	r3, #21012
    433a: c0 f2 00 00  	movt	r0, #0
    433e: 01 aa        	add	r2, sp, #4
    4340: 00 90        	str	r0, [sp]
    4342: 45 f2 e6 10  	movw	r0, #20966
    4346: c0 f2 00 00  	movt	r0, #0
    434a: c0 f2 00 03  	movt	r3, #0
    434e: 2b 21        	movs	r1, #43
    4350: 00 f0 0e fa  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #1052
    4354: fe de        	trap

00004356 <bookos::app_main3::he217b99714cc270c>:
    4356: 80 b5        	push	{r7, lr}
    4358: 6f 46        	mov	r7, sp
    435a: 82 b0        	sub	sp, #8
    435c: 45 f2 8c 20  	movw	r0, #21132
    4360: 05 21        	movs	r1, #5
    4362: c0 f2 00 00  	movt	r0, #0
    4366: 00 f0 69 f8  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #210
    436a: 50 b9        	cbnz	r0, 0x4382 <bookos::app_main3::he217b99714cc270c+0x2c> @ imm = #20
    436c: 45 f2 8c 24  	movw	r4, #21132
    4370: c0 f2 00 04  	movt	r4, #0
    4374: 20 46        	mov	r0, r4
    4376: 05 21        	movs	r1, #5
    4378: 00 df        	svc	#0
    437a: 00 f0 5f f8  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #190
    437e: 00 28        	cmp	r0, #0
    4380: f8 d0        	beq	0x4374 <bookos::app_main3::he217b99714cc270c+0x1e> @ imm = #-16
    4382: 45 f2 94 20  	movw	r0, #21140
    4386: 45 f2 14 23  	movw	r3, #21012
    438a: c0 f2 00 00  	movt	r0, #0
    438e: 01 aa        	add	r2, sp, #4
    4390: 00 90        	str	r0, [sp]
    4392: 45 f2 e6 10  	movw	r0, #20966
    4396: c0 f2 00 00  	movt	r0, #0
    439a: c0 f2 00 03  	movt	r3, #0
    439e: 2b 21        	movs	r1, #43
    43a0: 00 f0 e6 f9  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #972
    43a4: fe de        	trap

000043a6 <SysTick>:
    43a6: 80 b5        	push	{r7, lr}
    43a8: 6f 46        	mov	r7, sp
    43aa: 82 b0        	sub	sp, #8
    43ac: 45 f2 a4 20  	movw	r0, #21156
    43b0: 08 21        	movs	r1, #8
    43b2: c0 f2 00 00  	movt	r0, #0
    43b6: 00 f0 41 f8  	bl	0x443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5> @ imm = #130
    43ba: 00 28        	cmp	r0, #0
    43bc: 04 bf        	itt	eq
    43be: 02 b0        	addeq	sp, #8
    43c0: 80 bd        	popeq	{r7, pc}
    43c2: 45 f2 ac 20  	movw	r0, #21164
    43c6: 45 f2 14 23  	movw	r3, #21012
    43ca: c0 f2 00 00  	movt	r0, #0
    43ce: 01 aa        	add	r2, sp, #4
    43d0: 00 90        	str	r0, [sp]
    43d2: 45 f2 e6 10  	movw	r0, #20966
    43d6: c0 f2 00 00  	movt	r0, #0
    43da: c0 f2 00 03  	movt	r3, #0
    43de: 2b 21        	movs	r1, #43
    43e0: 00 f0 c6 f9  	bl	0x4770 <core::result::unwrap_failed::h3272c272a0409d1b> @ imm = #908
    43e4: fe de        	trap

000043e6 <SVCall>:
    43e6: 1e f1 07 0f  	cmn.w	lr, #7
    43ea: 0a d1        	bne	0x4402 <SVCall+0x1c>    @ imm = #20
    43ec: 4f f0 01 00  	mov.w	r0, #1
    43f0: 80 f3 14 88  	msr	control, r0
    43f4: bf f3 6f 8f  	isb	sy
    43f8: 4f f6 fd 7e  	movw	lr, #65533
    43fc: cf f6 ff 7e  	movt	lr, #65535
    4400: 70 47        	bx	lr
    4402: 4f f0 00 00  	mov.w	r0, #0
    4406: 80 f3 14 88  	msr	control, r0
    440a: bf f3 6f 8f  	isb	sy
    440e: 4f f6 f9 7e  	movw	lr, #65529
    4412: cf f6 ff 7e  	movt	lr, #65535
    4416: 70 47        	bx	lr
    4418: fe de        	trap

0000441a <UsageFault>:
    441a: fe e7        	b	0x441a <UsageFault>     @ imm = #-4

0000441c <rust_begin_unwind>:
    441c: fe e7        	b	0x441c <rust_begin_unwind> @ imm = #-4

0000441e <asm_execute_process>:
    441e: f0 b5        	push	{r4, r5, r6, r7, lr}
    4420: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    4424: 91 e8 f0 0f  	ldm.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11}
    4428: 80 f3 09 88  	msr	psp, r0
    442c: 00 df        	svc	#0
    442e: 81 e8 f0 0f  	stm.w	r1, {r4, r5, r6, r7, r8, r9, r10, r11}
    4432: ef f3 09 80  	mrs	r0, psp
    4436: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    443a: f0 bd        	pop	{r4, r5, r6, r7, pc}

0000443c <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5>:
    443c: f0 b5        	push	{r4, r5, r6, r7, lr}
    443e: 03 af        	add	r7, sp, #12
    4440: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    4444: 83 b0        	sub	sp, #12
    4446: 0e 46        	mov	r6, r1
    4448: 04 46        	mov	r4, r0
    444a: 00 f0 56 f9  	bl	0x46fa <__primask_r>    @ imm = #684
    444e: 05 46        	mov	r5, r0
    4450: 00 f0 4f f9  	bl	0x46f2 <__cpsid>        @ imm = #670
    4454: 00 f0 54 f9  	bl	0x4700 <bare_metal::CriticalSection::new::hac5b2af24b43ba10> @ imm = #680
    4458: 40 f2 04 0a  	movw	r10, #4
    445c: 05 f0 01 09  	and	r9, r5, #1
    4460: c2 f2 00 0a  	movt	r10, #8192
    4464: da f8 00 00  	ldr.w	r0, [r10]
    4468: 01 28        	cmp	r0, #1
    446a: 26 d1        	bne	0x44ba <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x7e> @ imm = #76
    446c: da f8 04 b0  	ldr.w	r11, [r10, #4]
    4470: ce b3        	cbz	r6, 0x44e6 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0xaa> @ imm = #114
    4472: 69 46        	mov	r1, sp
    4474: 05 20        	movs	r0, #5
    4476: 02 96        	str	r6, [sp, #8]
    4478: cd e9 00 b4  	strd	r11, r4, [sp]
    447c: 00 f0 37 f9  	bl	0x46ee <__c_m_sh_syscall> @ imm = #622
    4480: b0 fa 80 f1  	clz	r1, r0
    4484: 4f ea 51 11  	lsr.w	r1, r1, #5
    4488: a0 b1        	cbz	r0, 0x44b4 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x78> @ imm = #40
    448a: b0 42        	cmp	r0, r6
    448c: 12 d8        	bhi	0x44b4 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x78> @ imm = #36
    448e: e8 46        	mov	r8, sp
    4490: 05 46        	mov	r5, r0
    4492: 02 90        	str	r0, [sp, #8]
    4494: 30 1a        	subs	r0, r6, r0
    4496: 41 46        	mov	r1, r8
    4498: 04 44        	add	r4, r0
    449a: 05 20        	movs	r0, #5
    449c: cd e9 00 b4  	strd	r11, r4, [sp]
    44a0: 00 f0 25 f9  	bl	0x46ee <__c_m_sh_syscall> @ imm = #586
    44a4: b0 fa 80 f1  	clz	r1, r0
    44a8: 4f ea 51 11  	lsr.w	r1, r1, #5
    44ac: 10 b1        	cbz	r0, 0x44b4 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x78> @ imm = #4
    44ae: 85 42        	cmp	r5, r0
    44b0: 2e 46        	mov	r6, r5
    44b2: ed d2        	bhs	0x4490 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x54> @ imm = #-38
    44b4: 81 f0 01 08  	eor	r8, r1, #1
    44b8: 17 e0        	b	0x44ea <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0xae> @ imm = #46
    44ba: 03 20        	movs	r0, #3
    44bc: 69 46        	mov	r1, sp
    44be: 02 90        	str	r0, [sp, #8]
    44c0: 04 20        	movs	r0, #4
    44c2: 01 90        	str	r0, [sp, #4]
    44c4: 45 f2 d4 20  	movw	r0, #21204
    44c8: c0 f2 00 00  	movt	r0, #0
    44cc: 4f f0 01 08  	mov.w	r8, #1
    44d0: 00 90        	str	r0, [sp]
    44d2: 01 20        	movs	r0, #1
    44d4: 00 f0 0b f9  	bl	0x46ee <__c_m_sh_syscall> @ imm = #534
    44d8: 83 46        	mov	r11, r0
    44da: 01 30        	adds	r0, #1
    44dc: 05 d0        	beq	0x44ea <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0xae> @ imm = #10
    44de: ca e9 00 8b  	strd	r8, r11, [r10]
    44e2: 00 2e        	cmp	r6, #0
    44e4: c5 d1        	bne	0x4472 <cortex_m_semihosting::export::hstdout_str::h1708dd3a77fab2a5+0x36> @ imm = #-118
    44e6: 4f f0 00 08  	mov.w	r8, #0
    44ea: b9 f1 00 0f  	cmp.w	r9, #0
    44ee: 08 bf        	it	eq
    44f0: 00 f0 01 f9  	bleq	0x46f6 <__cpsie>        @ imm = #514
    44f4: 40 46        	mov	r0, r8
    44f6: 03 b0        	add	sp, #12
    44f8: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    44fc: f0 bd        	pop	{r4, r5, r6, r7, pc}

000044fe <cortex_m_semihosting::export::hstdout_fmt::h2e4364b6a0adcace>:
    44fe: f0 b5        	push	{r4, r5, r6, r7, lr}
    4500: 03 af        	add	r7, sp, #12
    4502: 2d e9 00 0b  	push.w	{r8, r9, r11}
    4506: 88 b0        	sub	sp, #32
    4508: 81 46        	mov	r9, r0
    450a: 00 f0 f6 f8  	bl	0x46fa <__primask_r>    @ imm = #492
    450e: 05 46        	mov	r5, r0
    4510: 00 f0 ef f8  	bl	0x46f2 <__cpsid>        @ imm = #478
    4514: 00 f0 f4 f8  	bl	0x4700 <bare_metal::CriticalSection::new::hac5b2af24b43ba10> @ imm = #488
    4518: 40 f2 04 06  	movw	r6, #4
    451c: 05 f0 01 08  	and	r8, r5, #1
    4520: c2 f2 00 06  	movt	r6, #8192
    4524: 30 68        	ldr	r0, [r6]
    4526: 01 28        	cmp	r0, #1
    4528: 11 d0        	beq	0x454e <cortex_m_semihosting::export::hstdout_fmt::h2e4364b6a0adcace+0x50> @ imm = #34
    452a: 03 20        	movs	r0, #3
    452c: 02 a9        	add	r1, sp, #8
    452e: 04 90        	str	r0, [sp, #16]
    4530: 04 20        	movs	r0, #4
    4532: 03 90        	str	r0, [sp, #12]
    4534: 45 f2 d4 20  	movw	r0, #21204
    4538: c0 f2 00 00  	movt	r0, #0
    453c: 01 25        	movs	r5, #1
    453e: 02 90        	str	r0, [sp, #8]
    4540: 01 20        	movs	r0, #1
    4542: 00 f0 d4 f8  	bl	0x46ee <__c_m_sh_syscall> @ imm = #424
    4546: 41 1c        	adds	r1, r0, #1
    4548: 11 d0        	beq	0x456e <cortex_m_semihosting::export::hstdout_fmt::h2e4364b6a0adcace+0x70> @ imm = #34
    454a: c6 e9 00 50  	strd	r5, r0, [r6]
    454e: 30 1d        	adds	r0, r6, #4
    4550: 01 90        	str	r0, [sp, #4]
    4552: 02 aa        	add	r2, sp, #8
    4554: 99 e8 7a 10  	ldm.w	r9, {r1, r3, r4, r5, r6, r12}
    4558: 10 46        	mov	r0, r2
    455a: 80 e8 7a 10  	stm.w	r0, {r1, r3, r4, r5, r6, r12}
    455e: 45 f2 bc 21  	movw	r1, #21180
    4562: 01 a8        	add	r0, sp, #4
    4564: c0 f2 00 01  	movt	r1, #0
    4568: 00 f0 29 f9  	bl	0x47be <core::fmt::write::h76b655ca7eaf9f03> @ imm = #594
    456c: 05 46        	mov	r5, r0
    456e: b8 f1 00 0f  	cmp.w	r8, #0
    4572: 08 bf        	it	eq
    4574: 00 f0 bf f8  	bleq	0x46f6 <__cpsie>        @ imm = #382
    4578: 28 46        	mov	r0, r5
    457a: 08 b0        	add	sp, #32
    457c: bd e8 00 0b  	pop.w	{r8, r9, r11}
    4580: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004582 <core::ptr::drop_in_place<&mut cortex_m_semihosting::hio::HStdout>::hcc2b628beb630f6e.llvm.11942764705730205846>:
    4582: 70 47        	bx	lr

00004584 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846>:
    4584: f0 b5        	push	{r4, r5, r6, r7, lr}
    4586: 03 af        	add	r7, sp, #12
    4588: 2d e9 00 0b  	push.w	{r8, r9, r11}
    458c: 84 b0        	sub	sp, #16
    458e: 00 68        	ldr	r0, [r0]
    4590: 00 22        	movs	r2, #0
    4592: 80 29        	cmp	r1, #128
    4594: 00 92        	str	r2, [sp]
    4596: 03 d2        	bhs	0x45a0 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x1c> @ imm = #6
    4598: 8d f8 00 10  	strb.w	r1, [sp]
    459c: 01 26        	movs	r6, #1
    459e: 33 e0        	b	0x4608 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x84> @ imm = #102
    45a0: b1 f5 00 6f  	cmp.w	r1, #2048
    45a4: 09 d2        	bhs	0x45ba <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x36> @ imm = #18
    45a6: 02 26        	movs	r6, #2
    45a8: 0a 46        	mov	r2, r1
    45aa: 66 f3 9f 12  	bfi	r2, r6, #6, #26
    45ae: 8d f8 01 20  	strb.w	r2, [sp, #1]
    45b2: c0 22        	movs	r2, #192
    45b4: 42 ea 91 11  	orr.w	r1, r2, r1, lsr #6
    45b8: 24 e0        	b	0x4604 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x80> @ imm = #72
    45ba: 02 22        	movs	r2, #2
    45bc: 0b 46        	mov	r3, r1
    45be: 62 f3 9f 13  	bfi	r3, r2, #6, #26
    45c2: b1 f5 80 3f  	cmp.w	r1, #65536
    45c6: 0d d2        	bhs	0x45e4 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x60> @ imm = #26
    45c8: 8d f8 02 30  	strb.w	r3, [sp, #2]
    45cc: 8b 09        	lsrs	r3, r1, #6
    45ce: 62 f3 9f 13  	bfi	r3, r2, #6, #26
    45d2: e0 22        	movs	r2, #224
    45d4: 42 ea 11 31  	orr.w	r1, r2, r1, lsr #12
    45d8: 8d f8 01 30  	strb.w	r3, [sp, #1]
    45dc: 8d f8 00 10  	strb.w	r1, [sp]
    45e0: 03 26        	movs	r6, #3
    45e2: 11 e0        	b	0x4608 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0x84> @ imm = #34
    45e4: 8d f8 03 30  	strb.w	r3, [sp, #3]
    45e8: 8b 09        	lsrs	r3, r1, #6
    45ea: 62 f3 9f 13  	bfi	r3, r2, #6, #26
    45ee: 8d f8 02 30  	strb.w	r3, [sp, #2]
    45f2: 0b 0b        	lsrs	r3, r1, #12
    45f4: 04 26        	movs	r6, #4
    45f6: 62 f3 9f 13  	bfi	r3, r2, #6, #26
    45fa: f0 22        	movs	r2, #240
    45fc: 42 ea 91 41  	orr.w	r1, r2, r1, lsr #18
    4600: 8d f8 01 30  	strb.w	r3, [sp, #1]
    4604: 8d f8 00 10  	strb.w	r1, [sp]
    4608: d0 f8 00 90  	ldr.w	r9, [r0]
    460c: 68 46        	mov	r0, sp
    460e: 01 a9        	add	r1, sp, #4
    4610: cd e9 01 90  	strd	r9, r0, [sp, #4]
    4614: 05 20        	movs	r0, #5
    4616: 03 96        	str	r6, [sp, #12]
    4618: 00 f0 69 f8  	bl	0x46ee <__c_m_sh_syscall> @ imm = #210
    461c: 41 1e        	subs	r1, r0, #1
    461e: b1 42        	cmp	r1, r6
    4620: 10 d2        	bhs	0x4644 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0xc0> @ imm = #32
    4622: 0d f1 04 08  	add.w	r8, sp, #4
    4626: 6c 46        	mov	r4, sp
    4628: 05 46        	mov	r5, r0
    462a: 03 90        	str	r0, [sp, #12]
    462c: 30 1a        	subs	r0, r6, r0
    462e: 41 46        	mov	r1, r8
    4630: 04 44        	add	r4, r0
    4632: 05 20        	movs	r0, #5
    4634: cd e9 01 94  	strd	r9, r4, [sp, #4]
    4638: 00 f0 59 f8  	bl	0x46ee <__c_m_sh_syscall> @ imm = #178
    463c: 41 1e        	subs	r1, r0, #1
    463e: 2e 46        	mov	r6, r5
    4640: a9 42        	cmp	r1, r5
    4642: f1 d3        	blo	0x4628 <<&mut W as core::fmt::Write>::write_char::h328cab531986dbb8.llvm.11942764705730205846+0xa4> @ imm = #-30
    4644: 00 28        	cmp	r0, #0
    4646: 18 bf        	it	ne
    4648: 01 20        	movne	r0, #1
    464a: 04 b0        	add	sp, #16
    464c: bd e8 00 0b  	pop.w	{r8, r9, r11}
    4650: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004652 <<&mut W as core::fmt::Write>::write_fmt::h84b3204e7c23b639.llvm.11942764705730205846>:
    4652: f0 b5        	push	{r4, r5, r6, r7, lr}
    4654: 03 af        	add	r7, sp, #12
    4656: 4d f8 04 bd  	str	r11, [sp, #-4]!
    465a: 88 b0        	sub	sp, #32
    465c: 00 68        	ldr	r0, [r0]
    465e: 02 aa        	add	r2, sp, #8
    4660: 01 90        	str	r0, [sp, #4]
    4662: 91 e8 78 50  	ldm.w	r1, {r3, r4, r5, r6, r12, lr}
    4666: 10 46        	mov	r0, r2
    4668: 45 f2 bc 21  	movw	r1, #21180
    466c: c0 f2 00 01  	movt	r1, #0
    4670: 80 e8 78 50  	stm.w	r0, {r3, r4, r5, r6, r12, lr}
    4674: 01 a8        	add	r0, sp, #4
    4676: 00 f0 a2 f8  	bl	0x47be <core::fmt::write::h76b655ca7eaf9f03> @ imm = #324
    467a: 08 b0        	add	sp, #32
    467c: 5d f8 04 bb  	ldr	r11, [sp], #4
    4680: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004682 <<&mut W as core::fmt::Write>::write_str::hfe484761b7a2e1ba.llvm.11942764705730205846>:
    4682: 00 2a        	cmp	r2, #0
    4684: 04 bf        	itt	eq
    4686: 00 20        	moveq	r0, #0
    4688: 70 47        	bxeq	lr
    468a: f0 b5        	push	{r4, r5, r6, r7, lr}
    468c: 03 af        	add	r7, sp, #12
    468e: 2d e9 00 0b  	push.w	{r8, r9, r11}
    4692: 84 b0        	sub	sp, #16
    4694: 00 68        	ldr	r0, [r0]
    4696: 0c 46        	mov	r4, r1
    4698: 16 46        	mov	r6, r2
    469a: 03 92        	str	r2, [sp, #12]
    469c: d0 f8 00 90  	ldr.w	r9, [r0]
    46a0: 05 20        	movs	r0, #5
    46a2: cd e9 01 91  	strd	r9, r1, [sp, #4]
    46a6: 01 a9        	add	r1, sp, #4
    46a8: 00 f0 21 f8  	bl	0x46ee <__c_m_sh_syscall> @ imm = #66
    46ac: b0 fa 80 f1  	clz	r1, r0
    46b0: 4f ea 51 11  	lsr.w	r1, r1, #5
    46b4: a8 b1        	cbz	r0, 0x46e2 <<&mut W as core::fmt::Write>::write_str::hfe484761b7a2e1ba.llvm.11942764705730205846+0x60> @ imm = #42
    46b6: b0 42        	cmp	r0, r6
    46b8: 13 d8        	bhi	0x46e2 <<&mut W as core::fmt::Write>::write_str::hfe484761b7a2e1ba.llvm.11942764705730205846+0x60> @ imm = #38
    46ba: 0d f1 04 08  	add.w	r8, sp, #4
    46be: 05 46        	mov	r5, r0
    46c0: 03 90        	str	r0, [sp, #12]
    46c2: 30 1a        	subs	r0, r6, r0
    46c4: 41 46        	mov	r1, r8
    46c6: 04 44        	add	r4, r0
    46c8: 05 20        	movs	r0, #5
    46ca: cd e9 01 94  	strd	r9, r4, [sp, #4]
    46ce: 00 f0 0e f8  	bl	0x46ee <__c_m_sh_syscall> @ imm = #28
    46d2: b0 fa 80 f1  	clz	r1, r0
    46d6: 4f ea 51 11  	lsr.w	r1, r1, #5
    46da: 10 b1        	cbz	r0, 0x46e2 <<&mut W as core::fmt::Write>::write_str::hfe484761b7a2e1ba.llvm.11942764705730205846+0x60> @ imm = #4
    46dc: 85 42        	cmp	r5, r0
    46de: 2e 46        	mov	r6, r5
    46e0: ed d2        	bhs	0x46be <<&mut W as core::fmt::Write>::write_str::hfe484761b7a2e1ba.llvm.11942764705730205846+0x3c> @ imm = #-38
    46e2: 81 f0 01 00  	eor	r0, r1, #1
    46e6: 04 b0        	add	sp, #16
    46e8: bd e8 00 0b  	pop.w	{r8, r9, r11}
    46ec: f0 bd        	pop	{r4, r5, r6, r7, pc}

000046ee <__c_m_sh_syscall>:
    46ee: ab be        	bkpt	#171
    46f0: 70 47        	bx	lr

000046f2 <__cpsid>:
    46f2: 72 b6        	cpsid i
    46f4: 70 47        	bx	lr

000046f6 <__cpsie>:
    46f6: 62 b6        	cpsie i
    46f8: 70 47        	bx	lr

000046fa <__primask_r>:
    46fa: ef f3 10 80  	mrs	r0, primask
    46fe: 70 47        	bx	lr

00004700 <bare_metal::CriticalSection::new::hac5b2af24b43ba10>:
    4700: 70 47        	bx	lr

00004702 <core::ops::function::FnOnce::call_once::hf882f13978623ddb>:
    4702: 00 68        	ldr	r0, [r0]
    4704: fe e7        	b	0x4704 <core::ops::function::FnOnce::call_once::hf882f13978623ddb+0x2> @ imm = #-4

00004706 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::heda122c8b0679f65>:
    4706: 70 47        	bx	lr

00004708 <<T as core::any::Any>::type_id::ha80fe73ec36fa57d>:
    4708: 4d f2 f5 60  	movw	r0, #55029
    470c: 47 f2 24 71  	movw	r1, #30500
    4710: c8 f2 96 30  	movt	r0, #33686
    4714: c7 f2 89 71  	movt	r1, #30601
    4718: 70 47        	bx	lr

0000471a <core::panicking::panic::h1d8047119dafb914>:
    471a: 80 b5        	push	{r7, lr}
    471c: 6f 46        	mov	r7, sp
    471e: 88 b0        	sub	sp, #32
    4720: 94 46        	mov	r12, r2
    4722: 45 f2 d8 22  	movw	r2, #21208
    4726: c0 f2 00 02  	movt	r2, #0
    472a: 00 23        	movs	r3, #0
    472c: cd e9 06 01  	strd	r0, r1, [sp, #24]
    4730: 68 46        	mov	r0, sp
    4732: 04 92        	str	r2, [sp, #16]
    4734: 01 22        	movs	r2, #1
    4736: 61 46        	mov	r1, r12
    4738: 01 92        	str	r2, [sp, #4]
    473a: 06 aa        	add	r2, sp, #24
    473c: 05 93        	str	r3, [sp, #20]
    473e: cd e9 02 33  	strd	r3, r3, [sp, #8]
    4742: 00 92        	str	r2, [sp]
    4744: 00 f0 01 f8  	bl	0x474a <core::panicking::panic_fmt::h6eaacd40a1ebbed1> @ imm = #2
    4748: fe de        	trap

0000474a <core::panicking::panic_fmt::h6eaacd40a1ebbed1>:
    474a: 80 b5        	push	{r7, lr}
    474c: 6f 46        	mov	r7, sp
    474e: 84 b0        	sub	sp, #16
    4750: cd e9 02 01  	strd	r0, r1, [sp, #8]
    4754: 45 f2 d8 20  	movw	r0, #21208
    4758: c0 f2 00 00  	movt	r0, #0
    475c: 01 90        	str	r0, [sp, #4]
    475e: 45 f2 d8 20  	movw	r0, #21208
    4762: c0 f2 00 00  	movt	r0, #0
    4766: 00 90        	str	r0, [sp]
    4768: 68 46        	mov	r0, sp
    476a: ff f7 57 fe  	bl	0x441c <rust_begin_unwind> @ imm = #-850
    476e: fe de        	trap

00004770 <core::result::unwrap_failed::h3272c272a0409d1b>:
    4770: 80 b5        	push	{r7, lr}
    4772: 6f 46        	mov	r7, sp
    4774: 8e b0        	sub	sp, #56
    4776: 8d e8 0f 00  	stm.w	sp, {r0, r1, r2, r3}
    477a: 0a a9        	add	r1, sp, #40
    477c: 02 20        	movs	r0, #2
    477e: 08 91        	str	r1, [sp, #32]
    4780: 00 21        	movs	r1, #0
    4782: 09 90        	str	r0, [sp, #36]
    4784: cd e9 05 01  	strd	r0, r1, [sp, #20]
    4788: 45 f2 ec 20  	movw	r0, #21228
    478c: c0 f2 00 00  	movt	r0, #0
    4790: d7 f8 08 c0  	ldr.w	r12, [r7, #8]
    4794: 04 90        	str	r0, [sp, #16]
    4796: 45 f2 4b 00  	movw	r0, #20555
    479a: c0 f2 00 00  	movt	r0, #0
    479e: 07 91        	str	r1, [sp, #28]
    47a0: 0d 90        	str	r0, [sp, #52]
    47a2: 02 a8        	add	r0, sp, #8
    47a4: 0c 90        	str	r0, [sp, #48]
    47a6: 45 f2 55 00  	movw	r0, #20565
    47aa: c0 f2 00 00  	movt	r0, #0
    47ae: 61 46        	mov	r1, r12
    47b0: 0b 90        	str	r0, [sp, #44]
    47b2: 68 46        	mov	r0, sp
    47b4: 0a 90        	str	r0, [sp, #40]
    47b6: 04 a8        	add	r0, sp, #16
    47b8: ff f7 c7 ff  	bl	0x474a <core::panicking::panic_fmt::h6eaacd40a1ebbed1> @ imm = #-114
    47bc: fe de        	trap

000047be <core::fmt::write::h76b655ca7eaf9f03>:
    47be: f0 b5        	push	{r4, r5, r6, r7, lr}
    47c0: 03 af        	add	r7, sp, #12
    47c2: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    47c6: 8b b0        	sub	sp, #44
    47c8: 93 46        	mov	r11, r2
    47ca: 03 22        	movs	r2, #3
    47cc: db f8 08 a0  	ldr.w	r10, [r11, #8]
    47d0: 8d f8 28 20  	strb.w	r2, [sp, #40]
    47d4: 20 22        	movs	r2, #32
    47d6: 03 92        	str	r2, [sp, #12]
    47d8: 00 22        	movs	r2, #0
    47da: ba f1 00 0f  	cmp.w	r10, #0
    47de: 02 92        	str	r2, [sp, #8]
    47e0: 09 91        	str	r1, [sp, #36]
    47e2: 08 90        	str	r0, [sp, #32]
    47e4: 06 92        	str	r2, [sp, #24]
    47e6: 04 92        	str	r2, [sp, #16]
    47e8: 6c d0        	beq	0x48c4 <core::fmt::write::h76b655ca7eaf9f03+0x106> @ imm = #216
    47ea: db f8 0c 00  	ldr.w	r0, [r11, #12]
    47ee: 00 28        	cmp	r0, #0
    47f0: 00 f0 8f 80  	beq.w	0x4912 <core::fmt::write::h76b655ca7eaf9f03+0x154> @ imm = #286
    47f4: 6f f0 1f 01  	mvn	r1, #31
    47f8: db f8 00 90  	ldr.w	r9, [r11]
    47fc: 01 eb 40 11  	add.w	r1, r1, r0, lsl #5
    4800: 40 01        	lsls	r0, r0, #5
    4802: 00 24        	movs	r4, #0
    4804: 4f f0 00 08  	mov.w	r8, #0
    4808: 01 22        	movs	r2, #1
    480a: 02 eb 51 11  	add.w	r1, r2, r1, lsr #5
    480e: 00 91        	str	r1, [sp]
    4810: 01 90        	str	r0, [sp, #4]
    4812: 09 eb 08 00  	add.w	r0, r9, r8
    4816: 42 68        	ldr	r2, [r0, #4]
    4818: 42 b1        	cbz	r2, 0x482c <core::fmt::write::h76b655ca7eaf9f03+0x6e> @ imm = #16
    481a: dd e9 08 03  	ldrd	r0, r3, [sp, #32]
    481e: 59 f8 08 10  	ldr.w	r1, [r9, r8]
    4822: db 68        	ldr	r3, [r3, #12]
    4824: 98 47        	blx	r3
    4826: 00 28        	cmp	r0, #0
    4828: 40 f0 84 80  	bne.w	0x4934 <core::fmt::write::h76b655ca7eaf9f03+0x176> @ imm = #264
    482c: 0a eb 88 00  	add.w	r0, r10, r8, lsl #2
    4830: db f8 10 10  	ldr.w	r1, [r11, #16]
    4834: d0 e9 01 56  	ldrd	r5, r6, [r0, #4]
    4838: d0 e9 05 23  	ldrd	r2, r3, [r0, #20]
    483c: cd e9 02 65  	strd	r6, r5, [sp, #8]
    4840: 06 7f        	ldrb	r6, [r0, #28]
    4842: 8d f8 28 60  	strb.w	r6, [sp, #40]
    4846: 7a b1        	cbz	r2, 0x4868 <core::fmt::write::h76b655ca7eaf9f03+0xaa> @ imm = #30
    4848: 01 2a        	cmp	r2, #1
    484a: 08 d1        	bne	0x485e <core::fmt::write::h76b655ca7eaf9f03+0xa0> @ imm = #16
    484c: 01 eb c3 02  	add.w	r2, r1, r3, lsl #3
    4850: 44 f2 03 76  	movw	r6, #18179
    4854: c0 f2 00 06  	movt	r6, #0
    4858: 52 68        	ldr	r2, [r2, #4]
    485a: b2 42        	cmp	r2, r6
    485c: 01 d0        	beq	0x4862 <core::fmt::write::h76b655ca7eaf9f03+0xa4> @ imm = #2
    485e: 00 25        	movs	r5, #0
    4860: 03 e0        	b	0x486a <core::fmt::write::h76b655ca7eaf9f03+0xac> @ imm = #6
    4862: 51 f8 33 20  	ldr.w	r2, [r1, r3, lsl #3]
    4866: 13 68        	ldr	r3, [r2]
    4868: 01 25        	movs	r5, #1
    486a: 0a eb 04 02  	add.w	r2, r10, r4
    486e: cd e9 04 53  	strd	r5, r3, [sp, #16]
    4872: c3 68        	ldr	r3, [r0, #12]
    4874: 10 69        	ldr	r0, [r2, #16]
    4876: 7b b1        	cbz	r3, 0x4898 <core::fmt::write::h76b655ca7eaf9f03+0xda> @ imm = #30
    4878: 01 2b        	cmp	r3, #1
    487a: 08 d1        	bne	0x488e <core::fmt::write::h76b655ca7eaf9f03+0xd0> @ imm = #16
    487c: 01 eb c0 03  	add.w	r3, r1, r0, lsl #3
    4880: 44 f2 03 76  	movw	r6, #18179
    4884: c0 f2 00 06  	movt	r6, #0
    4888: 5b 68        	ldr	r3, [r3, #4]
    488a: b3 42        	cmp	r3, r6
    488c: 01 d0        	beq	0x4892 <core::fmt::write::h76b655ca7eaf9f03+0xd4> @ imm = #2
    488e: 00 23        	movs	r3, #0
    4890: 03 e0        	b	0x489a <core::fmt::write::h76b655ca7eaf9f03+0xdc> @ imm = #6
    4892: 51 f8 30 00  	ldr.w	r0, [r1, r0, lsl #3]
    4896: 00 68        	ldr	r0, [r0]
    4898: 01 23        	movs	r3, #1
    489a: 12 68        	ldr	r2, [r2]
    489c: 07 90        	str	r0, [sp, #28]
    489e: 51 f8 32 00  	ldr.w	r0, [r1, r2, lsl #3]
    48a2: 01 eb c2 01  	add.w	r1, r1, r2, lsl #3
    48a6: 4a 68        	ldr	r2, [r1, #4]
    48a8: 02 a9        	add	r1, sp, #8
    48aa: 06 93        	str	r3, [sp, #24]
    48ac: 90 47        	blx	r2
    48ae: 00 28        	cmp	r0, #0
    48b0: 40 d1        	bne	0x4934 <core::fmt::write::h76b655ca7eaf9f03+0x176> @ imm = #128
    48b2: 01 98        	ldr	r0, [sp, #4]
    48b4: 20 34        	adds	r4, #32
    48b6: 08 f1 08 08  	add.w	r8, r8, #8
    48ba: a0 42        	cmp	r0, r4
    48bc: a9 d1        	bne	0x4812 <core::fmt::write::h76b655ca7eaf9f03+0x54> @ imm = #-174
    48be: dd f8 00 90  	ldr.w	r9, [sp]
    48c2: 28 e0        	b	0x4916 <core::fmt::write::h76b655ca7eaf9f03+0x158> @ imm = #80
    48c4: db f8 14 00  	ldr.w	r0, [r11, #20]
    48c8: 18 b3        	cbz	r0, 0x4912 <core::fmt::write::h76b655ca7eaf9f03+0x154> @ imm = #70
    48ca: 6f f0 07 01  	mvn	r1, #7
    48ce: 01 eb c0 00  	add.w	r0, r1, r0, lsl #3
    48d2: db f8 00 20  	ldr.w	r2, [r11]
    48d6: 01 21        	movs	r1, #1
    48d8: db f8 10 30  	ldr.w	r3, [r11, #16]
    48dc: 01 eb d0 05  	add.w	r5, r1, r0, lsr #3
    48e0: 16 1d        	adds	r6, r2, #4
    48e2: 0d f1 08 08  	add.w	r8, sp, #8
    48e6: 1c 1d        	adds	r4, r3, #4
    48e8: a9 46        	mov	r9, r5
    48ea: 32 68        	ldr	r2, [r6]
    48ec: 32 b1        	cbz	r2, 0x48fc <core::fmt::write::h76b655ca7eaf9f03+0x13e> @ imm = #12
    48ee: dd e9 08 03  	ldrd	r0, r3, [sp, #32]
    48f2: 56 f8 04 1c  	ldr	r1, [r6, #-4]
    48f6: db 68        	ldr	r3, [r3, #12]
    48f8: 98 47        	blx	r3
    48fa: d8 b9        	cbnz	r0, 0x4934 <core::fmt::write::h76b655ca7eaf9f03+0x176> @ imm = #54
    48fc: 54 f8 04 0c  	ldr	r0, [r4, #-4]
    4900: 41 46        	mov	r1, r8
    4902: 22 68        	ldr	r2, [r4]
    4904: 90 47        	blx	r2
    4906: a8 b9        	cbnz	r0, 0x4934 <core::fmt::write::h76b655ca7eaf9f03+0x176> @ imm = #42
    4908: 08 34        	adds	r4, #8
    490a: 08 36        	adds	r6, #8
    490c: 01 3d        	subs	r5, #1
    490e: ec d1        	bne	0x48ea <core::fmt::write::h76b655ca7eaf9f03+0x12c> @ imm = #-40
    4910: 01 e0        	b	0x4916 <core::fmt::write::h76b655ca7eaf9f03+0x158> @ imm = #2
    4912: 4f f0 00 09  	mov.w	r9, #0
    4916: db e9 00 01  	ldrd	r0, r1, [r11]
    491a: 00 22        	movs	r2, #0
    491c: 89 45        	cmp	r9, r1
    491e: 38 bf        	it	lo
    4920: 00 eb c9 02  	addlo.w	r2, r0, r9, lsl #3
    4924: 0b d2        	bhs	0x493e <core::fmt::write::h76b655ca7eaf9f03+0x180> @ imm = #22
    4926: dd e9 08 03  	ldrd	r0, r3, [sp, #32]
    492a: d2 e9 00 12  	ldrd	r1, r2, [r2]
    492e: db 68        	ldr	r3, [r3, #12]
    4930: 98 47        	blx	r3
    4932: 20 b1        	cbz	r0, 0x493e <core::fmt::write::h76b655ca7eaf9f03+0x180> @ imm = #8
    4934: 01 20        	movs	r0, #1
    4936: 0b b0        	add	sp, #44
    4938: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    493c: f0 bd        	pop	{r4, r5, r6, r7, pc}
    493e: 00 20        	movs	r0, #0
    4940: 0b b0        	add	sp, #44
    4942: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4946: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004948 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9>:
    4948: f0 b5        	push	{r4, r5, r6, r7, lr}
    494a: 03 af        	add	r7, sp, #12
    494c: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    4950: 87 b0        	sub	sp, #28
    4952: fc 68        	ldr	r4, [r7, #12]
    4954: 9b 46        	mov	r11, r3
    4956: 81 46        	mov	r9, r0
    4958: e9 b1        	cbz	r1, 0x4996 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x4e> @ imm = #58
    495a: d9 f8 00 e0  	ldr.w	lr, [r9]
    495e: 2b 21        	movs	r1, #43
    4960: 1e f0 01 00  	ands	r0, lr, #1
    4964: 08 bf        	it	eq
    4966: 4f f4 88 11  	moveq.w	r1, #1114112
    496a: 00 eb 04 0a  	add.w	r10, r0, r4
    496e: be 68        	ldr	r6, [r7, #8]
    4970: 5f ea 4e 70  	lsls.w	r0, lr, #29
    4974: 18 d5        	bpl	0x49a8 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x60> @ imm = #48
    4976: bb f1 00 0f  	cmp.w	r11, #0
    497a: 24 d0        	beq	0x49c6 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x7e> @ imm = #72
    497c: ab f1 01 00  	sub.w	r0, r11, #1
    4980: 0b f0 03 0c  	and	r12, r11, #3
    4984: 03 28        	cmp	r0, #3
    4986: 21 d2        	bhs	0x49cc <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x84> @ imm = #66
    4988: 4f f0 00 08  	mov.w	r8, #0
    498c: 13 46        	mov	r3, r2
    498e: bc f1 00 0f  	cmp.w	r12, #0
    4992: 4a d1        	bne	0x4a2a <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0xe2> @ imm = #148
    4994: 64 e0        	b	0x4a60 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x118> @ imm = #200
    4996: d9 f8 00 e0  	ldr.w	lr, [r9]
    499a: 04 f1 01 0a  	add.w	r10, r4, #1
    499e: 2d 21        	movs	r1, #45
    49a0: be 68        	ldr	r6, [r7, #8]
    49a2: 5f ea 4e 70  	lsls.w	r0, lr, #29
    49a6: e6 d4        	bmi	0x4976 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2e> @ imm = #-52
    49a8: 00 22        	movs	r2, #0
    49aa: 4f f0 00 0b  	mov.w	r11, #0
    49ae: d9 f8 08 00  	ldr.w	r0, [r9, #8]
    49b2: 01 28        	cmp	r0, #1
    49b4: 59 d0        	beq	0x4a6a <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x122> @ imm = #178
    49b6: 48 46        	mov	r0, r9
    49b8: 5b 46        	mov	r3, r11
    49ba: 00 f0 36 f9  	bl	0x4c2a <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577> @ imm = #620
    49be: 00 28        	cmp	r0, #0
    49c0: 73 d0        	beq	0x4aaa <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x162> @ imm = #230
    49c2: 01 25        	movs	r5, #1
    49c4: 8f e0        	b	0x4ae6 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x19e> @ imm = #286
    49c6: 4f f0 00 08  	mov.w	r8, #0
    49ca: 49 e0        	b	0x4a60 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x118> @ imm = #146
    49cc: 06 96        	str	r6, [sp, #24]
    49ce: 13 46        	mov	r3, r2
    49d0: cd e9 04 41  	strd	r4, r1, [sp, #16]
    49d4: 2b f0 03 01  	bic	r1, r11, #3
    49d8: 4d 42        	rsbs	r5, r1, #0
    49da: 4f f0 00 08  	mov.w	r8, #0
    49de: 11 46        	mov	r1, r2
    49e0: 93 f9 02 20  	ldrsb.w	r2, [r3, #2]
    49e4: 93 f9 03 40  	ldrsb.w	r4, [r3, #3]
    49e8: 13 f9 04 6b  	ldrsb	r6, [r3], #4
    49ec: 13 f9 03 0c  	ldrsb	r0, [r3, #-3]
    49f0: 16 f1 41 0f  	cmn.w	r6, #65
    49f4: c8 bf        	it	gt
    49f6: 08 f1 01 08  	addgt.w	r8, r8, #1
    49fa: 10 f1 41 0f  	cmn.w	r0, #65
    49fe: c8 bf        	it	gt
    4a00: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a04: 12 f1 41 0f  	cmn.w	r2, #65
    4a08: c8 bf        	it	gt
    4a0a: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a0e: 14 f1 41 0f  	cmn.w	r4, #65
    4a12: c8 bf        	it	gt
    4a14: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a18: 04 35        	adds	r5, #4
    4a1a: e1 d1        	bne	0x49e0 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x98> @ imm = #-62
    4a1c: 0a 46        	mov	r2, r1
    4a1e: 04 9c        	ldr	r4, [sp, #16]
    4a20: 06 9e        	ldr	r6, [sp, #24]
    4a22: 05 99        	ldr	r1, [sp, #20]
    4a24: bc f1 00 0f  	cmp.w	r12, #0
    4a28: 1a d0        	beq	0x4a60 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x118> @ imm = #52
    4a2a: 93 f9 00 00  	ldrsb.w	r0, [r3]
    4a2e: 10 f1 41 0f  	cmn.w	r0, #65
    4a32: c8 bf        	it	gt
    4a34: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a38: bc f1 01 0f  	cmp.w	r12, #1
    4a3c: 10 d0        	beq	0x4a60 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x118> @ imm = #32
    4a3e: 93 f9 01 00  	ldrsb.w	r0, [r3, #1]
    4a42: 10 f1 41 0f  	cmn.w	r0, #65
    4a46: c8 bf        	it	gt
    4a48: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a4c: bc f1 02 0f  	cmp.w	r12, #2
    4a50: 06 d0        	beq	0x4a60 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x118> @ imm = #12
    4a52: 93 f9 02 00  	ldrsb.w	r0, [r3, #2]
    4a56: 10 f1 41 0f  	cmn.w	r0, #65
    4a5a: c8 bf        	it	gt
    4a5c: 08 f1 01 08  	addgt.w	r8, r8, #1
    4a60: c2 44        	add	r10, r8
    4a62: d9 f8 08 00  	ldr.w	r0, [r9, #8]
    4a66: 01 28        	cmp	r0, #1
    4a68: a5 d1        	bne	0x49b6 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x6e> @ imm = #-182
    4a6a: d9 f8 0c 80  	ldr.w	r8, [r9, #12]
    4a6e: d0 45        	cmp	r8, r10
    4a70: 14 d9        	bls	0x4a9c <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x154> @ imm = #40
    4a72: 5f ea 0e 70  	lsls.w	r0, lr, #28
    4a76: 25 d4        	bmi	0x4ac4 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x17c> @ imm = #74
    4a78: 99 f8 20 50  	ldrb.w	r5, [r9, #32]
    4a7c: a8 eb 0a 00  	sub.w	r0, r8, r10
    4a80: 03 2d        	cmp	r5, #3
    4a82: 08 bf        	it	eq
    4a84: 01 25        	moveq	r5, #1
    4a86: ab 07        	lsls	r3, r5, #30
    4a88: 02 92        	str	r2, [sp, #8]
    4a8a: cd e9 05 16  	strd	r1, r6, [sp, #20]
    4a8e: 40 d0        	beq	0x4b12 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1ca> @ imm = #128
    4a90: 01 2d        	cmp	r5, #1
    4a92: 40 d1        	bne	0x4b16 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1ce> @ imm = #128
    4a94: 00 21        	movs	r1, #0
    4a96: 03 91        	str	r1, [sp, #12]
    4a98: 01 46        	mov	r1, r0
    4a9a: 40 e0        	b	0x4b1e <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1d6> @ imm = #128
    4a9c: 48 46        	mov	r0, r9
    4a9e: 5b 46        	mov	r3, r11
    4aa0: 00 f0 c3 f8  	bl	0x4c2a <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577> @ imm = #390
    4aa4: 00 28        	cmp	r0, #0
    4aa6: 40 f0 a4 80  	bne.w	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #328
    4aaa: d9 f8 1c 10  	ldr.w	r1, [r9, #28]
    4aae: 22 46        	mov	r2, r4
    4ab0: d9 f8 18 00  	ldr.w	r0, [r9, #24]
    4ab4: cb 68        	ldr	r3, [r1, #12]
    4ab6: 31 46        	mov	r1, r6
    4ab8: 07 b0        	add	sp, #28
    4aba: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4abe: bd e8 f0 40  	pop.w	{r4, r5, r6, r7, lr}
    4ac2: 18 47        	bx	r3
    4ac4: d9 f8 04 00  	ldr.w	r0, [r9, #4]
    4ac8: 01 25        	movs	r5, #1
    4aca: 03 90        	str	r0, [sp, #12]
    4acc: 30 20        	movs	r0, #48
    4ace: 99 f8 20 30  	ldrb.w	r3, [r9, #32]
    4ad2: 01 93        	str	r3, [sp, #4]
    4ad4: 5b 46        	mov	r3, r11
    4ad6: c9 f8 04 00  	str.w	r0, [r9, #4]
    4ada: 48 46        	mov	r0, r9
    4adc: 89 f8 20 50  	strb.w	r5, [r9, #32]
    4ae0: 00 f0 a3 f8  	bl	0x4c2a <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577> @ imm = #326
    4ae4: 20 b1        	cbz	r0, 0x4af0 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1a8> @ imm = #8
    4ae6: 28 46        	mov	r0, r5
    4ae8: 07 b0        	add	sp, #28
    4aea: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4aee: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4af0: 99 f8 20 00  	ldrb.w	r0, [r9, #32]
    4af4: a8 eb 0a 01  	sub.w	r1, r8, r10
    4af8: 03 28        	cmp	r0, #3
    4afa: 08 bf        	it	eq
    4afc: 01 20        	moveq	r0, #1
    4afe: 82 07        	lsls	r2, r0, #30
    4b00: 04 94        	str	r4, [sp, #16]
    4b02: 06 96        	str	r6, [sp, #24]
    4b04: 42 d0        	beq	0x4b8c <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x244> @ imm = #132
    4b06: 01 28        	cmp	r0, #1
    4b08: 43 d1        	bne	0x4b92 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x24a> @ imm = #134
    4b0a: 4f f0 00 0a  	mov.w	r10, #0
    4b0e: 08 46        	mov	r0, r1
    4b10: 43 e0        	b	0x4b9a <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x252> @ imm = #134
    4b12: 00 21        	movs	r1, #0
    4b14: 02 e0        	b	0x4b1c <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1d4> @ imm = #4
    4b16: 41 08        	lsrs	r1, r0, #1
    4b18: 01 30        	adds	r0, #1
    4b1a: 40 08        	lsrs	r0, r0, #1
    4b1c: 03 90        	str	r0, [sp, #12]
    4b1e: d9 f8 04 50  	ldr.w	r5, [r9, #4]
    4b22: 01 f1 01 0a  	add.w	r10, r1, #1
    4b26: d9 e9 06 86  	ldrd	r8, r6, [r9, #24]
    4b2a: ba f1 01 0a  	subs.w	r10, r10, #1
    4b2e: 06 d0        	beq	0x4b3e <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1f6> @ imm = #12
    4b30: 32 69        	ldr	r2, [r6, #16]
    4b32: 40 46        	mov	r0, r8
    4b34: 29 46        	mov	r1, r5
    4b36: 90 47        	blx	r2
    4b38: 00 28        	cmp	r0, #0
    4b3a: f6 d0        	beq	0x4b2a <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x1e2> @ imm = #-20
    4b3c: 59 e0        	b	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #178
    4b3e: b5 f5 88 16  	subs.w	r6, r5, #1114112
    4b42: 03 98        	ldr	r0, [sp, #12]
    4b44: 18 bf        	it	ne
    4b46: 06 46        	movne	r6, r0
    4b48: b5 f5 88 1f  	cmp.w	r5, #1114112
    4b4c: 51 d0        	beq	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #162
    4b4e: 05 99        	ldr	r1, [sp, #20]
    4b50: 48 46        	mov	r0, r9
    4b52: 02 9a        	ldr	r2, [sp, #8]
    4b54: 5b 46        	mov	r3, r11
    4b56: 00 f0 68 f8  	bl	0x4c2a <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577> @ imm = #208
    4b5a: 00 28        	cmp	r0, #0
    4b5c: 49 d1        	bne	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #146
    4b5e: d9 e9 06 01  	ldrd	r0, r1, [r9, #24]
    4b62: 22 46        	mov	r2, r4
    4b64: cb 68        	ldr	r3, [r1, #12]
    4b66: 06 99        	ldr	r1, [sp, #24]
    4b68: 98 47        	blx	r3
    4b6a: 00 28        	cmp	r0, #0
    4b6c: 41 d1        	bne	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #130
    4b6e: d9 e9 06 89  	ldrd	r8, r9, [r9, #24]
    4b72: 00 24        	movs	r4, #0
    4b74: a6 42        	cmp	r6, r4
    4b76: 4e d0        	beq	0x4c16 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2ce> @ imm = #156
    4b78: d9 f8 10 20  	ldr.w	r2, [r9, #16]
    4b7c: 40 46        	mov	r0, r8
    4b7e: 29 46        	mov	r1, r5
    4b80: 90 47        	blx	r2
    4b82: 01 34        	adds	r4, #1
    4b84: 00 28        	cmp	r0, #0
    4b86: f5 d0        	beq	0x4b74 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x22c> @ imm = #-22
    4b88: 60 1e        	subs	r0, r4, #1
    4b8a: 45 e0        	b	0x4c18 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2d0> @ imm = #138
    4b8c: 00 20        	movs	r0, #0
    4b8e: 8a 46        	mov	r10, r1
    4b90: 03 e0        	b	0x4b9a <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x252> @ imm = #6
    4b92: 48 08        	lsrs	r0, r1, #1
    4b94: 01 31        	adds	r1, #1
    4b96: 4f ea 51 0a  	lsr.w	r10, r1, #1
    4b9a: d9 f8 04 b0  	ldr.w	r11, [r9, #4]
    4b9e: 44 1c        	adds	r4, r0, #1
    4ba0: d9 e9 06 65  	ldrd	r6, r5, [r9, #24]
    4ba4: 01 3c        	subs	r4, #1
    4ba6: 06 d0        	beq	0x4bb6 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x26e> @ imm = #12
    4ba8: 2a 69        	ldr	r2, [r5, #16]
    4baa: 30 46        	mov	r0, r6
    4bac: 59 46        	mov	r1, r11
    4bae: 90 47        	blx	r2
    4bb0: 00 28        	cmp	r0, #0
    4bb2: f7 d0        	beq	0x4ba4 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x25c> @ imm = #-18
    4bb4: 1d e0        	b	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #58
    4bb6: bb f5 88 18  	subs.w	r8, r11, #1114112
    4bba: 18 bf        	it	ne
    4bbc: d0 46        	movne	r8, r10
    4bbe: bb f5 88 1f  	cmp.w	r11, #1114112
    4bc2: 16 d0        	beq	0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #44
    4bc4: d9 e9 06 01  	ldrd	r0, r1, [r9, #24]
    4bc8: cb 68        	ldr	r3, [r1, #12]
    4bca: 06 99        	ldr	r1, [sp, #24]
    4bcc: 04 9a        	ldr	r2, [sp, #16]
    4bce: 98 47        	blx	r3
    4bd0: 78 b9        	cbnz	r0, 0x4bf2 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2aa> @ imm = #30
    4bd2: d9 e9 06 4a  	ldrd	r4, r10, [r9, #24]
    4bd6: 00 26        	movs	r6, #0
    4bd8: b0 45        	cmp	r8, r6
    4bda: 10 d0        	beq	0x4bfe <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2b6> @ imm = #32
    4bdc: da f8 10 20  	ldr.w	r2, [r10, #16]
    4be0: 20 46        	mov	r0, r4
    4be2: 59 46        	mov	r1, r11
    4be4: 90 47        	blx	r2
    4be6: 01 36        	adds	r6, #1
    4be8: 00 28        	cmp	r0, #0
    4bea: f5 d0        	beq	0x4bd8 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x290> @ imm = #-22
    4bec: 70 1e        	subs	r0, r6, #1
    4bee: 40 45        	cmp	r0, r8
    4bf0: 05 d2        	bhs	0x4bfe <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9+0x2b6> @ imm = #10
    4bf2: 01 25        	movs	r5, #1
    4bf4: 28 46        	mov	r0, r5
    4bf6: 07 b0        	add	sp, #28
    4bf8: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4bfc: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4bfe: 01 98        	ldr	r0, [sp, #4]
    4c00: 00 25        	movs	r5, #0
    4c02: 89 f8 20 00  	strb.w	r0, [r9, #32]
    4c06: 03 98        	ldr	r0, [sp, #12]
    4c08: c9 f8 04 00  	str.w	r0, [r9, #4]
    4c0c: 28 46        	mov	r0, r5
    4c0e: 07 b0        	add	sp, #28
    4c10: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4c14: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4c16: 30 46        	mov	r0, r6
    4c18: 00 25        	movs	r5, #0
    4c1a: b0 42        	cmp	r0, r6
    4c1c: 38 bf        	it	lo
    4c1e: 01 25        	movlo	r5, #1
    4c20: 28 46        	mov	r0, r5
    4c22: 07 b0        	add	sp, #28
    4c24: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4c28: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004c2a <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577>:
    4c2a: f0 b5        	push	{r4, r5, r6, r7, lr}
    4c2c: 03 af        	add	r7, sp, #12
    4c2e: 4d f8 04 bd  	str	r11, [sp, #-4]!
    4c32: 1c 46        	mov	r4, r3
    4c34: 15 46        	mov	r5, r2
    4c36: 06 46        	mov	r6, r0
    4c38: b1 f5 88 1f  	cmp.w	r1, #1114112
    4c3c: 08 d0        	beq	0x4c50 <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577+0x26> @ imm = #16
    4c3e: d6 e9 06 02  	ldrd	r0, r2, [r6, #24]
    4c42: 12 69        	ldr	r2, [r2, #16]
    4c44: 90 47        	blx	r2
    4c46: 18 b1        	cbz	r0, 0x4c50 <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577+0x26> @ imm = #6
    4c48: 01 20        	movs	r0, #1
    4c4a: 5d f8 04 bb  	ldr	r11, [sp], #4
    4c4e: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4c50: 4d b1        	cbz	r5, 0x4c66 <core::fmt::Formatter::pad_integral::write_prefix::h1ee79a1889717577+0x3c> @ imm = #18
    4c52: d6 e9 06 01  	ldrd	r0, r1, [r6, #24]
    4c56: 22 46        	mov	r2, r4
    4c58: cb 68        	ldr	r3, [r1, #12]
    4c5a: 29 46        	mov	r1, r5
    4c5c: 5d f8 04 bb  	ldr	r11, [sp], #4
    4c60: bd e8 f0 40  	pop.w	{r4, r5, r6, r7, lr}
    4c64: 18 47        	bx	r3
    4c66: 00 20        	movs	r0, #0
    4c68: 5d f8 04 bb  	ldr	r11, [sp], #4
    4c6c: f0 bd        	pop	{r4, r5, r6, r7, pc}

00004c6e <core::fmt::Formatter::pad::h2af898439b848233>:
    4c6e: f0 b5        	push	{r4, r5, r6, r7, lr}
    4c70: 03 af        	add	r7, sp, #12
    4c72: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    4c76: 81 b0        	sub	sp, #4
    4c78: 0c 46        	mov	r4, r1
    4c7a: d0 f8 08 e0  	ldr.w	lr, [r0, #8]
    4c7e: 01 69        	ldr	r1, [r0, #16]
    4c80: 91 46        	mov	r9, r2
    4c82: be f1 01 0f  	cmp.w	lr, #1
    4c86: 14 d1        	bne	0x4cb2 <core::fmt::Formatter::pad::h2af898439b848233+0x44> @ imm = #40
    4c88: 01 29        	cmp	r1, #1
    4c8a: 15 d0        	beq	0x4cb8 <core::fmt::Formatter::pad::h2af898439b848233+0x4a> @ imm = #42
    4c8c: d0 f8 0c e0  	ldr.w	lr, [r0, #12]
    4c90: b9 f1 00 0f  	cmp.w	r9, #0
    4c94: 00 f0 48 81  	beq.w	0x4f28 <core::fmt::Formatter::pad::h2af898439b848233+0x2ba> @ imm = #656
    4c98: a9 f1 01 02  	sub.w	r2, r9, #1
    4c9c: 09 f0 03 0c  	and	r12, r9, #3
    4ca0: 03 2a        	cmp	r2, #3
    4ca2: 6b d2        	bhs	0x4d7c <core::fmt::Formatter::pad::h2af898439b848233+0x10e> @ imm = #214
    4ca4: 00 22        	movs	r2, #0
    4ca6: 26 46        	mov	r6, r4
    4ca8: bc f1 00 0f  	cmp.w	r12, #0
    4cac: 40 f0 8a 80  	bne.w	0x4dc4 <core::fmt::Formatter::pad::h2af898439b848233+0x156> @ imm = #276
    4cb0: a0 e0        	b	0x4df4 <core::fmt::Formatter::pad::h2af898439b848233+0x186> @ imm = #320
    4cb2: 01 29        	cmp	r1, #1
    4cb4: 40 f0 3c 81  	bne.w	0x4f30 <core::fmt::Formatter::pad::h2af898439b848233+0x2c2> @ imm = #632
    4cb8: 46 69        	ldr	r6, [r0, #20]
    4cba: 04 eb 09 08  	add.w	r8, r4, r9
    4cbe: 00 22        	movs	r2, #0
    4cc0: 00 94        	str	r4, [sp]
    4cc2: 76 bb        	cbnz	r6, 0x4d22 <core::fmt::Formatter::pad::h2af898439b848233+0xb4> @ imm = #92
    4cc4: 44 45        	cmp	r4, r8
    4cc6: 00 f0 23 81  	beq.w	0x4f10 <core::fmt::Formatter::pad::h2af898439b848233+0x2a2> @ imm = #582
    4cca: 26 46        	mov	r6, r4
    4ccc: 16 f9 01 3b  	ldrsb	r3, [r6], #1
    4cd0: b3 f1 ff 3f  	cmp.w	r3, #4294967295
    4cd4: 40 f3 c8 80  	ble.w	0x4e68 <core::fmt::Formatter::pad::h2af898439b848233+0x1fa> @ imm = #400
    4cd8: 00 9c        	ldr	r4, [sp]
    4cda: 00 2a        	cmp	r2, #0
    4cdc: 00 f0 d2 80  	beq.w	0x4e84 <core::fmt::Formatter::pad::h2af898439b848233+0x216> @ imm = #420
    4ce0: 4a 45        	cmp	r2, r9
    4ce2: 80 f0 cc 80  	bhs.w	0x4e7e <core::fmt::Formatter::pad::h2af898439b848233+0x210> @ imm = #408
    4ce6: a1 56        	ldrsb	r1, [r4, r2]
    4ce8: 11 f1 40 0f  	cmn.w	r1, #64
    4cec: 80 f2 ca 80  	bge.w	0x4e84 <core::fmt::Formatter::pad::h2af898439b848233+0x216> @ imm = #404
    4cf0: 00 21        	movs	r1, #0
    4cf2: 00 22        	movs	r2, #0
    4cf4: c7 e0        	b	0x4e86 <core::fmt::Formatter::pad::h2af898439b848233+0x218> @ imm = #398
    4cf6: 14 f8 01 1b  	ldrb	r1, [r4], #1
    4cfa: 01 f0 3f 0c  	and	r12, r1, #63
    4cfe: 4f f4 e0 11  	mov.w	r1, #1835008
    4d02: 01 ea 85 41  	and.w	r1, r1, r5, lsl #18
    4d06: 41 ea 0a 31  	orr.w	r1, r1, r10, lsl #12
    4d0a: 41 ea 8b 11  	orr.w	r1, r1, r11, lsl #6
    4d0e: 61 44        	add	r1, r12
    4d10: b1 f5 88 1f  	cmp.w	r1, #1114112
    4d14: 00 f0 fc 80  	beq.w	0x4f10 <core::fmt::Formatter::pad::h2af898439b848233+0x2a2> @ imm = #504
    4d18: d1 1a        	subs	r1, r2, r3
    4d1a: 01 3e        	subs	r6, #1
    4d1c: 01 eb 04 02  	add.w	r2, r1, r4
    4d20: d0 d0        	beq	0x4cc4 <core::fmt::Formatter::pad::h2af898439b848233+0x56> @ imm = #-96
    4d22: 44 45        	cmp	r4, r8
    4d24: 00 f0 f4 80  	beq.w	0x4f10 <core::fmt::Formatter::pad::h2af898439b848233+0x2a2> @ imm = #488
    4d28: 23 46        	mov	r3, r4
    4d2a: 14 f9 01 5b  	ldrsb	r5, [r4], #1
    4d2e: b5 f1 ff 3f  	cmp.w	r5, #4294967295
    4d32: f1 dc        	bgt	0x4d18 <core::fmt::Formatter::pad::h2af898439b848233+0xaa> @ imm = #-30
    4d34: 44 45        	cmp	r4, r8
    4d36: 07 d0        	beq	0x4d48 <core::fmt::Formatter::pad::h2af898439b848233+0xda> @ imm = #14
    4d38: 59 78        	ldrb	r1, [r3, #1]
    4d3a: 9c 1c        	adds	r4, r3, #2
    4d3c: 01 f0 3f 0a  	and	r10, r1, #63
    4d40: ed b2        	uxtb	r5, r5
    4d42: e0 2d        	cmp	r5, #224
    4d44: e8 d3        	blo	0x4d18 <core::fmt::Formatter::pad::h2af898439b848233+0xaa> @ imm = #-48
    4d46: 05 e0        	b	0x4d54 <core::fmt::Formatter::pad::h2af898439b848233+0xe6> @ imm = #10
    4d48: 4f f0 00 0a  	mov.w	r10, #0
    4d4c: 44 46        	mov	r4, r8
    4d4e: ed b2        	uxtb	r5, r5
    4d50: e0 2d        	cmp	r5, #224
    4d52: e1 d3        	blo	0x4d18 <core::fmt::Formatter::pad::h2af898439b848233+0xaa> @ imm = #-62
    4d54: 44 45        	cmp	r4, r8
    4d56: 06 d0        	beq	0x4d66 <core::fmt::Formatter::pad::h2af898439b848233+0xf8> @ imm = #12
    4d58: 14 f8 01 1b  	ldrb	r1, [r4], #1
    4d5c: 01 f0 3f 0b  	and	r11, r1, #63
    4d60: f0 2d        	cmp	r5, #240
    4d62: d9 d3        	blo	0x4d18 <core::fmt::Formatter::pad::h2af898439b848233+0xaa> @ imm = #-78
    4d64: 04 e0        	b	0x4d70 <core::fmt::Formatter::pad::h2af898439b848233+0x102> @ imm = #8
    4d66: 4f f0 00 0b  	mov.w	r11, #0
    4d6a: 44 46        	mov	r4, r8
    4d6c: f0 2d        	cmp	r5, #240
    4d6e: d3 d3        	blo	0x4d18 <core::fmt::Formatter::pad::h2af898439b848233+0xaa> @ imm = #-90
    4d70: 44 45        	cmp	r4, r8
    4d72: c0 d1        	bne	0x4cf6 <core::fmt::Formatter::pad::h2af898439b848233+0x88> @ imm = #-128
    4d74: 4f f0 00 0c  	mov.w	r12, #0
    4d78: 44 46        	mov	r4, r8
    4d7a: c0 e7        	b	0x4cfe <core::fmt::Formatter::pad::h2af898439b848233+0x90> @ imm = #-128
    4d7c: 29 f0 03 02  	bic	r2, r9, #3
    4d80: a2 46        	mov	r10, r4
    4d82: 55 42        	rsbs	r5, r2, #0
    4d84: 00 22        	movs	r2, #0
    4d86: 26 46        	mov	r6, r4
    4d88: 96 f9 02 40  	ldrsb.w	r4, [r6, #2]
    4d8c: 96 f9 03 80  	ldrsb.w	r8, [r6, #3]
    4d90: 16 f9 04 1b  	ldrsb	r1, [r6], #4
    4d94: 16 f9 03 3c  	ldrsb	r3, [r6, #-3]
    4d98: 11 f1 41 0f  	cmn.w	r1, #65
    4d9c: c8 bf        	it	gt
    4d9e: 01 32        	addgt	r2, #1
    4da0: 13 f1 41 0f  	cmn.w	r3, #65
    4da4: c8 bf        	it	gt
    4da6: 01 32        	addgt	r2, #1
    4da8: 14 f1 41 0f  	cmn.w	r4, #65
    4dac: c8 bf        	it	gt
    4dae: 01 32        	addgt	r2, #1
    4db0: 18 f1 41 0f  	cmn.w	r8, #65
    4db4: c8 bf        	it	gt
    4db6: 01 32        	addgt	r2, #1
    4db8: 04 35        	adds	r5, #4
    4dba: e5 d1        	bne	0x4d88 <core::fmt::Formatter::pad::h2af898439b848233+0x11a> @ imm = #-54
    4dbc: 54 46        	mov	r4, r10
    4dbe: bc f1 00 0f  	cmp.w	r12, #0
    4dc2: 17 d0        	beq	0x4df4 <core::fmt::Formatter::pad::h2af898439b848233+0x186> @ imm = #46
    4dc4: 96 f9 00 10  	ldrsb.w	r1, [r6]
    4dc8: 11 f1 41 0f  	cmn.w	r1, #65
    4dcc: c8 bf        	it	gt
    4dce: 01 32        	addgt	r2, #1
    4dd0: bc f1 01 0f  	cmp.w	r12, #1
    4dd4: 0e d0        	beq	0x4df4 <core::fmt::Formatter::pad::h2af898439b848233+0x186> @ imm = #28
    4dd6: 96 f9 01 10  	ldrsb.w	r1, [r6, #1]
    4dda: 11 f1 41 0f  	cmn.w	r1, #65
    4dde: c8 bf        	it	gt
    4de0: 01 32        	addgt	r2, #1
    4de2: bc f1 02 0f  	cmp.w	r12, #2
    4de6: 05 d0        	beq	0x4df4 <core::fmt::Formatter::pad::h2af898439b848233+0x186> @ imm = #10
    4de8: 96 f9 02 10  	ldrsb.w	r1, [r6, #2]
    4dec: 11 f1 41 0f  	cmn.w	r1, #65
    4df0: c8 bf        	it	gt
    4df2: 01 32        	addgt	r2, #1
    4df4: 96 45        	cmp	lr, r2
    4df6: 40 f2 9b 80  	bls.w	0x4f30 <core::fmt::Formatter::pad::h2af898439b848233+0x2c2> @ imm = #310
    4dfa: 90 f8 20 10  	ldrb.w	r1, [r0, #32]
    4dfe: ae eb 02 02  	sub.w	r2, lr, r2
    4e02: a0 46        	mov	r8, r4
    4e04: cb 1e        	subs	r3, r1, #3
    4e06: 18 bf        	it	ne
    4e08: 0b 46        	movne	r3, r1
    4e0a: 99 07        	lsls	r1, r3, #30
    4e0c: 05 d0        	beq	0x4e1a <core::fmt::Formatter::pad::h2af898439b848233+0x1ac> @ imm = #10
    4e0e: 01 2b        	cmp	r3, #1
    4e10: 06 d1        	bne	0x4e20 <core::fmt::Formatter::pad::h2af898439b848233+0x1b2> @ imm = #12
    4e12: 4f f0 00 0a  	mov.w	r10, #0
    4e16: 11 46        	mov	r1, r2
    4e18: 06 e0        	b	0x4e28 <core::fmt::Formatter::pad::h2af898439b848233+0x1ba> @ imm = #12
    4e1a: 00 21        	movs	r1, #0
    4e1c: 92 46        	mov	r10, r2
    4e1e: 03 e0        	b	0x4e28 <core::fmt::Formatter::pad::h2af898439b848233+0x1ba> @ imm = #6
    4e20: 51 08        	lsrs	r1, r2, #1
    4e22: 01 32        	adds	r2, #1
    4e24: 4f ea 52 0a  	lsr.w	r10, r2, #1
    4e28: 46 68        	ldr	r6, [r0, #4]
    4e2a: 4c 1c        	adds	r4, r1, #1
    4e2c: d0 e9 06 b5  	ldrd	r11, r5, [r0, #24]
    4e30: 01 3c        	subs	r4, #1
    4e32: 06 d0        	beq	0x4e42 <core::fmt::Formatter::pad::h2af898439b848233+0x1d4> @ imm = #12
    4e34: 2a 69        	ldr	r2, [r5, #16]
    4e36: 58 46        	mov	r0, r11
    4e38: 31 46        	mov	r1, r6
    4e3a: 90 47        	blx	r2
    4e3c: 00 28        	cmp	r0, #0
    4e3e: f7 d0        	beq	0x4e30 <core::fmt::Formatter::pad::h2af898439b848233+0x1c2> @ imm = #-18
    4e40: 0d e0        	b	0x4e5e <core::fmt::Formatter::pad::h2af898439b848233+0x1f0> @ imm = #26
    4e42: 50 46        	mov	r0, r10
    4e44: b6 f5 88 1a  	subs.w	r10, r6, #1114112
    4e48: 18 bf        	it	ne
    4e4a: 82 46        	movne	r10, r0
    4e4c: b6 f5 88 1f  	cmp.w	r6, #1114112
    4e50: 05 d0        	beq	0x4e5e <core::fmt::Formatter::pad::h2af898439b848233+0x1f0> @ imm = #10
    4e52: eb 68        	ldr	r3, [r5, #12]
    4e54: 58 46        	mov	r0, r11
    4e56: 41 46        	mov	r1, r8
    4e58: 4a 46        	mov	r2, r9
    4e5a: 98 47        	blx	r3
    4e5c: e8 b1        	cbz	r0, 0x4e9a <core::fmt::Formatter::pad::h2af898439b848233+0x22c> @ imm = #58
    4e5e: 01 20        	movs	r0, #1
    4e60: 01 b0        	add	sp, #4
    4e62: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4e66: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4e68: db b2        	uxtb	r3, r3
    4e6a: 46 45        	cmp	r6, r8
    4e6c: 21 d0        	beq	0x4eb2 <core::fmt::Formatter::pad::h2af898439b848233+0x244> @ imm = #66
    4e6e: 61 78        	ldrb	r1, [r4, #1]
    4e70: a6 1c        	adds	r6, r4, #2
    4e72: 01 f0 3f 01  	and	r1, r1, #63
    4e76: 8d 01        	lsls	r5, r1, #6
    4e78: e0 2b        	cmp	r3, #224
    4e7a: 1f d2        	bhs	0x4ebc <core::fmt::Formatter::pad::h2af898439b848233+0x24e> @ imm = #62
    4e7c: 2c e7        	b	0x4cd8 <core::fmt::Formatter::pad::h2af898439b848233+0x6a> @ imm = #-424
    4e7e: 4a 45        	cmp	r2, r9
    4e80: 7f f4 36 af  	bne.w	0x4cf0 <core::fmt::Formatter::pad::h2af898439b848233+0x82> @ imm = #-404
    4e84: 21 46        	mov	r1, r4
    4e86: 00 29        	cmp	r1, #0
    4e88: 0c bf        	ite	eq
    4e8a: 4a 46        	moveq	r2, r9
    4e8c: 0c 46        	movne	r4, r1
    4e8e: be f1 01 0f  	cmp.w	lr, #1
    4e92: 42 d0        	beq	0x4f1a <core::fmt::Formatter::pad::h2af898439b848233+0x2ac> @ imm = #132
    4e94: d0 e9 06 10  	ldrd	r1, r0, [r0, #24]
    4e98: 4d e0        	b	0x4f36 <core::fmt::Formatter::pad::h2af898439b848233+0x2c8> @ imm = #154
    4e9a: 00 24        	movs	r4, #0
    4e9c: a2 45        	cmp	r10, r4
    4e9e: 17 d0        	beq	0x4ed0 <core::fmt::Formatter::pad::h2af898439b848233+0x262> @ imm = #46
    4ea0: 2a 69        	ldr	r2, [r5, #16]
    4ea2: 58 46        	mov	r0, r11
    4ea4: 31 46        	mov	r1, r6
    4ea6: 90 47        	blx	r2
    4ea8: 01 34        	adds	r4, #1
    4eaa: 00 28        	cmp	r0, #0
    4eac: f6 d0        	beq	0x4e9c <core::fmt::Formatter::pad::h2af898439b848233+0x22e> @ imm = #-20
    4eae: 61 1e        	subs	r1, r4, #1
    4eb0: 0f e0        	b	0x4ed2 <core::fmt::Formatter::pad::h2af898439b848233+0x264> @ imm = #30
    4eb2: 00 25        	movs	r5, #0
    4eb4: 46 46        	mov	r6, r8
    4eb6: e0 2b        	cmp	r3, #224
    4eb8: ff f4 0e af  	blo.w	0x4cd8 <core::fmt::Formatter::pad::h2af898439b848233+0x6a> @ imm = #-484
    4ebc: 46 45        	cmp	r6, r8
    4ebe: 10 d0        	beq	0x4ee2 <core::fmt::Formatter::pad::h2af898439b848233+0x274> @ imm = #32
    4ec0: 16 f8 01 1b  	ldrb	r1, [r6], #1
    4ec4: 01 f0 3f 04  	and	r4, r1, #63
    4ec8: f0 2b        	cmp	r3, #240
    4eca: ff f4 05 af  	blo.w	0x4cd8 <core::fmt::Formatter::pad::h2af898439b848233+0x6a> @ imm = #-502
    4ece: 0d e0        	b	0x4eec <core::fmt::Formatter::pad::h2af898439b848233+0x27e> @ imm = #26
    4ed0: 51 46        	mov	r1, r10
    4ed2: 00 20        	movs	r0, #0
    4ed4: 51 45        	cmp	r1, r10
    4ed6: 38 bf        	it	lo
    4ed8: 01 20        	movlo	r0, #1
    4eda: 01 b0        	add	sp, #4
    4edc: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4ee0: f0 bd        	pop	{r4, r5, r6, r7, pc}
    4ee2: 00 24        	movs	r4, #0
    4ee4: 46 46        	mov	r6, r8
    4ee6: f0 2b        	cmp	r3, #240
    4ee8: ff f4 f6 ae  	blo.w	0x4cd8 <core::fmt::Formatter::pad::h2af898439b848233+0x6a> @ imm = #-532
    4eec: 25 43        	orrs	r5, r4
    4eee: 46 45        	cmp	r6, r8
    4ef0: 1a bf        	itte	ne
    4ef2: 31 78        	ldrbne	r1, [r6]
    4ef4: 01 f0 3f 01  	andne	r1, r1, #63
    4ef8: 00 21        	moveq	r1, #0
    4efa: 4f f4 e0 16  	mov.w	r6, #1835008
    4efe: 06 ea 83 43  	and.w	r3, r6, r3, lsl #18
    4f02: 43 ea 85 13  	orr.w	r3, r3, r5, lsl #6
    4f06: 19 44        	add	r1, r3
    4f08: b1 f5 88 1f  	cmp.w	r1, #1114112
    4f0c: 7f f4 e4 ae  	bne.w	0x4cd8 <core::fmt::Formatter::pad::h2af898439b848233+0x6a> @ imm = #-568
    4f10: 00 9c        	ldr	r4, [sp]
    4f12: 4a 46        	mov	r2, r9
    4f14: be f1 01 0f  	cmp.w	lr, #1
    4f18: bc d1        	bne	0x4e94 <core::fmt::Formatter::pad::h2af898439b848233+0x226> @ imm = #-136
    4f1a: 91 46        	mov	r9, r2
    4f1c: d0 f8 0c e0  	ldr.w	lr, [r0, #12]
    4f20: b9 f1 00 0f  	cmp.w	r9, #0
    4f24: 7f f4 b8 ae  	bne.w	0x4c98 <core::fmt::Formatter::pad::h2af898439b848233+0x2a> @ imm = #-656
    4f28: 00 22        	movs	r2, #0
    4f2a: 96 45        	cmp	lr, r2
    4f2c: 3f f6 65 af  	bhi.w	0x4dfa <core::fmt::Formatter::pad::h2af898439b848233+0x18c> @ imm = #-310
    4f30: 81 69        	ldr	r1, [r0, #24]
    4f32: 4a 46        	mov	r2, r9
    4f34: c0 69        	ldr	r0, [r0, #28]
    4f36: c3 68        	ldr	r3, [r0, #12]
    4f38: 08 46        	mov	r0, r1
    4f3a: 21 46        	mov	r1, r4
    4f3c: 01 b0        	add	sp, #4
    4f3e: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    4f42: bd e8 f0 40  	pop.w	{r4, r5, r6, r7, lr}
    4f46: 18 47        	bx	r3

00004f48 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8>:
    4f48: f0 b5        	push	{r4, r5, r6, r7, lr}
    4f4a: 03 af        	add	r7, sp, #12
    4f4c: 2d e9 00 0f  	push.w	{r8, r9, r10, r11}
    4f50: 8f b0        	sub	sp, #60
    4f52: 04 68        	ldr	r4, [r0]
    4f54: 8c 46        	mov	r12, r1
    4f56: 45 f2 fc 21  	movw	r1, #21244
    4f5a: 42 f2 10 73  	movw	r3, #10000
    4f5e: 00 2c        	cmp	r4, #0
    4f60: c0 f2 00 01  	movt	r1, #0
    4f64: 25 46        	mov	r5, r4
    4f66: 48 bf        	it	mi
    4f68: 65 42        	rsbmi	r5, r4, #0
    4f6a: 9d 42        	cmp	r5, r3
    4f6c: 41 d3        	blo	0x4ff2 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0xaa> @ imm = #130
    4f6e: 41 f2 59 79  	movw	r9, #5977
    4f72: 4e f2 ff 08  	movw	r8, #57599
    4f76: 0d f1 14 0e  	add.w	lr, sp, #20
    4f7a: 00 20        	movs	r0, #0
    4f7c: cd f2 b7 19  	movt	r9, #53687
    4f80: 41 f2 7b 4a  	movw	r10, #5243
    4f84: 4f f0 64 0b  	mov.w	r11, #100
    4f88: c0 f2 f5 58  	movt	r8, #1525
    4f8c: cd e9 03 4c  	strd	r4, r12, [sp, #12]
    4f90: a5 fb 09 26  	umull	r2, r6, r5, r9
    4f94: 0e eb 00 04  	add.w	r4, lr, r0
    4f98: 04 38        	subs	r0, #4
    4f9a: 45 45        	cmp	r5, r8
    4f9c: 4f ea 56 32  	lsr.w	r2, r6, #13
    4fa0: 02 fb 13 56  	mls	r6, r2, r3, r5
    4fa4: 15 46        	mov	r5, r2
    4fa6: 1f fa 86 fc  	uxth.w	r12, r6
    4faa: 4f ea 9c 03  	lsr.w	r3, r12, #2
    4fae: 03 fb 0a f3  	mul	r3, r3, r10
    4fb2: 4f ea 53 43  	lsr.w	r3, r3, #17
    4fb6: 03 fb 1b 66  	mls	r6, r3, r11, r6
    4fba: 31 f8 13 30  	ldrh.w	r3, [r1, r3, lsl #1]
    4fbe: a4 f8 23 30  	strh.w	r3, [r4, #35]
    4fc2: 42 f2 10 73  	movw	r3, #10000
    4fc6: b6 b2        	uxth	r6, r6
    4fc8: 31 f8 16 60  	ldrh.w	r6, [r1, r6, lsl #1]
    4fcc: a4 f8 25 60  	strh.w	r6, [r4, #37]
    4fd0: de d8        	bhi	0x4f90 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0x48> @ imm = #-68
    4fd2: dd e9 03 4c  	ldrd	r4, r12, [sp, #12]
    4fd6: 00 f1 27 03  	add.w	r3, r0, #39
    4fda: 15 46        	mov	r5, r2
    4fdc: 63 2d        	cmp	r5, #99
    4fde: 0b dc        	bgt	0x4ff8 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0xb0> @ imm = #22
    4fe0: 28 46        	mov	r0, r5
    4fe2: 0a 28        	cmp	r0, #10
    4fe4: 19 db        	blt	0x501a <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0xd2> @ imm = #50
    4fe6: 31 f8 10 00  	ldrh.w	r0, [r1, r0, lsl #1]
    4fea: 9a 1e        	subs	r2, r3, #2
    4fec: 05 a9        	add	r1, sp, #20
    4fee: 88 52        	strh	r0, [r1, r2]
    4ff0: 17 e0        	b	0x5022 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0xda> @ imm = #46
    4ff2: 27 23        	movs	r3, #39
    4ff4: 63 2d        	cmp	r5, #99
    4ff6: f3 dd        	ble	0x4fe0 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0x98> @ imm = #-26
    4ff8: a8 b2        	uxth	r0, r5
    4ffa: 41 f2 7b 42  	movw	r2, #5243
    4ffe: 80 08        	lsrs	r0, r0, #2
    5000: 02 3b        	subs	r3, #2
    5002: 50 43        	muls	r0, r2, r0
    5004: 64 22        	movs	r2, #100
    5006: 05 ae        	add	r6, sp, #20
    5008: 40 0c        	lsrs	r0, r0, #17
    500a: 00 fb 12 52  	mls	r2, r0, r2, r5
    500e: 92 b2        	uxth	r2, r2
    5010: 31 f8 12 20  	ldrh.w	r2, [r1, r2, lsl #1]
    5014: f2 52        	strh	r2, [r6, r3]
    5016: 0a 28        	cmp	r0, #10
    5018: e5 da        	bge	0x4fe6 <core::fmt::num::imp::<impl core::fmt::Display for isize>::fmt::h3d344ddcdaf37cc8+0x9e> @ imm = #-54
    501a: 5a 1e        	subs	r2, r3, #1
    501c: 05 a9        	add	r1, sp, #20
    501e: 30 30        	adds	r0, #48
    5020: 88 54        	strb	r0, [r1, r2]
    5022: c2 f1 27 00  	rsb.w	r0, r2, #39
    5026: 05 a9        	add	r1, sp, #20
    5028: 11 44        	add	r1, r2
    502a: 45 f2 d8 22  	movw	r2, #21208
    502e: cd e9 00 10  	strd	r1, r0, [sp]
    5032: e0 43        	mvns	r0, r4
    5034: c1 0f        	lsrs	r1, r0, #31
    5036: c0 f2 00 02  	movt	r2, #0
    503a: 60 46        	mov	r0, r12
    503c: 00 23        	movs	r3, #0
    503e: ff f7 83 fc  	bl	0x4948 <core::fmt::Formatter::pad_integral::hc30b72cce6f916c9> @ imm = #-1786
    5042: 0f b0        	add	sp, #60
    5044: bd e8 00 0f  	pop.w	{r8, r9, r10, r11}
    5048: f0 bd        	pop	{r4, r5, r6, r7, pc}

0000504a <<&T as core::fmt::Debug>::fmt::h61a546856097b7ad>:
    504a: d0 e9 00 20  	ldrd	r2, r0, [r0]
    504e: c3 68        	ldr	r3, [r0, #12]
    5050: 10 46        	mov	r0, r2
    5052: 18 47        	bx	r3

00005054 <<&T as core::fmt::Display>::fmt::h3eec5fd81643461c>:
    5054: 0b 46        	mov	r3, r1
    5056: d0 e9 00 12  	ldrd	r1, r2, [r0]
    505a: 18 46        	mov	r0, r3
    505c: ff f7 07 be  	b.w	0x4c6e <core::fmt::Formatter::pad::h2af898439b848233> @ imm = #-1010

00005060 <memcpy>:
    5060: f0 b5        	push	{r4, r5, r6, r7, lr}
    5062: 03 af        	add	r7, sp, #12
    5064: 4d f8 04 8d  	str	r8, [sp, #-4]!
    5068: 42 b1        	cbz	r2, 0x507c <memcpy+0x1c> @ imm = #16
    506a: 53 1e        	subs	r3, r2, #1
    506c: 02 f0 03 0c  	and	r12, r2, #3
    5070: 03 2b        	cmp	r3, #3
    5072: 06 d2        	bhs	0x5082 <memcpy+0x22>    @ imm = #12
    5074: 00 22        	movs	r2, #0
    5076: bc f1 00 0f  	cmp.w	r12, #0
    507a: 1f d1        	bne	0x50bc <memcpy+0x5c>    @ imm = #62
    507c: 5d f8 04 8b  	ldr	r8, [sp], #4
    5080: f0 bd        	pop	{r4, r5, r6, r7, pc}
    5082: 22 f0 03 02  	bic	r2, r2, #3
    5086: 00 f1 01 0e  	add.w	lr, r0, #1
    508a: 54 42        	rsbs	r4, r2, #0
    508c: 01 f1 01 08  	add.w	r8, r1, #1
    5090: 6f f0 03 02  	mvn	r2, #3
    5094: 08 eb 02 05  	add.w	r5, r8, r2
    5098: 0e eb 02 03  	add.w	r3, lr, r2
    509c: 04 32        	adds	r2, #4
    509e: ee 78        	ldrb	r6, [r5, #3]
    50a0: de 70        	strb	r6, [r3, #3]
    50a2: 2e 79        	ldrb	r6, [r5, #4]
    50a4: 1e 71        	strb	r6, [r3, #4]
    50a6: 6e 79        	ldrb	r6, [r5, #5]
    50a8: 5e 71        	strb	r6, [r3, #5]
    50aa: ad 79        	ldrb	r5, [r5, #6]
    50ac: 9d 71        	strb	r5, [r3, #6]
    50ae: a3 18        	adds	r3, r4, r2
    50b0: 04 33        	adds	r3, #4
    50b2: ef d1        	bne	0x5094 <memcpy+0x34>    @ imm = #-34
    50b4: 04 32        	adds	r2, #4
    50b6: bc f1 00 0f  	cmp.w	r12, #0
    50ba: df d0        	beq	0x507c <memcpy+0x1c>    @ imm = #-66
    50bc: 8b 5c        	ldrb	r3, [r1, r2]
    50be: bc f1 01 0f  	cmp.w	r12, #1
    50c2: 83 54        	strb	r3, [r0, r2]
    50c4: da d0        	beq	0x507c <memcpy+0x1c>    @ imm = #-76
    50c6: 53 1c        	adds	r3, r2, #1
    50c8: bc f1 02 0f  	cmp.w	r12, #2
    50cc: ce 5c        	ldrb	r6, [r1, r3]
    50ce: c6 54        	strb	r6, [r0, r3]
    50d0: d4 d0        	beq	0x507c <memcpy+0x1c>    @ imm = #-88
    50d2: 02 32        	adds	r2, #2
    50d4: 89 5c        	ldrb	r1, [r1, r2]
    50d6: 81 54        	strb	r1, [r0, r2]
    50d8: 5d f8 04 8b  	ldr	r8, [sp], #4
    50dc: f0 bd        	pop	{r4, r5, r6, r7, pc}

000050de <memset>:
    50de: d0 b5        	push	{r4, r6, r7, lr}
    50e0: 02 af        	add	r7, sp, #8
    50e2: fa b1        	cbz	r2, 0x5124 <memset+0x46> @ imm = #62
    50e4: 53 1e        	subs	r3, r2, #1
    50e6: 02 f0 03 0c  	and	r12, r2, #3
    50ea: 03 2b        	cmp	r3, #3
    50ec: 01 d2        	bhs	0x50f2 <memset+0x14>    @ imm = #2
    50ee: 00 22        	movs	r2, #0
    50f0: 11 e0        	b	0x5116 <memset+0x38>    @ imm = #34
    50f2: 22 f0 03 02  	bic	r2, r2, #3
    50f6: 00 f1 01 0e  	add.w	lr, r0, #1
    50fa: 53 42        	rsbs	r3, r2, #0
    50fc: 6f f0 03 02  	mvn	r2, #3
    5100: 0e eb 02 04  	add.w	r4, lr, r2
    5104: 04 32        	adds	r2, #4
    5106: a1 71        	strb	r1, [r4, #6]
    5108: 61 71        	strb	r1, [r4, #5]
    510a: 21 71        	strb	r1, [r4, #4]
    510c: e1 70        	strb	r1, [r4, #3]
    510e: 9c 18        	adds	r4, r3, r2
    5110: 04 34        	adds	r4, #4
    5112: f5 d1        	bne	0x5100 <memset+0x22>    @ imm = #-22
    5114: 04 32        	adds	r2, #4
    5116: bc f1 00 0f  	cmp.w	r12, #0
    511a: 1c bf        	itt	ne
    511c: 81 54        	strbne	r1, [r0, r2]
    511e: bc f1 01 0f  	cmpne.w	r12, #1
    5122: 00 d1        	bne	0x5126 <memset+0x48>    @ imm = #0
    5124: d0 bd        	pop	{r4, r6, r7, pc}
    5126: 02 44        	add	r2, r0
    5128: bc f1 02 0f  	cmp.w	r12, #2
    512c: 51 70        	strb	r1, [r2, #1]
    512e: 18 bf        	it	ne
    5130: 91 70        	strbne	r1, [r2, #2]
    5132: d0 bd        	pop	{r4, r6, r7, pc}

00005134 <__aeabi_memcpy>:
    5134: ff f7 94 bf  	b.w	0x5060 <memcpy>         @ imm = #-216

00005138 <__aeabi_memset>:
    5138: 0b 46        	mov	r3, r1
    513a: 11 46        	mov	r1, r2
    513c: 1a 46        	mov	r2, r3
    513e: ff f7 ce bf  	b.w	0x50de <memset>         @ imm = #-100

00005142 <__aeabi_memclr>:
    5142: 00 22        	movs	r2, #0
    5144: ff f7 f8 bf  	b.w	0x5138 <__aeabi_memset> @ imm = #-16
