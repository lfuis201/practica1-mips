.data
# guardamos nuestros mensajes para imprimir
msg: .asciiz "\nIngrese la cantidad de numeros: "
msg1: .asciiz "\nIngrese un numero: "
msg2: .asciiz "\nEl promedio es: "
sum: .asciiz "\nLa suma es: "

.text
# imprimimos el primer mensaje
main:
li $v0, 4
la $a0, msg
syscall

# recibimos el numero que el usuario ingreso en t1
li $v0,5
syscall
move $t1,$v0

# asignamos el valor de 0 a t0
li $t0, 0

# creamos el bucle for
for:

# inicia en t0 y termina en t1
beq $t0,$t1,exit

# imprimimos el segundo mensaje
li $v0, 4
la $a0, msg1
syscall

# recibimos los numeros que el usuario ingresara
li $v0,5
syscall
move $t5, $v0

# sumamaos todos los numeros y los guardamos en t6
add $t6,$t6,$t5
addi $t0,$t0,1
j for
syscall

# fin del bucle
exit:

# imprimimos el texto de sum
li $v0,4
la $a0, sum
syscall

# imprimimos la suma
li $v0,1
move $a0, $t6
syscall

# calculamos el promedio
div $t7,$t6,$t1

# imprimimos el mensaje del promedio
li $v0,4
la $a0, msg2
syscall

# imprimimos el promedio
li $v0,1
move $a0, $t7
syscall

li $v0, 10
syscall
