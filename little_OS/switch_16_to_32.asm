[bits 16]  		    ;  real mode

%include "make_32_GDT.asm" 

switch_to_pmode:

cli                 ;  clear interrupts
lgdt [my_gdt_dtor]  ;  loading gdt

;  set first bit of cr0, denoting protected mode
mov eax, cr0
or eax, 0x1
mov cr0, eax
 
jmp CSEG:init       ;  far jump to clear CPU pipeline

[bits 32]
init:
;  segments
mov ax, DSEG
mov ds, ax
mov es, ax
mov fs, ax
mov gs, ax
mov ss, ax

; stack
mov ebp, 0x90000
mov esp, ebp
