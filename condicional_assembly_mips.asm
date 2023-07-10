# total = 0
# for (i = 0; i < n; i++) {
# if (i % 5 > 2) continue
# total += i
# }

.text
main:

li $t0, 0 # total
li $t1, 0 # i começa em 0
li $t2, 6 # valor de n

loop:
bgt $t1, $t2, end
rem $t3, $t1, 5  # divide i por 5 e guarda o resto em $t3
bgt $t3, 2, then # se o resto ($t3) for maior que 2 ($t4), vai para a funcao then
addi $t1, $t1, 1
j loop # se o resto nao for maior que 2, vai para o final do codigo

then: add $t0, $t0, $t1 # se if for verdadeiro, faz total = total + i ($t1)
addi $t1, $t1, 1 # contador de i
move $a0, $t1
li $v0, 1
syscall
blt $t1, $t2, loop

end: # final do codigo
li $v0, 10
syscall


