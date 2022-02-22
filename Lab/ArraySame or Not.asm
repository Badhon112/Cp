include 'emu8086.inc'
.model small
.stack 100h
.data
 arr1 db 2,5,4,6,8
 arr2 db 2,5,4,6,8
  
.code
main proc
    
   mov ax,@data
   mov ds,ax
    
   
   mov si,offset arr1
   mov di,offset arr2
   mov cx,5
   
   loopx:
   mov al,[si]
   mov bl,[di]
   
   cmp al,bl
   
   jne notsame
   
    inc si
    inc di
    
    loop loopx
    
    print 'Both are Same'
    mov ah,4ch
    int 21h
    
    notsame:
    print 'Not Same'
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main