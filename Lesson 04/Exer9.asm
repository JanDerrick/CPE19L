.model small
.stack
.data

  h_border      DB '******************************************************', 13, 10, '$'
  space         DB '*                                                    *', 13, 10, '$'
  full_name     DB '*     LOGO        ENGR. JAN DERRICK L. PAMPLONA      *', 13, 10, '$'
  position      DB '*                       COMPUTER ENGINEER            *', 13, 10, '$'
  company_name  DB '*  COMPANY NAME                                      *', 13, 10, '$'
  office_no     DB '*                     OFFICE No.                     *', 13, 10, '$'
  fax_no        DB '*                     FAX No.                        *', 13, 10, '$'
  company_web   DB '*  COMPANY WEBSITE                                   *', 13, 10, '$'
  res_no        DB '*                     RES No.                        *', 13, 10, '$'
  mobile_no     DB '*                     +63 966 781 2018               *', 13, 10, '$'
  email_addr    DB '*                     pamplonajanderrick@gmail.com   *', 13, 10, '$'

.code

start:

  mov ax, @data
  mov ds, ax

  mov ah, 09h
  mov dx, offset h_border
  int 21h

  mov ah, 09h
  mov dx, offset space
  int 21h

  mov ah, 09h
  mov dx, offset full_name
  int 21h

  mov ah, 09h
  mov dx, offset position
  int 21h

  mov ah, 09h
  mov dx, offset space
  int 21h

  mov ah, 09h
  mov dx, offset company_name
  int 21h

  mov ah, 09h
  mov dx, offset office_no
  int 21h

  mov ah, 09h
  mov dx, offset fax_no
  int 21h

  mov ah, 09h
  mov dx, offset company_web
  int 21h

  mov ah, 09h
  mov dx, offset res_no
  int 21h

  mov ah, 09h
  mov dx, offset mobile_no
  int 21h

  mov ah, 09h
  mov dx, offset email_addr
  int 21h

  mov ah, 09h
  mov dx, offset space
  int 21h

  mov ah, 09h
  mov dx, offset h_border
  int 21h

  mov ah, 4ch
  int 21h

end start