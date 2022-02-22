include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
   print 'Enter 1st Number : '
   
   mov ah,1
   int 21h
   mov bl,al
   sub bl,48
   
   mov dl,10
   mov ah,2
   int 21h
   
   
   mov dl,13
   mov ah,2
   int 21h
   
   print 'Enter 2nd Number : '
   
   mov ah,1
   int 21h
   mov bh,al
   sub bh,48
   
   mov dl,10
   mov ah,2
   int 21h
   
   
   mov dl,13
   mov ah,2
   int 21h
   
   
   cmp bl,bh
   jl Level
        print '1st number is Greater then 2nd Number '
        mov ah,4ch
        int 21h    
    
     Level:
        print '2nd number is Greater then 1st Number '
        mov ah,4ch
        int 21h
    
    
    exit:
   ; mov ah,4ch
   ; int 21h
    main endp
end main