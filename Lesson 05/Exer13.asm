.model small
.stack
.data
  t1 DB 'GMA$'
  t2 DB 'NETWORK$'
  t3 DB 'KAPUSO$'
  t4 DB 'CHANNEL 7$'
  t5 DB 'MANILA$'
  t6 DB 'PHILIPPINES$'
  t7 DB 'TEST CARD$'
  t8 DB 'GMA NETWORK$'
  t9 DB 'WATCH GMA 7$'

.code
start:
  ;disable blink (bit 7 = bright background)
  mov ax, 1003h
  mov bl, 0
  int 10h

  ;clear screen (al = 0), black bg, white fg
  mov ax, 0600h
  mov bh, 07h
  mov ch, 0
  mov cl, 0
  mov dh, 24
  mov dl, 79
  int 10h

  ;bar 1 grey
  mov ah, 06h
  mov bh, 70h
  mov ch, 0
  mov cl, 1
  mov dh, 15
  mov dl, 11
  int 10h

  ;bar 2 yellow
  mov ah, 06h
  mov bh, 0E0h
  mov ch, 0
  mov cl, 12
  mov dh, 15
  mov dl, 22
  int 10h

  ;bar 3 cyan
  mov ah, 06h
  mov bh, 30h
  mov ch, 0
  mov cl, 23
  mov dh, 15
  mov dl, 33
  int 10h

  ;bar 4 green
  mov ah, 06h
  mov bh, 20h
  mov ch, 0
  mov cl, 34
  mov dh, 15
  mov dl, 44
  int 10h

  ;bar 5 magenta
  mov ah, 06h
  mov bh, 5Fh
  mov ch, 0
  mov cl, 45
  mov dh, 15
  mov dl, 55
  int 10h

  ;bar 6 red
  mov ah, 06h
  mov bh, 4Fh
  mov ch, 0
  mov cl, 56
  mov dh, 15
  mov dl, 66
  int 10h

  ;bar 7 blue
  mov ah, 06h
  mov bh, 1Fh
  mov ch, 0
  mov cl, 67
  mov dh, 15
  mov dl, 77
  int 10h

  ;middle strip blue (black bars = background)
  mov ah, 06h
  mov bh, 10h
  mov ch, 16
  mov cl, 1
  mov dh, 17
  mov dl, 11
  int 10h

  ;middle strip magenta
  mov ah, 06h
  mov bh, 50h
  mov ch, 16
  mov cl, 23
  mov dh, 17
  mov dl, 33
  int 10h

  ;middle strip cyan
  mov ah, 06h
  mov bh, 30h
  mov ch, 16
  mov cl, 45
  mov dh, 17
  mov dl, 55
  int 10h

  ;middle strip grey
  mov ah, 06h
  mov bh, 70h
  mov ch, 16
  mov cl, 67
  mov dh, 17
  mov dl, 77
  int 10h

  ;bottom -I (dark blue)
  mov ah, 06h
  mov bh, 10h
  mov ch, 18
  mov cl, 1
  mov dh, 23
  mov dl, 14
  int 10h

  ;bottom white
  mov ah, 06h
  mov bh, 0F0h
  mov ch, 18
  mov cl, 15
  mov dh, 23
  mov dl, 28
  int 10h

  ;bottom +Q (purple)
  mov ah, 06h
  mov bh, 50h
  mov ch, 18
  mov cl, 29
  mov dh, 23
  mov dl, 42
  int 10h

  ;bottom pluge (dark grey, rest is black)
  mov ah, 06h
  mov bh, 80h
  mov ch, 18
  mov cl, 63
  mov dh, 23
  mov dl, 69
  int 10h

  ;initialize data segment
  mov ax, @data
  mov ds, ax

  ;t1 at 7,5
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 5
  int 10h
  mov ah, 09h
  mov dx, offset t1
  int 21h

  ;t2 at 7,14
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 14
  int 10h
  mov ah, 09h
  mov dx, offset t2
  int 21h

  ;t3 at 7,25
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 25
  int 10h
  mov ah, 09h
  mov dx, offset t3
  int 21h

  ;t4 at 7,35
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 35
  int 10h
  mov ah, 09h
  mov dx, offset t4
  int 21h

  ;t5 at 7,47
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 47
  int 10h
  mov ah, 09h
  mov dx, offset t5
  int 21h

  ;t6 at 7,56
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 56
  int 10h
  mov ah, 09h
  mov dx, offset t6
  int 21h

  ;t7 at 7,68
  mov ah, 02h
  mov bh, 00h
  mov dh, 7
  mov dl, 68
  int 10h
  mov ah, 09h
  mov dx, offset t7
  int 21h

  ;t8 at 20,16
  mov ah, 02h
  mov bh, 00h
  mov dh, 20
  mov dl, 16
  int 10h
  mov ah, 09h
  mov dx, offset t8
  int 21h

  ;t9 at 20,46
  mov ah, 02h
  mov bh, 00h
  mov dh, 20
  mov dl, 46
  int 10h
  mov ah, 09h
  mov dx, offset t9
  int 21h

  ;cursor below the bars
  mov ah, 02h
  mov bh, 00h
  mov dh, 24
  mov dl, 0
  int 10h

  mov ah, 4ch
  int 21h

end start