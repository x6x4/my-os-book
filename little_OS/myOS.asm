    mov ah, 0x0E
	mov al, 0x40
	mov bl, 0x0D
	int 0x10 
	jmp $
    times 512 - 2 - ($-$$) db 0    ;  zeroing everything between
    dw 0xaa55                      ;  w - word = 2 bytes 
