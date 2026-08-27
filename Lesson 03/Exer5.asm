.model small
.stack 100h
.code

start:
  mov ah, 02h
  mov cx, 26

  mov bl, 41h   ; Letter A
  mov dl, 7ah   ; Display Letter z
  mov dh, dl    ; Store Letter z

  display:
    int 21h
    mov dl, bl  ; Display letter A
    int 21h
  
    inc bl
    dec dh

    mov dl, dh

    loop display

  mov ah, 4ch
  int 21h

end start
