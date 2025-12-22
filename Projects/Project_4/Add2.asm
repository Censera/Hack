// RAM[2] = RAM[0] + RAM[1]
// Adds up two numbers from the RAM 
// RAM[0] and RAM[1] have the value 0
// You need to change their value manually

@0
D=M			// D = RAM[0]

@1
D=D+M		// RAM[1] = D + RAM[0]

@2
M=D			// RAM[2] = D

@7			// END of the program
0;JMP
