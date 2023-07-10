# c = (a < b) || ((a+b) == 10) 

.text
main:

# Carregando a variaveis a e b nos registaradores
li $t0, 2
li $t1, 2

# Somando a + b
add $s0, $t0, $t1

# Comparando se a menor que b, se verdade t2 recebe 1
slt $t2, $t0, $t1 

# Comparando se a soma a + b == 10, se verdadeiro t3 recebe 1
seq $t3, $s0, 10 

# Se um ou mais dos registradores for 1, s1 será 1
or $s1, $t2, $t3

move $a0, $s1
li $v0, 1
syscall
