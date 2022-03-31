.data

msg1: .asciiz "\nIngrese un elemento del vector 1: "
msg2: .asciiz "\nIngrese un elemento del vector 2: "
msg3: .asciiz "\nEl producto a esacalar es: "

.text
main:
# impirmir el msg1 
li $v0,4
la $a0,msg1
syscall

# recibimos el ingreso del usuario en $t1
li $v0,5
syscall
move $t1,$v0

li $v0,4
la $a0,msg1
syscall

# recibimos el ingreso del usuario en $t2
li $v0,5
syscall
move $t2,$v0

li $v0,4
la $a0,msg1
syscall

# recibimos el ingreso del usuario en $t3
li $v0,5
syscall
move $t3,$v0

# impirmir el msg2
li $v0,4
la $a0,msg2
syscall

# recibimos el ingreso del usuario en $t4
li $v0,5
syscall
move $t4,$v0

li $v0,4
la $a0,msg2
syscall

# recibimos el ingreso del usuario en $t5
li $v0,5
syscall
move $t5,$v0

li $v0,4
la $a0,msg2
syscall

# recibimos el ingreso del usuario en $t6
li $v0,5
syscall
move $t6,$v0

# multiplicacamos los resultados
mul $t7,$t1,$t4
mul $t8,$t2,$t5
mul $t9,$t3,$t6

# calculamos el producto escalar
add $t10,$t7,$t8 

add $t11,$t10,$t9

# imprimimos el msg3
li $v0,4
la $a0,msg3
syscall

# imprimimos el prodcuto escalar
li $v0,1
move $a0, $t0
syscall

li $v0,10
syscall