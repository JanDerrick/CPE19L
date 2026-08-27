; Loop Program Line Feed diagonally display

.model small
.stack
.code

start:
  mov ah, 02h

  mov cx, 20

  ulit:
    mov dl, 41h   ; charater A
    int 21h
    mov dl, 20h   ; Space character
    int 21h
    mov dl, 0ah   ; Line Feed
    int 21h

    loop ulit

  mov ah, 4ch
  int 21h

end start