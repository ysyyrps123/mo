32位函数调用（__cdecl 调用约定）

C语言函数
 write(1, "Hello, World!\n", 0xEu);

汇编语言
push    0Eh             ; n           传递第三个参数
push    offset aHelloWorld ; "Hello, World!\n"   第二个参数
push    1               ; fd    第一个参数
call    _write 
add     esp, 10h  			在call返回之后平衡堆栈
