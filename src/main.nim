import futhark

importc:
  path "../src"
  "lib.h"
{.passL: "lib.o".}

proc main() =
  echo "Hello from Nim!"

when isMainModule:
  asm_hello()
  main()
