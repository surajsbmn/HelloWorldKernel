global loader	; the entry symbol for ELF
extern kmain	; C code method name

MAGIC_NUMBER equ 0x1BADB002	; define the magic number constant
FLAGS equ 0x0				; multiboot flags
CHECKSUM equ -MAGIC_NUMBER	; calculate the checksum
KERNEL_STACK_SIZE equ 4096	; size of stack in bytes

section .bss				; start of the bss section
align 4						; the code must be 4 byte aligned
kernel_stack:
	resb KERNEL_STACK_SIZE
	
section .text:				; start of the text (code) section
align 4						; the code must be 4 byte aligned
	dd MAGIC_NUMBER			; write the magic number to the machine code,
	dd FLAGS				; the flags,
	dd CHECKSUM				; and the checksum

loader:
	mov esp, kernel_stack + KERNEL_STACK_SIZE	; point esp to the start of the
												; stack (end of memory area)		
	call kmain									; call C code

.loop:
	jmp .loop				; loop forever
