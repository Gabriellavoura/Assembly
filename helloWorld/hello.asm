section .data
  msg db "hello", 10
  
section .text
  global main

main:
  mov   rax, 1    ;sys_write
  mov   rdi, 1    ;stdout
  mov   rsi, msg
  mov   rdx, 6
  syscall

  mov rax, 60     ;sys_exit
  mov rdi, 0      ;valor de saida 0 se erro -1
  syscall
