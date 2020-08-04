org     100h

        mov     ah, 09h
        mov     dx, stringA
        int     21h

        mov     ah, 09h
        mov     dx, newLine
        int     21h

        mov     ah, 09h
        mov     dx, stringB
        int     21h

        mov     ah, 09h
        mov     dx, newLine
        int     21h


        mov     si, stringA
        mov     di, stringB
        mov     cx,7




loop1:
       repne cmpsb
       cmp   cx,0
       je    outputNo

      mov    ah, 09h
      mov    dx, StrYes
      int    21h

      jmp       @F

outputNo:
        mov     ah, 09h
        mov     dx, StrNo
        int     21h

@@:
        mov ah, 08h
        int 21h
        ret

newLine db 10,13,'$'

stringA db 'ssafafasff$'
stringB db 'aaas$'

StrNo db 'No$'
StrYes db 'Yes$'