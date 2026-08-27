;Loop Program with Carriage Return

.model small
.stack
.code

start:

  mov ah, 02h

  mov cx, 20
  ulit:
    mov dl, 41h
    int 21h
    mov dl, 0ah   ;line feed
    int 21h
    mov dl, 0dh   ;carriage return
    int 21h

    loop ulit

  mov ah, 4ch
  int 21h

end start