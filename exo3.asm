
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov     ax, 0b800h
mov     ds, ax


mov [02h], 'H'

mov [04h], 'i'

mov [06h], ','

mov [08h], 'L'

mov [0ah], 'e'

mov [0ch], 'o'

mov [0eh], '!'



mov ah, 0
int 16h

ret




