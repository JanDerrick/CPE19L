.model small
.stack 100h
.code

start:
  mov ah, 02h
  mov cx, 26

  mov bl, 5ah   ; Letter Z
  mov dl, 61h   ; Display Letter a
  mov dh, dl    ; Store Letter a

  display:
    int 21h
    mov dl, bl  ; Display letter a
    int 21h
    
    mov dl, 0ah ; Line feed
    int 21h
    mov dl, 0dh ; Return Carriage
    int 21h
  
    dec bl
    inc dh

    mov dl, dh

    loop display

  mov ah, 4ch
  int 21h

end start
