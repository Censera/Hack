// Repeat until the loop n times

// i    = 0
// n    = 0
// sum  = 0

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @STOP
    0;JGT       // Stop if i > n

    @sum
    D=M
    @i
    D=D+M
    @sum
    M=D
    @i
    D=D+1
    @LOOP
    0;JMP

(STOP)
    @sum
    D=M
    @R1
    M=D

(END)
    @END
    0;JMP

