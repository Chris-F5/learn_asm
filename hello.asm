SECTION .data
msg db 'hello world', 10 ; newline decimal

; kernel interrupt registers
; arch   call  arg1  arg2  arg3  arg4  arg5  arg6
; -------------------------------------------------
; i386   eax   ebx   ecx   edx   esi   edi   ebp
; x86-64 rax   rdi   rsi   rdx   r10   r8    r9

SECTION .text
global  _start
_start:
  ; print hello
  mov eax, 4   ; SYS_WRITE
  mov ebx, 1   ; stdout
  mov ecx, msg ; bytes
  mov edx, 12  ; byte count
  int 80h      ; kernel interrupt

  ; exit
  mov eax, 1
  mov ebx, 0
  int 0x80
