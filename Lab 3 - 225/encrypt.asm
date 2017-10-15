	.ORIG x3000
	AND R0, R0, #0
	AND R1, R1, #0			; downward counter
	AND R2, R2, #0
	AND R3, R3, #0			; register place
	AND R4, R4, #0
	AND R5, R5, #0
	AND R6, R6, #0			; clears all the registers
	

	LEA R0 GETKEY			; puts the string at GETKEY into R0
	LEA R3 WORDS			; puts location of WORDS in R3
	PUTS 				; prints get key message
	GETC				; takes in key number
	ADD R5, R0, R5			; puts key into R5
	LD R6, CONVERT			; puts -48 into R6 for conversion
	ADD R5, R5, R6			; converts the ascii to decimal
	OUT				; prints back out user input
	AND R1, R1, #0  		; clears R1
	ADD R1, R1, #15			
	ADD R1, R1, #5			; sets R1 to counter

	LEA R0 GETIN			; puts the string at GETIN into R0
	PUTS				; prints get input message
	
TOP	GETC				; takes letter

	ADD R4 R0 #-10			; checks if value entered is enter key
	BRz END				; skips to end if it is enter key
	
	OUT				; prints back out user input
	AND R4 R0 #1			; checks first bit

	BRnp SUB1			; if first bit 1, skip to subtracting 1
	ADD R0 R0 #1			; adds 1 if first bit is zero
	BR AFTER			; skips the subtraction since already added one
SUB1	ADD R0 R0 #-1			; subtracts 1
AFTER	ADD R0 R0 R5			; adds the key to the changed bits
	
	STR R0 R3 #0			; writes encrypted letter to register in R3
	ADD R3 R3 #1			; adds 1 to R3
	;ADD R1 R1 #-1			; subtracts 1 from R1
	BRp TOP				; if max letter count not reached, keep going
	

	LEA R0 ENCRYP			
	PUTS				
	LEA R0 WORDS			
	PUTS				; prints everything out
	HALT
	
END AND R0 R0 #0
	STR R0 R3 #0			; writes encrypted letter to register in R3+1
	LEA R0 ENCRYP			
	PUTS				
	LEA R0 WORDS			
	PUTS				; prints everything out
	HALT
	


GETKEY	.STRINGZ "Encryption Key (1-9): "
GETIN	.STRINGZ "\nInput Message: "
ENCRYP	.STRINGZ "\nEncrypted Message: "
CONVERT	.FILL #-48

WORDS	.BLKW #15
	.BLKW #6
	.FILL #0
	.END
