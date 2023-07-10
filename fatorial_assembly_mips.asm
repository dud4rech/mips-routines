# Programa que implemente recursivamente o fatorial*
# F(n) = n * F(n-1)
# 4! = 4 * 3!

.text 
main: 
li $s1, 1 # representa o resultado do fatorial

# Pedir o número ao usuário
li $v0, 4
la $a0, input # imprime "Entre o número: "
syscall

# Lê a entrada do usuário
li $v0, 5
syscall
move $s0, $v0

condicional:
bgt $s0, 1, fatorial # se o numero for maior que 1 vai para a funcao fatorial
j end # senao vai para a funcao end

fatorial:
mul $s1, $s1, $s0 # multiplica 1 * numero -> guarda 4 em $s1
sub $s0, $s0, 1 # numero - 1 -> guarda 3 em $s0
j condicional # volta para condicional

# Informar o valor obtido do fatorial
end:
li $v0, 4
la $a0, output
syscall

move $a0, $s1
li $v0, 1
syscall

.data
input: .asciiz "Entre o número: "
output: .asciiz "O fatorial é: "
