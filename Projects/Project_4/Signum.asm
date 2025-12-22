// Signum
// If R0 > 0 then set R1 to 1
//           else set R1 to 0

    @R0
    D=M         // D = RAM[0]

    @POSITIVE
    D;JGT       // Jump if R0 > 0

    @R1
    M=0         // Set RAM[1] to 0 because the
                // value of RAM[0] is negative.

    @END        // Jump to the END of the program
    0;JMP

(POSITIVE)
    @R1         // The value is positive,
    M=1         // so we set RAM[1] to 1.

(END)           // END of the program
    @END
    0;JMP
