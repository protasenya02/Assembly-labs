org 100h
Start:

        mov cx, 9
        mov di, String
        mov al, 'a'

loop1:
                                                ;Find AL, starting at ES:[(E)DI].
        REPNE SCASB                             ;scasb -сравнивает al и di
        cmp cx, 0                               ;repne - while cx not zero
        jz endLoop
        dec di
        add [di], byte 2
        inc di
        jmp loop1

endLoop:
        mov ah, 09h
        mov dx, String
        int 21h

        mov ah, 08h
        int 21h
        ret


String: db "sarabara$"