include 'emu8086.inc'
.model small
.stack 100h
.data

.code
main proc
    print 'Enter A Number' 
    
    mov ah,1
    int 21h
    sub al,48
    mov bl,al;
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    ;1st Range
    print 'Now Enter The first number of that Range: '
    
    mov ah,1
    int 21h
    sub al,48
    mov bh,al;
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    ;2nd Range
    print 'Now Enter The last number of that Range: '
    
    mov ah,1
    int 21h
    sub al,48
    mov cl,al;
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    cmp bl,bh
    jge level2 
    
    
    level1:
     print 'Not in Range '
     mov ah,4ch
     int 21h
        
    level2:
    cmp bl,cl;
    jng level3
    jmp level1    
    
    level3:
    print 'The number is in The Range'
    mov ah,4ch
    int 21h
    
    exit:
    
    main endp
end main







