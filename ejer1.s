
.data
array1: .word 1,2,3,4,5
array2: .word 0,0,0,0
msg1: .asciiz "\nIngrese un numero: "
msg2: .asciiz "\nLos 5 primeros multiplos de 4 son: "
.text
main:

la $a1 array1
la $a2 array2
li $t0 1
li $s0 5

# imprimimos el primer mensaje

li $v0,4
la $a0,msg1
syscall

# recibimos el ingreso del usuario en $t1
li $v0,5
syscall
move $t3,$v0

multing:
bgt $t0,$s0,jump     # t0=i , $s0=dimention
lw $t1,0($a1)        # a1=address of first array , t1=matrix[i]
mul $t2,$t1,$t3   # t2=t1*t0
sw $t2,0($a2)        # store the element
addi $t0,$t0,1       # i=i+1
addi $a1,$a1,4       # next address in first array
addi $a2,$a2,4       # next address in second array
b multing            # repeat loop

jump:

move $t0 $zero
la $a1 array2
li $t1 5

# imprimimos el array

li $v0,4
la $a0,msg2
syscall

printLoop:
    lw $a0 0($a1)
    li $v0 1
    syscall

    li $a0 ' '
    li $v0 11
    syscall

    addi $a1 4
    addi $t0 1

    blt $t0 $t1 printLoop

jr $ra