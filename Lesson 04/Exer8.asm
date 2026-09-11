.model small
.stack
.data

  full_name DB 'Jan Derrick L. Pamplona', 13, 10, '$'
  program DB 'Computer Engineering', 13, 10, '$'

.code

start:

  mov ax, @data
  mov ds, ax

  mov ah, 09h
  mov dx, offset full_name
  int 21h

  mov ah, 09h
  mov dx, offset program
  int 21h

  mov ah, 4ch
  int 21h

end start