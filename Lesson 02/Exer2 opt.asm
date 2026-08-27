.model small
.stack 100h

.data
    ; String declarations ended with '$' (ASCII 24h) required by DOS Function 09h.
    ; 0Dh, 0Ah represents Carriage Return + Line Feed (Standard DOS Newline).
    msg_name      db "Name: Jan Derrick L. Pamplona", 0Dh, 0Ah, '$'
    msg_dob       db "Birth Date: November 08, 2004", 0Dh, 0Ah, '$'
    msg_email     db "e-mail address: 2320584@ub.edu.ph", 0Dh, 0Ah, '$'
    msg_address   db "Address: Janopol Oriental, Tanauan City, Batangas", 0Dh, 0Ah, '$'
    msg_province  db "Province: Batangas", 0Dh, 0Ah, '$'
    msg_contact   db "Contact Number: 0966-781-2018", 0Dh, 0Ah, '$'
    msg_guardian  db "Guardian's Name: Juanita L. Pamplona", 0Dh, 0Ah, '$'
    msg_job       db "Occupation: Teacher", 0Dh, 0Ah, '$'

.code
main proc
    ; Initialize Data Segment (DS register must point to .data)
    mov ax, @data
    mov ds, ax

    ; Set AH register once for DOS String Output Function
    mov ah, 09h

    ; Load offset of each string into DX and call interrupt 21h
    lea dx, msg_name
    int 21h

    lea dx, msg_dob
    int 21h

    lea dx, msg_email
    int 21h

    lea dx, msg_address
    int 21h

    lea dx, msg_province
    int 21h

    lea dx, msg_contact
    int 21h

    lea dx, msg_guardian
    int 21h

    lea dx, msg_job
    int 21h

    ; Terminate Program (Function 4Ch)
    mov ah, 4Ch
    int 21h
main endp
end main