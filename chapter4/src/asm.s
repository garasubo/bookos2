.cpu cortex-m4
.thumb

.section .text
.syntax unified
.global asm_execute_process

asm_execute_process:
    push {r4, r5, r6, r7, lr}
    push {r8, r9, r10, r11}
    msr psp, r0
    svc 0
    pop {r8, r9, r10, r11}
    pop {r4, r5, r6, r7, pc}
