.686p
.mmx
.model flat,stdcall
option casemap:none

include windows.inc
include kernel32.inc
include user32.inc
include ntdll.inc
include masm32.inc
include shell32.inc
includelib masm32.lib
includelib kernel32.lib
includelib user32.lib
includelib ntdll.lib
includelib shell32.lib

.data
what_DA_DOG_DOIN 	db "open",0
where_HE_GO 		db "https://www.youtube.com/watch?v=dQw4w9WgXcQ",0

you_WINRAR			db	"You're WINRAR!",0
a_WINRAR_IS_YOU		db	"A WINRAR IS YOU.",0


.data?

.code
start:

invoke MessageBox,NULL,addr a_WINRAR_IS_YOU,addr you_WINRAR,MB_OK

invoke ShellExecute,NULL,addr what_DA_DOG_DOIN,addr where_HE_GO,NULL,NULL,SW_MINIMIZE

invoke ExitProcess,0
end start