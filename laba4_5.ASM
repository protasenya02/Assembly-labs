org 100h
        mov     di,str1
        mov     cx,7
        mov     al,'a'

        repne scasb
        cmp     cx,0
        je      @F

        mov     dx,cx
        sub     dx,7
        neg     dx

        mov     cx,7
        mov     al,'b'
@@:
        repne scasb
        cmp     cx,0
        je      @F

        mov     bx,cx
        sub     bx,7
        neg     bx

        sub     bx,dx
        xor     dx,dx

        mov     ah,02h
        add     bx,'0'
        mov     dl,bl
        int     21h

@@:
        mov ax, 0c08h
        int 21h
        ret

str1 db 'afsdddb$'


