.model small
.stack 100h
.code

start:
  mov ah, 02h

  ; Prints "================="
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh 
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|               |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h 
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|               |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h 
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|  Jan Derrick  |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h

  mov dl, 4ah
  int 21h
  mov dl, 61h
  int 21h
  mov dl, 6eh
  int 21h
  mov dl, 20h
  int 21h

  mov dl, 44h
  int 21h
  mov dl, 65h
  int 21h
  mov dl, 72h
  int 21h
  mov dl, 72h
  int 21h
  mov dl, 69h
  int 21h
  mov dl, 63h
  int 21h
  mov dl, 6bh
  int 21h

  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|               |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h 
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|   Pamplona    |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h

  mov dl, 50h
  int 21h
  mov dl, 61h
  int 21h
  mov dl, 6dh
  int 21h
  mov dl, 70h
  int 21h
  mov dl, 6ch
  int 21h
  mov dl, 6fh
  int 21h
  mov dl, 6eh
  int 21h
  mov dl, 61h
  int 21h

  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|               |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h 
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "|               |"
  mov dl, 7ch
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h 
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 20h
  int 21h
  mov dl, 7ch
  int 21h

  ; New Line
  mov dl, 0Ah
  int 21h

  ; Prints "================="
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h
  mov dl, 3dh
  int 21h


  mov ah, 4ch
  int 21h

end start
