// Signum
// If R0 > 0 then set R1 to 1
//           else set R1 to 0

@R0
D=M         // D = RAM[0]

@8
D;JGT       // Jump if R0 > 0

@R1
M=0         // Set RAM[1] to 0 because the
            // value of RAM[0] is negative

@7         // END of the program
0;JMP

@R1
M=1

@11        // END of the program
0;JMP
