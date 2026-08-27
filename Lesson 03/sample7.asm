; Loop Program Combinations

.model small
.stack
.code

start:
  mov ah, 02h
  mov cx, 10
  mov bl, 39h   ; ASCII character for number 9 stored in register bl
  mov dl, 41h   ; display letter A
  mov dh, dl    ; store letter A to register dh

  back:
    int 21h
    mov dl, bl  ; display character numer 9
    int 21h
    mov dl, 0ah ; line feed
    int 21h
    mov dl, 0dh ; carriage return
    int 21h
    inc dh      ; increment dh from A to J as the Loop progresses
    dec bl      ; decrement from 9 to 0 as the Loop progresses
    mov dl, dh

    loop back

  mov ah, 4ch
  int 21h

end start 