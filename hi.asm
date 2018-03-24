section .data

msg db "Hola Mundo!!",0xA,0xD
total equ $ - msg
msga db "En Fin te he saludado",0xA,0xD
totala equ $ - msga
; db Define Byte Allocates 1 byte 'a'
; dw Define Word Allotates 2 byte -+ num 
; dd Dfine Doubleword Allotates 4 byte 
; dq Define Quadword Allotates 8 byte big num
; dt Define Ten Byte Allotates 10 byte 

section .text
	global _start
_start:
	mov eax, 4 ; destino, origien, syscall(4) sys_write ;; destino = origen 
	mov ebx, 1 ; = destino origen ;stdont
	mov ecx, msg ; msg pantalla
	mov edx, total ; longitud del mensaje
	int 0x80	; llamada al sistema de interrumpuciones ; syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, msga
	mov edx, totala
	int 0x80
	mov eax, 1 ;(system, exit) sys_exit)
	int 0x80