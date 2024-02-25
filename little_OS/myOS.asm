%include "switch_16_to_32.asm"

[bits 32]
    
;VIDEOMEM equ 0xb800
;FORE_BACK   equ 0x13
	
;mov edx, VIDEOMEM
;mov al, 0x40  				   ;  ascii code for @
;mov ah, FORE_BACK 
;mov [edx], ax    			   ;  writing directly to videomem
	
jmp $						   ;  hang
times 512 - 2 - ($-$$) db 0    ;  zeroing everything between
dw 0xaa55                      ;  w - word = 2 bytes 
