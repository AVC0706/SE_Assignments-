ORG 0000H
ljmp start1

START1:
	MOV R0, #30H	
	MOV A, #00H	
	MOV R3, #07H	
	MOV DPTR, #0200H

BACK : 
	MOV A, @R0	
	MOVX @DPTR, A	
	INC R0	
	INC DPTR	
	DJNZ R3, BACK	
	END

NEXT1:
	SJMP NEXT1

END





