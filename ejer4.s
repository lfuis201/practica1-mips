.data

msg: .asciiz "\nIngrese un numero: "
msg1: .asciiz "\nEl numero "
true: .asciiz " es multiplo de "
false: .asciiz " no es multiplo de "
sum: .asciiz "\nLa suma es: "

.text
main:
li $v0, 4
la $a0, msg
syscall

li $v0,5
syscall
move $t1,$v0

li $t0, 0

for:
beq $t0,20,exit


add $t6,$t6,$t5
addi $t0,$t0,1

li $v0, 4
la $a0, msg1
syscall

li $v0,1
move $a0, $t0
syscall

div $t6,$t0,$t1

beq $t6,0,else

li $v0, 4
la $a0, true
syscall

li $v0,1
move $a0, $t1
syscall

j else
else:
li $v0, 4
la $a0, false
syscall

li $v0,1
move $a0, $t1
syscall
j for
syscall
exit:


li $v0, 10
syscall
