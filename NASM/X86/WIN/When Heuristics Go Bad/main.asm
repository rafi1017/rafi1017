        global    _main                
        extern    _printf             

        segment  .data
        message: db   'Hello world', 0xA, 0  
        message2: db   'Hello2', 0xA, 0 

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
		
_main:                           
        push    message          
		call 	_func 			  
        call    _printf           
        add     esp, 4           
        ret                     
