.data
    msg1: .asciiz "\nIngrese un numero: "
    msg2: .asciiz "\nIngrese otro numero: "
    msg3: .asciiz "\nLa suma es: "
    msg4: .asciiz "\nLa diferencia es: "
    msg5: .asciiz "\nLa multiplicacion es: "
    msg6: .asciiz "\nLa division es: "
    msg7: .asciiz "\nEl promedio es: "
.text
    main:
    li $v0,4
    la $a0,msg1
    syscall

    li $v0,7
    syscall
    move.s $f4,$v0

    li $v0,4
    la $a0,msg2
    syscall

    li $v0,7
    syscall
    move.s $f6,$v0

    add.s $f2,$t1,$t2

    li $v0,4
    la $a0,msg3
    syscall

    li $v0,3
    move $a0,$t3
    syscall