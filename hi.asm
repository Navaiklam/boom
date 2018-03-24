section .data
msg db "Hola Mundo!!",0xA,0xD
len equ $ - msg
;; db Define Byte Allocates 1 byte 'a'
;; dw Define Word Allotates 2 byte -+ num 
;; dd Dfine Doubleword Allotates 4 byte 
;; dq Define Quadword Allotates 8 byte big num
;; dt Define Ten Byte Allotates 10 byte 

section .text
	global _start
_start:
	mov eax, 4 ;; destino, origien, syscall(4) sys_write ;; destino = origen 
	mov ebx, 1 ;; = destino origen ;stdont
	mov ecx, msg ;; msg pantalla
	mov edx, len ;; longitud del mensaje
	int 0x80	;; llamada al sistema de interrumpuciones ; syscall
	mov eax, 1 ;(system, exit) sys_exit)
	int 0x80

