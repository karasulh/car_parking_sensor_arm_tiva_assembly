;LABEL				DIRECTIVE	VALUE		COMMENT
GPIO_PORTD_DATA		EQU			0x400073FC	;accesible all pins of D to write and read
;A0_pin				EQU			0x40004004	;					;A0 pin
;A1_pin				EQU			0x40004008	;					;A1 pin
CLK_A2_pin			EQU			0x40004010 	;SSICLK				;A2 pin
CE_Fss_A3_pin		EQU			0x40004020 	;Fss/CE/Chip Enable	;A3 pin
;A4_pin				EQU			0x40004040 	;					;A4 pin
TX_A5_pin			EQU			0x40004080 	;SsiTx /DIN			;A5 pin
DC_A6_pin			EQU			0x40004100	;Data/Command		;A6	pin
RST_A7_pin			EQU			0x40004200	;RST				;A7 pin

SSI0_DR				EQU			0x40008008	;SSI Data Register
SSI0_SR				EQU			0x4000800C	;SSI Status Register

write_address		EQU			0x20000700	;It is used to store "******" hexa codes to write it on LCD


;LABEL			DIRECTIVE		VALUE		COMMENT
				AREA		subroutines,CODE,READONLY
				THUMB
				
				EXPORT		write_distanceX	
				
write_distanceX	PROC	
				PUSH		{R0-R12}

;This subroutine is used to show distance onto LCD as "--X--". According to R7 which shows the threshold, it will find the places of "X".
;Then according to "X", it fill remaining with "-".
								
;Write "-"x10 to 5.line												
;Save the "-" codes to memory adress
				LDR			R1,=write_address
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1	
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1	
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1	
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1	
;Save the "-" codes to memory adress				
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1	

					
;Find the location of "X"
;Say that Threshold is given as in R7
				MOV			R1,#100
				UDIV		R5,R7,R1	;Divide 100 to find location of X
				CMP			R5,#9
				BEQ			place_x_to_9
				CMP			R5,#8
				BEQ			place_x_to_8
				CMP			R5,#7
				BEQ			place_x_to_7
				CMP			R5,#6
				BEQ			place_x_to_6
				CMP			R5,#5
				BEQ			place_x_to_5
				CMP			R5,#4
				BEQ			place_x_to_4
				CMP			R5,#3
				BEQ			place_x_to_3
				CMP			R5,#2
				BEQ			place_x_to_2
				CMP			R5,#1
				BEQ			place_x_to_1
				CMP			R5,#0
				BEQ			place_x_to_0

place_x_to_9	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#9			;Update 9. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX

place_x_to_8	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#8			;Update 8. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX

place_x_to_7	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#7			;Update 7. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_6	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#6			;Update 6. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_5	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#5			;Update 5. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_4	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#4			;Update 4. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_3	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#3			;Update 3. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_2	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#2			;Update 2. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_1	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#1			;Update 1. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX
				
place_x_to_0	
				LDR			R1,=write_address
				MOV			R2,#6			;Every symbol has 6 pixel in terms of length of x.
				MOV			R0,#0			;Update 0. block(6 pixel)
				MUL			R2,R0			
				ADD			R1,R2			;Update address to put X there.
				B			update_locationX


update_locationX
;Save the "X" codes to memory adress				
				MOV			R0,#0x63
				STRB		R0,[R1],#1
				MOV			R0,#0x14
				STRB		R0,[R1],#1
				MOV			R0,#0x08
				STRB		R0,[R1],#1
				MOV			R0,#0x14
				STRB		R0,[R1],#1
				MOV			R0,#0x63
				STRB		R0,[R1],#1	
;Save the blank codes to memory address
				MOV			R0,#0x00
				STRB		R0,[R1],#1				
				
							

;Wait if SPI is busy
wait_until_not_busy_first
				LDR			R1,=SSI0_SR		;Status Register
				LDR			R0,[R1]
				AND			R0,#0x10		;BSY flag is obtained.
				CMP			R0,#0x10		
				BEQ			wait_until_not_busy_first	

;We should not write this part, because we write it the continued part of "Car"
;;To write to 5. line change command settings, make Y=4
;;Choose Command Part
;Command_LCD
;				LDR			R1,=DC_A6_pin	;Choose Data/Command
;				LDR			R0,[R1]
;				BIC			R0,#0x40		;Choose Command with A6 pin
;				STR			R0,[R1]
;				
;wait_until_not_busy
;				LDR			R1,=SSI0_SR		;Status Register
;				LDR			R0,[R1]
;				AND			R0,#0x10		;BSY flag is obtained.
;				CMP			R0,#0x10		
;				BEQ			wait_until_not_busy				

;assign_command	
;				LDR			R1,=SSI0_DR		;Write Command
;				MOV			R0,#0x80		;Set cursor X: 0	
;				STR			R0,[R1]	
;				
;;Check if it is not busy
;wait_until_not_busy1
;				LDR			R1,=SSI0_SR		;Status Register
;				LDR			R0,[R1]
;				AND			R0,#0x10		;BSY flag is obtained.
;				CMP			R0,#0x10		
;				BEQ			wait_until_not_busy1

;assign_command1	
;				LDR			R1,=SSI0_DR		;Write Command
;				MOV			R0,#0x44		;Set cursor Y: 4
;				STR			R0,[R1]		
;				
;;Check if it is not busy
;wait_until_not_busy2
;				LDR			R1,=SSI0_SR		;Status Register
;				LDR			R0,[R1]
;				AND			R0,#0x10		;BSY flag is obtained.
;				CMP			R0,#0x10		
;				BEQ			wait_until_not_busy2


				
;Choose Data Choice for LCD
Data_LCD		
				LDR			R1,=DC_A6_pin	;Choose Data/Command
				LDR			R0,[R1]
				ORR			R0,#0x40		;Choose Command with D6 pin
				STR			R0,[R1]	
				
				
				LDR			R3,=write_address
				LDR			R4,=0x2000073C	;which shows the end of memory of this word "--X--" ;10*6=60
				
check_if_word_finishes				
				CMP			R3,R4
				BNE			Write_distanceX_LCD
				BEQ			exit
				
;This part writes to LCD: "--X--"				
Write_distanceX_LCD										
wait_until_transmit_FIFO_not_full_distanceX
				LDR			R1,=SSI0_SR		;Status Register
				LDR			R0,[R1]
				AND			R0,#0x02		;TNF flag is obtained.
				CMP			R0,#0x02		
				BNE			wait_until_transmit_FIFO_not_full_distanceX ;If TNF=0, then transmit buffer is full
				BEQ			send_data_distanceX	;If TNF=1, then send a new data.

send_data_distanceX	
				LDRB		R0,[R3],#1
				LDR			R1,=SSI0_DR		;Write Data to show
				STR			R0,[R1]
				B			check_if_word_finishes

exit			


				POP			{R0-R12}
				BX			LR
				ENDP
				END