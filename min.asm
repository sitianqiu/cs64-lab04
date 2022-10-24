.data
    enter: .asciiz "Enter the next number:\n"
    printM: .asciiz "Minimum: "

.text
main: 
    li $v0, 4
    la $a0, enter
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, enter
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, enter
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    ble $t0, $t1, compareAC
    j compareBC

compareAC:
    ble $t0, $t2, printA
    j printC

compareBC:
    ble $t1, $t2, printB
    j printC

printA:
    li $v0, 4
    la $a0, printM
    syscall 

    li $v0, 1
    move $a0, $t0
    syscall

    j exit

printB:
    li $v0, 4
    la $a0, printM
    syscall 

    li $v0, 1
    move $a0, $t1
    syscall

    j exit

printC:
    li $v0, 4
    la $a0, printM
    syscall 

    li $v0, 1
    move $a0, $t2
    syscall

    j exit


exit:
    li $v0, 10
    syscall 
