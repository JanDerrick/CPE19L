.model small
.stack
.code
start:

  ;clear screen
  mov ah, 06h
  mov bh, 00h
  mov ch, 0
  mov cl, 0
  mov dh, 24
  mov dl, 79
  int 10h

  ;border
  mov ah, 06h
  mov bh, 0B0h    ;light cyan bg
  mov ch, 5
  mov cl, 10
  mov dh, 19
  mov dl, 69
  int 10h

  ;inside frame
  mov ah, 06h
  mov bh, 10h     ;navy blue bg
  mov ch, 6
  mov cl, 11
  mov dh, 18
  mov dl, 68
  int 10h

  ;J top bar
  mov ah, 06h
  mov bh, 0C0h    ;light red bg
  mov ch, 8
  mov cl, 16
  mov dh, 9
  mov dl, 21
  int 10h

  ;J tip
  mov ah, 06h
  mov bh, 0C0h
  mov ch, 13
  mov cl, 16
  mov dh, 14
  mov dl, 19
  int 10h

  ;J bottom bar
  mov ah, 06h
  mov bh, 0C0h
  mov ch, 15
  mov cl, 16
  mov dh, 16
  mov dl, 21
  int 10h

  ;J and D shared stem
  mov ah, 06h
  mov bh, 0F0h    ;white bg
  mov ch, 8
  mov cl, 22
  mov dh, 16
  mov dl, 25
  int 10h

  ;D top bar
  mov ah, 06h
  mov bh, 0E0h    ;yellow bg
  mov ch, 8
  mov cl, 26
  mov dh, 9
  mov dl, 33
  int 10h

  ;D bottom bar
  mov ah, 06h
  mov bh, 0E0h
  mov ch, 15
  mov cl, 26
  mov dh, 16
  mov dl, 33
  int 10h

  ;D right side
  mov ah, 06h
  mov bh, 0E0h
  mov ch, 10
  mov cl, 32
  mov dh, 14
  mov dl, 35
  int 10h

  ;L stem
  mov ah, 06h
  mov bh, 0A0h    ;light green bg
  mov ch, 8
  mov cl, 38
  mov dh, 16
  mov dl, 41
  int 10h

  ;L bottom bar
  mov ah, 06h
  mov bh, 0A0h
  mov ch, 15
  mov cl, 42
  mov dh, 16
  mov dl, 49
  int 10h

  ;P stem
  mov ah, 06h
  mov bh, 0D0h    ;light magenta bg
  mov ch, 8
  mov cl, 52
  mov dh, 16
  mov dl, 55
  int 10h

  ;P top bar
  mov ah, 06h
  mov bh, 0D0h
  mov ch, 8
  mov cl, 56
  mov dh, 9
  mov dl, 61
  int 10h

  ;P right side
  mov ah, 06h
  mov bh, 0D0h
  mov ch, 10
  mov cl, 60
  mov dh, 11
  mov dl, 63
  int 10h

  ;P middle bar
  mov ah, 06h
  mov bh, 0D0h
  mov ch, 12
  mov cl, 56
  mov dh, 13
  mov dl, 61
  int 10h

  ;put cursor below the frame
  mov ah, 02h
  mov bh, 00h
  mov dh, 22
  mov dl, 0
  int 10h

  mov ah, 4ch
  int 21h

end start