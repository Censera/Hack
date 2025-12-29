// Mult.asm multiply two numbers from an address

// Start by a getting the value from RAM[0]
    @R0
    D=M
    @fst_num
    M=D

// And the value from RAM[1]
    @R1
    D=M
    @snd_num
    M=D

// i = 0, result = 0
    @i
    M=0
    @rslt
    M=0

// Loop until i == first number
(LOOP)
    @i
    D=M
    @fst_num
    D=D-M
    @END
    D;JEQ

    // Add second number to the result
    @snd_num
    D=M
    @rslt
    M=D+M

    @i
    D=M+1
    M=D
    
    @LOOP
    0;JMP

(END)       // The program ENDs here
    @END
    0;JMP

