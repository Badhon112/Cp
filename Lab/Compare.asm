 
  Question : Compare 2 number   


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
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    cmp bl,bh
    
    je level
        print 'Not Equal'
        mov ah,4ch
        int 21h
        
     level:
     print 'Equal'
     mov ah,4ch
     int 21h
    
    
    
    exit:
    main endp
end main