// Swap two values from RAM[0] and RAM[1]

// tmp = R1
// R1  = R0
// R0  = tmp

    @R1         // tmp = R1
    D=M         // tmp is a variable allocated
    @tmp        // to the RAM address 16
    M=D

    @R0         // R1 = R0
    D=M         // <- Get the value from RAM[0]
    @R1         //    and
    M=D         //    set its value to RAM[1]
                
                // Same for the rest.

    @tmp        // R0 = tmp
    D=M
    @R0
    M=D

(END)           // END of the program
    @END
    0;JMP
