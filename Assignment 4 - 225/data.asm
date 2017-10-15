	 .ORIG 	x3300

Q1        .STRINGZ  "\nHow many donuts have you had in the last month?\n   1 - One to Three\n   2 - Four to Six\n   3 - Seven to Ten\n   4 - More than Ten\n"
Q1Answ   .FILL    #2
         .FILL    #5
         .FILL    #8
         .FILL    #10

Q2    	 .STRINGZ  "\nWhat is your favorite sport to watch\n   1 - Bones\n   2 - Survivor\n   3 - NCIS\n   4 - The Bachelor\n"
Q2Answ   .FILL    #8
         .FILL    #10
         .FILL    #5
         .FILL    #2

Q3    	 .STRINGZ  "\nWho is your favorite professor?\n   1 - Paul Hatalsky\n   2 - Professor from Gilligan's Island\n   3 - Professor Plum\n   4 - Julie Workman\n"
Q3Answ   .FILL    #5
         .FILL    #8
         .FILL    #2
         .FILL    #10

Result1	.STRINGZ  "\nTerrible! You get an 'F'!"
Result2	.STRINGZ  "\nHmm, I thought your mother raised you better."
Result3	.STRINGZ  "\nNot bad, kid.  You have good taste."
Result4	.STRINGZ  "\nExcellent!  Julie, is that you???"

	.END