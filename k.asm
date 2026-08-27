.model small
.stack
.code

start:

  mov ah, 02h

  mov dl, 41h
  mov dl, 42h
  int 21h

  mov ah, 4ch
  int 21h

end start