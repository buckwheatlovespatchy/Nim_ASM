

# Nim - Assembly Proof-of-Concept

This isn't really a very useful repo, but this is more of a demonstration of using Futhark as a means of using Assembly code from Nim. From what I've seen, most people who use Assembly in Nim will use inline Assembly on UNIX-likes. I've seen people defining macros for MASM, but MASM is a completely different beast to me. This example provided was written for x86-64 NASM on FreeBSD, though I do believe that these opcodes used also work for Linux, NetBSD, and OpenBSD. (I could be wrong, but last time I wrote any Assembly for NetBSD or OpenBSD, I had to include magic headers? Unsure if that's still the case.) As long as your Assembly code works with the C ABI then it should work fine with Futhark, or supposedly that is what I've heard. I could be wrong, and frequently I am.

Either way, I don't know how useful this knowledge really is in the long run and what can be done by utilizing Futhark for mixing Nim and Assembly in this way, but this at least shows that it can be done. I have only tested this using Linux and FreeBSD, and strictly only with NASM. I'm sure this works fine with Assembly written for GAS and any other Assembler for UNIX-likes, I don't believe this will work for MASM on Windows unless you were to use NASM and assemble to a `.o` rather than a `.obj`.


# Building

Since Makefiles don't work with Nim, I created a `config.nims` file that is structured and acts similarly to a POSIX Makefile. Calling `nim install` should manage to properly build out the project, Assembler and all. Other than that, not much else, it's quite simple.


# Requirements

- futhark >= 0.15.0
- nasm >= 2.16.03
- nim >= 2.2.4

