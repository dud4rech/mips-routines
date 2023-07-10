.text
main:
# código para somar dois numeros do tipo word

lw $t1, label
lw $t2, label + 4 # no proximo endereco

add $s2, $t1, $t2

li $v0, 4
la $a0, output

move $a0, $s2 
li $v0, 1
syscall
 
.data 
output: .asciiz "O resultado �: "
label: .word 1 2