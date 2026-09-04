.model small
.stack 100h
.code

start:
  mov ah, 02h
  mov cx, 26

  mov bl, 7ah   ; Letter z
  mov dl, 41h   ; Display Letter A
  mov dh, dl    ; Store Letter A

  display_text:
    int 21h
    mov dl, bl  ; Display letter z
    int 21h
  
    mov dl, 0ah ; Line feed
    int 21h
  
    dec bl
    inc dh

    mov dl, dh

    loop display_text

  mov ah, 4ch
  int 21h

end start
