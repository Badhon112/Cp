include 'emu8086.inc'
.model small
.stack 100h
.data
 array1 db 1,2,3,4
 array2 db 1,1,3,4
 
 .code
 main proc
   
   mov ax,@data
   mov ds,ax
   
   mov si,offset array1
   mov di, offset array2
   
   mov cx,4
   
   loopx:
    
    mov al,[si]
    mov bl,[di]
    cmp al,bl
    jne Notsame
        inc si
        inc di
        
      loop loopx
      print 'Same'
      mov ah,4ch
      int 21h  
      
      
      Notsame:
      print 'Not Same'
      mov ah,4ch
      int 21h
    
    
    main endp
 end main