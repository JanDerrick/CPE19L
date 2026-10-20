.model small
.stack
.data

school db 'University of Batangas - Lipa Campus','$'
address db 'Gov. Feliciano Leviste Road, Marawoy, Lipa City, Batangas','$'
dept db 'Computer Engineering Department','$'
title1 db 'Student Record','$'

name1 db 'Student Name       : $'
num1 db 'Student Number     : $'
year1 db 'Year Level         : $'
gender1 db 'Gender             : $'
birth1 db 'Birthdate          : $'
age1 db 'Age                : $'
program db 'Programmed by: Jan Derrick L. Pamplona','$'

n1 db 30,0,30 dup('$')
n2 db 15,0,15 dup('$')
n3 db 15,0,15 dup('$')
n4 db 15,0,15 dup('$')
n5 db 25,0,25 dup('$')
n6 db 10,0,10 dup('$')

.code
start:
  mov ax,@data
  mov ds,ax

  ; Clear screen
  mov ah,06h
  mov al,00h
  mov bh,07h
  mov cx,0000h
  mov dx,184fh
  int 10h

  ; School
  mov ah,02h
  mov bh,00h
  mov dh,2
  mov dl,22
  int 10h
  mov ah,09h
  mov dx,offset school
  int 21h

  ; Address
  mov ah,02h
  mov bh,00h
  mov dh,3
  mov dl,7
  int 10h
  mov ah,09h
  mov dx,offset address
  int 21h

  ; Department
  mov ah,02h
  mov bh,00h
  mov dh,5
  mov dl,24
  int 10h
  mov ah,09h
  mov dx,offset dept
  int 21h

  ; Student Record
  mov ah,02h
  mov bh,00h
  mov dh,6
  mov dl,29
  int 10h
  mov ah,09h
  mov dx,offset title1
  int 21h

  ; Student Name
  mov ah,02h
  mov bh,00h
  mov dh,8
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset name1
  int 21h
  mov ah,0ah
  mov dx,offset n1
  int 21h

  ; Student Number
  mov ah,02h
  mov bh,00h
  mov dh,9
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset num1
  int 21h
  mov ah,0ah
  mov dx,offset n2
  int 21h

  ; Year Level
  mov ah,02h
  mov bh,00h
  mov dh,10
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset year1
  int 21h
  mov ah,0ah
  mov dx,offset n3
  int 21h

  ; Gender
  mov ah,02h
  mov bh,00h
  mov dh,11
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset gender1
  int 21h
  mov ah,0ah
  mov dx,offset n4
  int 21h

  ; Birthdate
  mov ah,02h
  mov bh,00h
  mov dh,12
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset birth1
  int 21h
  mov ah,0ah
  mov dx,offset n5
  int 21h

  ; Age
  mov ah,02h
  mov bh,00h
  mov dh,13
  mov dl,12
  int 10h
  mov ah,09h
  mov dx,offset age1
  int 21h
  mov ah,0ah
  mov dx,offset n6
  int 21h

  ; Programmed by
  mov ah,02h
  mov bh,00h
  mov dh,16
  mov dl,20
  int 10h
  mov ah,09h
  mov dx,offset program
  int 21h

  mov ah,01h
  int 21h

  mov ah,4ch
  int 21h

end start