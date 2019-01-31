;;starter.asm
bits 32
section .text

global start
extern core

start:
  cli
  mov esp, stack_space
  call core
  hlt

section .bss
resp 8192
stack_space:
