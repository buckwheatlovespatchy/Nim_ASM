import std/strformat

const
  asm_file:  string = "lib.asm"
  asm_flags: string = "-f elf64 -o"
  asm_obj:   string = "lib.o"
  nim_file:  string = "main.nim"
  nim_flags: string = "c -o:bin/nim_asm -d:release"
  src_path:  string = "src"

task install, "Create the binary":
  exec fmt"nasm {asm_flags} {asm_obj} {src_path}/{asm_file}"
  exec fmt"nim {nim_flags} {src_path}/{nim_file}"
  exec fmt"rm -f {asm_obj}"
