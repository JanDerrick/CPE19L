.model small
.stack
.code
start:

  ;clear screen
  mov ah,06h
  mov al,0
  mov bh,07h
  mov ch,0
  mov cl,0
  mov dh,24
  mov dl,79
  int 10h

  ;white board
  mov ah,06h
  mov al,0
  mov bh,70h
  mov ch,0
  mov cl,16
  mov dh,23
  mov dl,63
  int 10h

  ;blue squares
  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,0
  mov cl,22
  mov dh,2
  mov dl,27
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,0
  mov cl,34
  mov dh,2
  mov dl,39
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,0
  mov cl,46
  mov dh,2
  mov dl,51
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,0
  mov cl,58
  mov dh,2
  mov dl,63
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,3
  mov cl,16
  mov dh,5
  mov dl,21
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,3
  mov cl,28
  mov dh,5
  mov dl,33
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,3
  mov cl,40
  mov dh,5
  mov dl,45
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,3
  mov cl,52
  mov dh,5
  mov dl,57
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,6
  mov cl,22
  mov dh,8
  mov dl,27
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,6
  mov cl,34
  mov dh,8
  mov dl,39
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,6
  mov cl,46
  mov dh,8
  mov dl,51
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,6
  mov cl,58
  mov dh,8
  mov dl,63
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,9
  mov cl,16
  mov dh,11
  mov dl,21
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,9
  mov cl,28
  mov dh,11
  mov dl,33
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,9
  mov cl,40
  mov dh,11
  mov dl,45
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,9
  mov cl,52
  mov dh,11
  mov dl,57
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,12
  mov cl,22
  mov dh,14
  mov dl,27
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,12
  mov cl,34
  mov dh,14
  mov dl,39
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,12
  mov cl,46
  mov dh,14
  mov dl,51
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,12
  mov cl,58
  mov dh,14
  mov dl,63
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,15
  mov cl,16
  mov dh,17
  mov dl,21
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,15
  mov cl,28
  mov dh,17
  mov dl,33
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,15
  mov cl,40
  mov dh,17
  mov dl,45
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,15
  mov cl,52
  mov dh,17
  mov dl,57
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,18
  mov cl,22
  mov dh,20
  mov dl,27
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,18
  mov cl,34
  mov dh,20
  mov dl,39
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,18
  mov cl,46
  mov dh,20
  mov dl,51
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,18
  mov cl,58
  mov dh,20
  mov dl,63
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,21
  mov cl,16
  mov dh,23
  mov dl,21
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,21
  mov cl,28
  mov dh,23
  mov dl,33
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,21
  mov cl,40
  mov dh,23
  mov dl,45
  int 10h

  mov ah,06h
  mov al,0
  mov bh,10h
  mov ch,21
  mov cl,52
  mov dh,23
  mov dl,57
  int 10h

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