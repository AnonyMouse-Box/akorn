/* starter.s */
@bits 32
@section .text
  /* multiboot spec */
  @align 4
  @dd 0x1BADB002             @magic
  @dd 0x00                   @flags
  @dd - (0x1BADB002 + 0x00)  @checksum m+f+c must equal zero

global _start
@extern core                 @function defined in external code

_start:
  @cli                       @blocks interrupts
  @MOV esp, _stack           @set stack pointer
  @call core
  @hlt                       @halts the cpu

@section .bss
@resp 8192                   @8KB for stack
_stack:
