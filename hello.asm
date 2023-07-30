SECTION .data
msg db 'hello world', 10 ; newline decimal

SECTION .text
global  _start
_start:
  ; print hello
  mov edx, 12  ; byte count
  mov ecx, msg ; bytes
  mov ebx, 1   ; stdout
  mov eax, 4   ; SYS_WRITE
  int 80h      ; kernel interrupt

  ; exit
  mov eax, 1
  mov ebx, 0
  int 0x80
