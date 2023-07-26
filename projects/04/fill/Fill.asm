// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
    @8192
    D=A

    @max
    M=D

(LOOP)
    @current
    M=0

    @KBD
    D=M

    @FILL
    D;JGT
    @BLANK
    0;JMP

(FILL)
    @SCREEN
    D=A

    @current
    D=D+M

    A=D
    M=-1

    @current
    M=M+1
    D=M

    @max
    D=M-D

    @FILL
    D;JGT
    @END
    0;JMP

(BLANK)
    @SCREEN
    D=A

    @current
    D=D+M

    A=D
    M=0

    @current
    M=M+1
    D=M

    @max
    D=M-D

    @BLANK
    D;JGT
    @END
    0;JMP


(END)
    @LOOP
    0;JMP
