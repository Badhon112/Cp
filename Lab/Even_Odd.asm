include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    print 'Enter a number : '
    mov ah,1
    int 21h
    
    mov bl,2;
    div bl;
    mov bx,ax;
    
    mov dl,10
    mov ah,02h
    int 21h
    
    mov dl,13
    mov ah,02h
    int 21h
    
    cmp bh,0
    je level
      print 'Odd'
      mov ah,4ch
      int 21h
    
    
    level:
    print 'Even '
    mov ah,4ch
    int 21h
    
    
    
    main endp
end main