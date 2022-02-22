include 'emu8086.inc'
.stack 100h
.model small

.data
 arr db 4 dup(?)

.code
    main proc
    
     mov ax,@data
     mov ds,ax;
     
     
     mov cx,4
     mov si,offset arr
     print 'Enter 4 Value'
      
     loop1:
        mov ah,1
        int 21h
        
        mov [si],al
        inc si
     loop loop1
    
    print 'Value Is '  
      
     mov si,offset arr
     mov cx,4
     loop2:
     mov dl,[si]
     mov ah,02h
     int 21h
     
     mov dl,32
     mov ah,2
     int 21h
     inc si
     loop loop2
     
    
    main endp

end main