; I cheated a bit on this one :)

format ELF executable 3
entry _start

.rodata:
	msg db 'Hello World!', 0xA
	msg_size = $-msg 

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_size
	int 0x80

	mov eax, 1
	xor ebx, ebx
	int 0x80
