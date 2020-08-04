org 100h

        mov ah, 09h
        mov dx, strA
        int 21h

        mov ah, 09h
        mov dx, NewLine
        int 21h


        mov di, strA
        mov cx, 7


LoopSearch:
        mov al,'b'
        repne scasb
        cmp cx,0
        je Exit

        mov bx, cx
        sub bx, 7
        neg bx

        mov ah, 02h
        add bl, '0'
        mov dl, bl
        int 21h


        jmp     LoopSearch


Exit:
        mov ax, 0c08h
        int 21h
        ret



strA db 'abababa$'
NewLine db 10,13, '$'