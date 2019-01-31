;;starter.asm
bits 32
section .text
  ;multiboot spec
  align 4
  dd 0x1BADB002             ;magic
  dd 0x00                   ;flags
  dd - (0x1BADB002 + 0x00)  ;checksum m+f+c must equal zero

global start
extern core                 ;function defined in external code

start:
  cli                       ;blocks interrupts
  mov esp, stack_space      ;set stack pointer
  call core
  hlt                       ;halts the cpu

section .bss
resp 8192                   ;8KB for stack
stack_space:
