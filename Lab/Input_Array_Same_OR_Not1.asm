include 'emu8086.inc'
.model small
.stack 100h
.data 
array1 db 5 dup(?)
array2 db 5 dup(?)
.code 
main proc
    
    mov ax,@data
    mov ds,ax;
    
    print 'Enter First Array : '
    
    mov si,offset array1
    mov di,offset array2
    mov cx,5
    
    loop1:
         mov ah,1
         int 21h
         mov [si],al
         inc si
         
     loop loop1    
    
      
     mov dl,10
     mov ah,2;
     int 21h
     
     mov dl,13
     mov ah,2
     int 21h
    
    print 'Enter Secound Array : '
     
    mov di,offset array2
    mov cx,5
    
    
     loop2:
         mov ah,1
         int 21h
         mov [di],al
         inc di
         
     loop loop2 
    
     mov dl,10
     mov ah,2;
     int 21h
     
     mov dl,13
     mov ah,2
     int 21h
             
    mov si,offset array1
    mov di,offset array2
    mov cx,5        
     
     loopSame:
     
        mov al,[si]
        mov dl,[di]
        
        cmp al,dl
        
        jne NotSame
        
            inc si;
            inc di
            
          loop loopSame  
          print 'Same'
          mov ah,4ch
          int 21h
         
         
         NotSame:
         print 'Not Same'
         mov ah,4ch
         int 21h
    
    
    main endp
end main