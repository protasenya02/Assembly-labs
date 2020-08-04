org     100h

        xor     al,al
        xor     bl,bl
        mov     si,0
        mov     al,[string]

element:
        mov     cl,[string+si]
        cmp     cl,al
        jl      minimal
        inc     si
        cmp     si,5
        jbe     element
        jmp     @F


  minimal:
        mov   al,cl
        mov   bx, si
        inc   si
        cmp   bx,6
        jae   @F
        jmp   element

@@:
        mov     dh,bl
        xor     al,al
        xor     bx,bx
        xor     cx,cx
        mov     si,0
        mov     al,[string]

element1:
        mov     cl,[string+si]
        cmp     cl,al
        jg      maximal
        inc     si
        cmp     si,5
        jbe     element1                                  ;dh - minimal
        jmp     @F                                        ;bl - maximal


  maximal:
        mov    al,cl
        mov    bx, si
        inc    si
        cmp    bx,6
        jae    @F
        jmp    element1


@@:
        mov    si,0
        xor    bh,bh
        xor    cx,cx
        mov    cl,dh


vivod:


        cmp    si,cx                                  ;cx min
        ja     @F                                     ;bx max
        mov    al,[string+si]
        jmp    output
@@:
        cmp    bx,si
        ja     make0
        mov    al,[string+si]
        jmp    output


make0:
        mov    al,0

output:
        cmp    al,0
        jl     minus
        jmp    vivod2

minus:

        mov    ah, 02h
        mov    dl, 45
        int    21h

        mov    al,[string+si]
        neg    al


vivod2:
        mov    ah, 02h
        add    al, 30h
        mov    dl,al
        int    21h

        inc    si
        cmp    si,5
        ja     @F
        jmp    vivod


@@:
        mov    ah, 08h
        int    21h
        ret


string db 2,3,4,6,9,8