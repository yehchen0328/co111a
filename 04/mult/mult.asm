// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@2	//GO TO FINAL ANSWER BOX
M=0	//

@0
D=M
@END
D;JEQ	//假如D=0

@1
D=M
@END
D;JEQ	//假如D=0

@0	
D=M	
@3	
M=D	


(LOOP)
@1	//獲得第二個號碼
D=M	

@2	//取得最終值
M=D+M	

@3	//獲得第一個號碼
M=M-1	

D=M	
@LOOP	
D;JGT	


(END)
@END
0;JMP	//無限循環