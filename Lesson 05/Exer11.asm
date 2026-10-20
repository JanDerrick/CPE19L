.model small
.stack
.data
  header DB 'Color      Value     Multiplier      Tolerance     Temp Coeff', 13,10,'$'
  val0   DB 'Black        0         x10^0                          250', 13,10,'$'
  val1   DB 'Brown        1         x10^1           +=1%           100', 13,10,'$'
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

  ;clear screen
  mov ah, 06h
  mov bh, 00h
  mov ch, 0  ; Start Row
  mov cl, 0  ; Start Column
  mov dh, 24 ; End Row
  mov dl, 79 ; End Column
  int 10h

  ;header color
  mov ah, 06h
  mov bh, 70h     ;white bg, black fg
  mov ch, 0
  mov cl, 0
  mov dh, 1
  mov dl, 61
  int 10h

  ;val0
  mov ah, 06h
  mov bh, 07h     ;black bg, white fg
  mov ch, 2
  mov cl, 0
  mov dh, 2
  mov dl, 61
  int 10h

  ;val1
  mov ah, 06h
  mov bh, 67h     ;brown bg, white fg
  mov ch, 3
  mov cl, 0
  mov dh, 3
  mov dl, 61
  int 10h

  ;val2
  mov ah, 06h
  mov bh, 47h     ;red bg, white fg
  mov ch, 4
  mov cl, 0
  mov dh, 4
  mov dl, 61
  int 10h

  ;val3
  mov ah, 06h
  mov bh, 0CFh    ;orange (high red) bg, high white fg
  mov ch, 5
  mov cl, 0
  mov dh, 5
  mov dl, 61
  int 10h

  ;val4
  mov ah, 06h
  mov bh, 0E0h    ;yellow bg, black fg
  mov ch, 6
  mov cl, 0
  mov dh, 6
  mov dl, 61
  int 10h

  ;val5
  mov ah, 06h
  mov bh, 27h     ;green bg, white fg
  mov ch, 7
  mov cl, 0
  mov dh, 7
  mov dl, 61
  int 10h

  ;val6
  mov ah, 06h
  mov bh, 17h     ;blue bg, white fg
  mov ch, 8
  mov cl, 0
  mov dh, 8
  mov dl, 61
  int 10h

  ;val7
  mov ah, 06h
  mov bh, 57h     ;violet (magenta) bg, white fg
  mov ch, 9
  mov cl, 0
  mov dh, 9
  mov dl, 61
  int 10h

  ;val8
  mov ah, 06h
  mov bh, 87h     ;grey bg, white fg
  mov ch, 10
  mov cl, 0
  mov dh, 10
  mov dl, 61
  int 10h

  ;val9
  mov ah, 06h
  mov bh, 0F0h    ;white bg, black fg
  mov ch, 11
  mov cl, 0
  mov dh, 11
  mov dl, 61
  int 10h

  ;val10
  mov ah, 06h
  mov bh, 60h     ;gold bg, black fg
  mov ch, 12
  mov cl, 0
  mov dh, 12
  mov dl, 61
  int 10h

  ;val11
  mov ah, 06h
  mov bh, 70h     ;silver bg, black fg
  mov ch, 13
  mov cl, 0
  mov dh, 13
  mov dl, 61
  int 10h

  ;initialize data segment
  mov ax, @data
  mov ds, ax

  ;header text
  mov ah, 02h
  mov bh, 00h
  mov dh, 0
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset header
  int 21h

  ;val0 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 2
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val0
  int 21h

  ;val1 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 3
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val1
  int 21h

  ;val2 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 4
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val2
  int 21h

  ;val3 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 5
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val3
  int 21h

  ;val4 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 6
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val4
  int 21h

  ;val5 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val5
  int 21h

  ;val6 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 8
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val6
  int 21h

  ;val7 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 9
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val7
  int 21h

  ;val8 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 10
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val8
  int 21h

  ;val9 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 11
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val9
  int 21h

  ;val10 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 12
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val10
  int 21h

  ;val11 text
  mov ah, 02h
  mov bh, 00h
  mov dh, 13
  mov dl, 0
  int 10h
  mov ah, 09h
  mov dx, offset val11
  int 21h

  mov ah, 4ch
  int 21h

end start