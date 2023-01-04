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
@SCREEN//將SCREEN 的位置儲存到D
D=A
@0
M=D	//將螢幕起始位置放到RAM0

@KBD //檢查KBD寄存器
D=M
@BLACK
D;JGT	//不為0時跳至@BLACK
@WHITE
D;JEQ	//為0時，跳到@WHITE
@KBDCHECK
0;JMP
@1
M=-1	//WHAT TO FILL SCREEN WITH (-1=11111111111111)
@CHANGE
0;JMP
@1
M=0	//設定為白屏
@CHANGE
0;JMP
@1	//檢查屏幕
D=M	//D 為黑屏還是白屏
@0
A=M	//GET ADRESS OF SCREEN PIXEL TO FILL
M=D	//FILL IT
@0
D=M+1	//INC 到下個像素
@KBD
D=A-D	//KBD-SCREEN=A
@0
M=M+1	//INC 到下個像素
A=M
@CHANGE
D;JGT	//IF A=0 EXIT AS THE WHOLE SCREEN IS BLACK
@RESTART
0;JMP//無條件跳轉