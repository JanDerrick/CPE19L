.model small
.stack
.data

  head  DB 'My Favorite TV Shows', 13, 10, '$'
  show1 DB '  1. Our Beloved Summer', 13, 10, '$'
  show2 DB '  2. My Bias, My Boss', 13, 10, '$'
  show3 DB '  3. Stranger Things', 13, 10, '$'
  show4 DB '  4. Monster', 13, 10, '$'
  show5 DB '  5. Demon Slayer', 13, 10, 10, '$'

.code

start:

  mov ax, @data
  mov ds, ax

  mov ah, 09h
  mov dx, offset head
  int 21h

  mov ah, 09h
  mov dx, offset show1
  int 21h

  mov ah, 09h
  mov dx, offset show2
  int 21h

  mov ah, 09h
  mov dx, offset show3
  int 21h

  mov ah, 09h
  mov dx, offset show4
  int 21h

  mov ah, 09h
  mov dx, offset show5
  int 21h

end start
