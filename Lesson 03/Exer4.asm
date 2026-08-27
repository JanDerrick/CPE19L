.model small
.stack 100h
.code

start:
  mov ah, 02h
  mov cx, 26

  mov bl, 61h   ; Letter a
  mov dl, 41h   ; Display Letter A
  mov dh, dl    ; Store Letter A

  display:
    int 21h
    mov dl, bl  ; Display letter a
    int 21h
  
    inc bl
    inc dh

    mov dl, dh

    loop display

  mov ah, 4ch
  int 21h

end start
