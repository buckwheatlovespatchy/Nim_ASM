segment .data
  hello_str db "Hello from Assembly!", 0xa
  hello_len equ $-hello_str
  
segment .text
  global asm_hello

asm_hello:
  mov rdx, hello_len
  mov rsi, hello_str
  mov rdi, 1
  mov rax, 4
  syscall
  ret
