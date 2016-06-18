// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

  // Put your code here.
  @0
  M=0
  (check_kbd)
  @KBD
  D=M
  @clean
  D                             ;JEQ
  @0
  D=M
  @8192
  D=D-A
  @check_kbd
  D                             ;JEQ
  @0
  D=M
  @SCREEN
  A=D+A
  D=0
  D=!D
  M=D
  @0
  M=M+1
  @check_kbd
  0                             ;JMP
  (clean)
  @0
  D=M
  @check_kbd
  D                             ;JLT
  @0
  MD=M-1
  @SCREEN
  A=D+A
  M=0
  @check_kbd
  0                             ;JMP
