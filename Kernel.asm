[BITS 32]
[GLOBAL _start]

section .text
_start:
  ; Initialize GDT
  LGDT [GDT_DESCRIPTOR]

  ; Setup segments
  MOV AX, 0X10
  MOV DS, AX
  MOV ES, AX
  MOV FS, AX
  MOV GS, AX
  MOV SS, AX
  MOV ESP, 0X90000

  ; Enable interrutps
  STI

  ; Ininite loop
  JMP $

section .data
  ; Include GDT
  GDT_DESCRIPTOR: TIMES 6 DB 0
  GDT: TIMES 24 DB 0
