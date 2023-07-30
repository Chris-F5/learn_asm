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
  mov rax, 1   ; SYS_WRITE
  mov rdi, 1   ; stdout
  mov rsi, msg ; bytes
  mov rdx, 12  ; byte count
  syscall      ; kernel interrupt

  ; exit
  mov rax, 60
  mov rdi, 0
  syscall
