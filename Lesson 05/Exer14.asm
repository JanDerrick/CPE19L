.model small
.stack
.data
  tm DB '05:39 $'
  nm DB 'NOKIA $'
  v  DB 'X$'
  o  DB 'O$'
  h  DB '#$'
.code

start:
  mov ax,@data
  mov ds,ax

  ;clear screen
  mov ah,06h
  mov al,0
  mov bh,07h
  mov ch,0
  mov cl,0
  mov dh,24
  mov dl,79
  int 10h

  ;antenna
  mov ah,06h
  mov al,0
  mov bh,70h
  mov ch,1
  mov cl,30
  mov dh,3
  mov dl,33
  int 10h

  ;body
  mov ah,06h
  mov al,0
  mov bh,40h
  mov ch,4
  mov cl,28
  mov dh,23
  mov dl,51
  int 10h

  ;lcd
  mov ah,06h
  mov al,0
  mov bh,70h
  mov ch,6
  mov cl,31
  mov dh,12
  mov dl,48
  int 10h

  ;keys
  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,15
  mov cl,32
  mov dh,16
  mov dl,35
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,15
  mov cl,38
  mov dh,16
  mov dl,41
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,15
  mov cl,44
  mov dh,16
  mov dl,47
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,18
  mov cl,32
  mov dh,19
  mov dl,35
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,18
  mov cl,38
  mov dh,19
  mov dl,41
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,18
  mov cl,44
  mov dh,19
  mov dl,47
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,21
  mov cl,32
  mov dh,22
  mov dl,35
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,21
  mov cl,38
  mov dh,22
  mov dl,41
  int 10h

  mov ah,06h
  mov al,0
  mov bh,60h
  mov ch,21
  mov cl,44
  mov dh,22
  mov dl,47
  int 10h

  ;time
  mov ah,02h
  mov bh,00h
  mov dh,7
  mov dl,38
  int 10h
  mov ah,09h
  mov dx,offset tm
  int 21h

  ;network name
  mov ah,02h
  mov bh,00h
  mov dh,8
  mov dl,38
  int 10h
  mov ah,09h
  mov dx,offset nm
  int 21h

  ;signal bars
  mov bl,7
  mov cx,4
  sig:
  mov ah,02h
  mov bh,00h
  mov dh,bl
  mov dl,32
  int 10h
  mov ah,09h
  mov dx,offset v
  int 21h
  inc bl
  loop sig

  mov ah,02h
  mov bh,00h
  mov dh,11
  mov dl,32
  int 10h
  mov ah,09h
  mov dx,offset o
  int 21h

  ;battery bars
  mov bl,7
  mov cx,5

  bat:
    mov ah,02h
    mov bh,00h
    mov dh,bl
    mov dl,46
    int 10h
    mov ah,09h
    mov dx,offset h
    int 21h
    inc bl
    loop bat

  mov ah,07h
  int 21h

  mov ah,02h
  mov bh,00h
  mov dh,24
  mov dl,0
  int 10h

  mov ah,4ch
  int 21h

end start