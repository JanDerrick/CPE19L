.model small
.stack
.data
  header DB 'Color      Value     Multiplier      Tolerance     Temp Coeff', 13,10,'$'
  val0   DB 'Black        0         x10^0                          250', 13,10,'$'
  val1   DB 'Brown        1         x10^0           +=1%           100', 13,10,'$'
  val2   DB 'Red          2         x10^2           +=2%           50', 13,10,'$'
  val3   DB 'Orange       3         x10^3           +=3%           15', 13,10,'$'
  val4   DB 'Yellow       4         x10^4           +=4%           25', 13,10,'$'
  val5   DB 'Green        5         x10^5           +=0.5%         20', 13,10,'$'
  val6   DB 'Blue         6         x10^6           +=0.25%        10', 13,10,'$'
  val7   DB 'Violet       7         x10^7           +=0.1%         5', 13,10,'$'
  val8   DB 'Grey         8         x10^8           +=0.05%        1', 13,10,'$'
  val9   DB 'White        9         x10^9                           ', 13,10,'$'
  val10  DB 'Gold         -         x10^-1          +=5%            ', 13,10,'$'
  val11  DB 'Silver       -         x10^-2          +=10%           ', 13,10,'$'

.code
start:
  mov ah, 06h
  mov bh, 00h
  mov ch, 0  ; Start Row
  mov cl, 0  ; Start Column
  mov dh, 30 ; End Row
  mov dl, 80 ; End Column
  int 10h

  ;Guide
  mov ah, 06h	
	mov bh, 70h 	
	mov ch, 0		
	mov cl, 0 	
	mov dh, 25	
	mov dl, 61
	int 10h 		

  ;header color
  mov ah, 06h	
	mov bh, 70h 	
	mov ch, 0		
	mov cl, 0 	
	mov dh, 1	
	mov dl, 61	
	int 10h 	

  ;val0 
  mov ah, 06h	
	mov bh, 07h 	;black bg, white fg
	mov ch, 2		
	mov cl, 0 	
	mov dh, 3	
	mov dl, 61	
	int 10h 

  ;val2
  mov ah, 06h	
	mov bh, 67h 	;brown bg, white fg
	mov ch, 4		
	mov cl, 0 	
	mov dh, 5	
	mov dl, 61	
	int 10h 

  ;val3
  mov ah, 06h	
	mov bh, 47h 	;red bg, white fg
	mov ch, 6		
	mov cl, 0 	
	mov dh, 7	
	mov dl, 61	
	int 10h 

  ;val4
  mov ah, 06h	
	mov bh, 67h 	;orange bg, white fg
	mov ch, 8		
	mov cl, 0 	
	mov dh, 9	
	mov dl, 61	
	int 10h 

  mov ah,4ch
	int 21h

end start