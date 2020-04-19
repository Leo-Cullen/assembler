#PURPOSE simple prog that exits and returns a status code to kernel
#

#INPUT:  none
#

#OUTPUT: returns a status code, viewed by typing
#
#        echo $?         
#
#        after running the program
#

#VARIABLES:
#        %eax holds the system call number
#
#        %ebx holds the return status
#
.section .data

.section .text

.globl _start
_start:
movl $1, %eax # kernel cmd no.for exiting a prog

movl $0, %ebx # status no. returned to OS
#
#echo $?

int $0x80 # wake up kernel to run exit cmd

