// This program filled draws a rectangle on the screen
// with 16 width and RAM[0] height

    // n = RAM[0]
    @R0
    D=M
    @n
    M=D

    // i = 0
    @i
    M=0

    @SCREEN
    D=A
    @address
    M=D

(DRAW) // Loop
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGT

    @address
    A=M
    M=-1  // -1 means draken the pixel

    @i
    M=M+1 // i++
    @32
    D=A
    @address
    M=D+M // address += 32
    @DRAW
    0;JMP // Go to DRAW

(END)      // END of the program, because i == n
    @END
    0;JMP

