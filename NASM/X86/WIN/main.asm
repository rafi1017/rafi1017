; helloworld.asm
;
; This is a Win32 console program that writes "Hello World"
; on a single line and then exits.
;
; To assemble to .obj: nasm -f win32 helloworld.asm
; To compile to .exe:  gcc helloworld.obj -o helloworld.exe
; ------------------------------------------------------------------

        global    _main                ; declare main() method
        extern    _printf              ; link to external library

        segment  .data
        message: db   'Hello world', 0xA, 0  ; text message
        message2: db   'Hello2', 0xA, 0  ; text message

        ; code is put in the .text section
        section .text
_func:
        pop eax
		push ebp
		mov ebp, esp

        mov eax, [message2] 


		mov esp, ebp
		pop ebp
		push eax
		ret 	
		
_main:                            ; the entry point! void main()
        push    message           ; save message to the stack
		call 	_func 			  ; Funkció!
        call    _printf           ; display the first value on the stack
        add     esp, 4            ; clear the stack
        ret                       ; return