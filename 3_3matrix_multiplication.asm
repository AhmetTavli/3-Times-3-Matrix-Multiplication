
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov bh ,2h
mov ah, 2h
mov dl, 10 
int 21h
mov dl, 10 
int 21h  

mov dx , offset msg1
mov ah , 9
int 21h
jmp get_dgt ; this will be our first input
msg1 db 0dh , 0ah , 'enter the matrix 1st element $'

get_dgt:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory
jmp edt_dgt:

edt_dgt:
dec bh
cmp bh , 0
je str_dgt
sub al , 30h
mov bl , 10
mul bl
mov [5000h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt    

str_dgt:
sub al , 30h
add [5000h] , al
mov bh , 2h


mov dx , offset msg2
mov ah , 9 
int 21h
jmp get_dgt2:
msg2 db 0dh , 0ah , 'enter the matrix 2nd element $'

get_dgt2:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt2:

edt_dgt2:
dec bh
cmp bh , 0
je str_dgt2
sub al , 30h
mov bl , 10h
mul bl
mov [5001h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt2

str_dgt2:
sub al , 30h
add [5001h] , al
mov bh , 2h

;3
mov dx , offset msg3
mov ah , 9
int 21h
jmp get_dgt3 ; this will be our first input
msg3 db 0dh , 0ah , 'enter the matrix 3rd element $'

get_dgt3:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt3:

edt_dgt3:
dec bh
cmp bh , 0
je str_dgt3
sub al , 30h
mov bl , 10
mul bl
mov [5002h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt3    

str_dgt3:
sub al , 30h
add [5002h] , al
mov bh ,2h
;4
mov dx , offset msg4
mov ah , 9
int 21h
jmp get_dgt4 ; this will be our first input
msg4 db 0dh , 0ah , 'enter the matrix 4th element $'

get_dgt4:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt4:

edt_dgt4:
dec bh
cmp bh , 0
je str_dgt4
sub al , 30h
mov bl , 10
mul bl
mov [5010h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt4    

str_dgt4:
sub al , 30h
add [5010h] , al
mov bh ,2h
;5
mov dx , offset msg5
mov ah , 9
int 21h
jmp get_dgt5 ; this will be our first input
msg5 db 0dh , 0ah , 'enter the matrix 5th element $'

get_dgt5:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt5: 

edt_dgt5:
dec bh
cmp bh , 0
je str_dgt5
sub al , 30h
mov bl , 10
mul bl
mov [5011h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt5

str_dgt5:
sub al , 30h
add [5011h] , al 
mov bh,2h
;6
mov dx , offset msg6
mov ah , 9
int 21h
jmp get_dgt6 ; this will be our first input
msg6 db 0dh , 0ah , 'enter the matrix 6th element $'

get_dgt6:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt6:

edt_dgt6:
dec bh
cmp bh , 0
je str_dgt6
sub al , 30h
mov bl , 10
mul bl
mov [5012h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt6 

str_dgt6:
sub al , 30h
add [5012h] , al 
mov bh,2h
;7
mov dx , offset msg7
mov ah , 9
int 21h
jmp get_dgt7 ; this will be our first input
msg7 db 0dh , 0ah , 'enter the matrix 7th element $'

get_dgt7:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt7:

edt_dgt7:
dec bh
cmp bh , 0
je str_dgt7
sub al , 30h
mov bl , 10
mul bl
mov [5020h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt7    

str_dgt7:
sub al , 30h
add [5020h] , al    
mov bh,2h
;8
mov dx , offset msg8
mov ah , 9
int 21h
jmp get_dgt8 ; this will be our first input
msg8 db 0dh , 0ah , 'enter the matrix 8th element $'

get_dgt8:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt8:   

edt_dgt8:
dec bh
cmp bh , 0
je str_dgt8
sub al , 30h
mov bl , 10
mul bl
mov [5021h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt8

str_dgt8:
sub al , 30h
add [5021h] , al  
mov bh,2h 
;9
mov dx , offset msg9
mov ah , 9
int 21h
jmp get_dgt9 ; this will be our first input
msg9 db 0dh , 0ah , 'enter the matrix 9th element $'

get_dgt9:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt9: 

edt_dgt9:
dec bh
cmp bh , 0
je str_dgt9
sub al , 30h
mov bl , 10
mul bl
mov [5022h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt9  

str_dgt9:
sub al , 30h
add [5022h] , al 
mov bh,2h
;10     

mov ah, 2
mov dl, 10 
int 21h
mov dl, 10 
int 21h
mov dl, 10 
int 21h
mov dl, 10 
int 21h

mov dx , offset msg10
mov ah , 9
int 21h
jmp get_dgt10 ; this will be our first input 
msg10 db 0dh , 0ah , 'enter the matrix 1st element $'
 
get_dgt10:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt10:

edt_dgt10:
dec bh
cmp bh , 0
je str_dgt10
sub al , 30h
mov bl , 10
mul bl
mov [5004h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt10

str_dgt10:
sub al , 30h
add [5004h] , al 
mov bh,2h
;11
mov dx , offset msg11
mov ah , 9
int 21h
jmp get_dgt11 ; this will be our first input
msg11 db 0dh , 0ah , 'enter the matrix 2nd element $'

get_dgt11:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt11:  

edt_dgt11:
dec bh
cmp bh , 0
je str_dgt11
sub al , 30h
mov bl , 10
mul bl
mov [5005h] , al;the value is equal to user input
mov ax , 0000h
call get_dgt11 

str_dgt11:
sub al , 30h
add [5005h] , al 
mov bh,2h
;12
mov dx , offset msg12
mov ah , 9
int 21h
jmp get_dgt12 ; this will be our first input
msg12 db 0dh , 0ah , 'enter the matrix 3th element $'

get_dgt12:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt12:

edt_dgt12:
dec bh
cmp bh , 0
je str_dgt12
sub al , 30h
mov bl , 10
mul bl
mov [5006h] , al;the value is equal to user input
mov ax , 0000h  
call get_dgt12    

str_dgt12:
sub al , 30h
add [5006h] , al 
add bh,2h
;13
mov dx , offset msg13
mov ah , 9
int 21h
jmp get_dgt13 ; this will be our first input
msg13 db 0dh , 0ah , 'enter the matrix 4th element $'

get_dgt13:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt13: 

edt_dgt13:
dec bh
cmp bh , 0
je str_dgt13
sub al , 30h
mov bl , 10
mul bl
mov [5014h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt13 

str_dgt13:
sub al , 30h
add [5014h] , al  
mov bh,2h
;14
mov dx , offset msg14
mov ah , 9
int 21h
jmp get_dgt14 ; this will be our first input
msg14 db 0dh , 0ah , 'enter the matrix 5th element $'

get_dgt14:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt14: 

edt_dgt14:
dec bh
cmp bh , 0
je str_dgt14
sub al , 30h
mov bl , 10
mul bl
mov [5015h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt14

str_dgt14:
sub al , 30h
add [5015h] , al 
mov bh,2h
;15
mov dx , offset msg15
mov ah , 9
int 21h
jmp get_dgt15 ; this will be our first input
msg15 db 0dh , 0ah , 'enter the matrix 6th element $'

get_dgt15:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt15: 

edt_dgt15:
dec bh
cmp bh , 0
je str_dgt15
sub al , 30h
mov bl , 10
mul bl
mov [5016h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt15

str_dgt15:
sub al , 30h
add [5016h] , al 
mov bh,2h
;16
mov dx , offset msg16
mov ah , 9
int 21h
jmp get_dgt16 ; this will be our first input
msg16 db 0dh , 0ah , 'enter the matrix 7th element $'

get_dgt16:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt16: 

edt_dgt16:
dec bh
cmp bh , 0
je str_dgt16
sub al , 30h
mov bl , 10
mul bl
mov [5024h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt16 

str_dgt16:
sub al , 30h
add [5024h] , al 
mov bh,2h
;17
mov dx , offset msg17
mov ah , 9
int 21h
jmp get_dgt17 ; this will be our first input
msg17 db 0dh , 0ah , 'enter the matrix 8th element $'

get_dgt17:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt17:

edt_dgt17:
dec bh
cmp bh , 0
je str_dgt17
sub al , 30h
mov bl , 10
mul bl
mov [5025h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt17   

str_dgt17:
sub al , 30h
add [5025h] , al
mov bh,2h

;18
mov dx , offset msg18
mov ah , 9
int 21h
jmp get_dgt18 ; this will be our first input
msg18 db 0dh , 0ah , 'enter the matrix 9th element $'

get_dgt18:
; get char from keyboard
; store it in the al
mov ah , 00h
int 16h     
; print it to screen
mov ah , 0eh
int 10h
;now we should store the digit
;into the memory     
jmp edt_dgt18: 

edt_dgt18:
dec bh
cmp bh , 0
je str_dgt18
sub al , 30h
mov bl , 10
mul bl
mov [5026h] , al;the value is equal to user input
mov ax , 0000h 
call get_dgt18  

str_dgt18:
sub al , 30h
add [5026h] , al 
jmp first_element:

first_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5000h]
mov bl , [5004h]
mul bl
mov [5041h] , al
mov [5040h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5001h]
mov bl , [5014h]
mul bl          
add [5041h] , al
adc [5040h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5002h]
mov bl , [5024h]
mul bl
add [5041h] , al
adc [5040h] , ah
jmp second_element:

second_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5000h]
mov bl , [5005h]
mul bl
mov [5043h] , al
mov [5042h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5001h]
mov bl , [5015h]
mul bl
add [5043h] , al
adc [5042h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5002h]
mov bl , [5025h]
mul bl
add [5043h] , al
adc [5042h] , ah 
jmp third_element:  

third_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5000h]
mov bl , [5006h]
mul bl
mov [5045h] , al
mov [5044h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5001h]
mov bl , [5016h]
mul bl
add [5045h] , al
adc [5044h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5002h]
mov bl , [5026h]
mul bl
add [5045h] , al
adc [5044h] , ah  
jmp fourth_element:
  
fourth_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5010h]
mov bl , [5004h]
mul bl
mov [5051h] , al
mov [5050h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5011h]
mov bl , [5014h]
mul bl
add [5051h] , al
adc [5050h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5012h]
mov bl , [5024h]
mul bl
add [5051h] , al
adc [5050h] , ah
jmp fifth_element: 

fifth_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5010h]
mov bl , [5005h]
mul bl
mov [5053h] , al
mov [5052h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5011h]
mov bl , [5015h]
mul bl
add [5053h] , al
adc [5052h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5012h]
mov bl , [5025h]
mul bl
add [5053h] , al
adc [5052h] , ah
jmp sixth_element: 
 
sixth_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5010h]
mov bl , [5006h]
mul bl
mov [5055h] , al
mov [5054h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5011h]
mov bl , [5016h]
mul bl
add [5055h] , al
adc [5054h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5012h]
mov bl , [5026h]
mul bl
add [5055h] , al
adc [5054h] , ah
jmp seventh_element: 

seventh_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5020h]
mov bl , [5004h]
mul bl
mov [5061h] , al
mov [5060h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5021h]
mov bl , [5014h]
mul bl
add [5061h] , al
adc [5060h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5022h]
mov bl , [5024h]
mul bl
add [5061h] , al
adc [5060h] , ah
jmp eight_element:  
 
eight_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5020h]
mov bl , [5005h]
mul bl
mov [5063h] , al
mov [5062h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5021h]
mov bl , [5015h]
mul bl
add [5063h] , al
adc [5062h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5022h]
mov bl , [5025h]
mul bl  
add [5063h] , al
adc [5062h] , ah 
jmp ninth_element:
 
ninth_element:
mov ax , 0000h
mov bl , 00h
mov ax , [5020h]
mov bl , [5006h]
mul bl
mov [5065h] , al
mov [5064h] , ah
mov ax , 0000h
mov bl , 00h
mov ax , [5021h]
mov bl , [5016h]
mul bl
add [5065h] , al
adc [5064h] , ah                      
mov ax , 0000h
mov bl , 00h
mov ax , [5022h]
mov bl , [5026h]
mul bl  
add [5065h] , al
adc [5064h] , ah
jmp final_message:

final_message:
mov ah, 2
mov dl, 10 
int 21h
mov dl, 10 
int 21h 
mov dx , offset msg19
mov ah , 9
int 21h    
jmp final_word
msg19 db 0dh , 0ah , 'result will appear in 0700:5000 $'


final_word:
mov ah, 2
mov dl, 10 
int 21h
mov dl, 10 
int 21h 
mov dx , offset msg20
mov ah , 9
int 21h  
hlt  
msg20 db 0dh , 0ah , 'thanks for using this program $' 
             





