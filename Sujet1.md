# Sujet 1 : Ecrire de l'assembleur

## Exo 1

J'ai pas réussi à le mettre en forme sur emu8086 mais ça ressemble à un truc comme ça : 

`((NOT A) AND B) OR (A AND (NOT B))`

## Exo 3

Le code(ou sur le git) : 

```
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
```

## Exo 4

J'ai réussi à afficher les chiffres de 1 à 9 mais pas le 10.

Le code(ou sur le git) : 

```
org 100h

MOV CX, 9

MOV BL, 49 
MOV AH, 2 


LP1: 
    MOV DL, BL     
    INT 21H  

    MOV DL, 10     
    INT 21H 
    MOV DL, 13
    INT 21H  

    INC BL      
    DEC CX      

JNZ LP1      
                
INT 21H 

ret
```