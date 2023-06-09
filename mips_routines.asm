# Rotinas uteis em MIPS

# Esta é a seção principal
.text
main:

    # Rotina para imprimir string
    li $v0, 4
    la $a0, request
    syscall

    # Rotina para ler entrada do usuário
    li $v0, 4
    la $a0, request 
    syscall

    li $v0, 5 # lê a entrada do usuário
    syscall
    move $s0, $v0

    li $v0, 5 
    syscall
    move $s1, $v0

    # Rotina para fazer somar valores 

    add $s2, $s0, $s1

    # Rotina para subtrair valores

    sub $s3, $s0, $s1

    # Rotina para multiplicar valores

    mul $s4, $s0, $s1

    # Pode-se utilizar $t0 para armazenar valores temporarios

    li $t0, 5

    # Rotina para exibir resultado 
    
    li $v0, 4
    la $a0, output
    syscall
    
    move $a0, $s4 # estamos exibindo o resultado da multiplicação
    li $v0, 1
    syscall


    # Rotina para terminar programa
    li $v0, 10
    syscall

# Nesta seção você declara suas variaveis
.data 
    string: .asciiz "Olá mundo!"
    request: .asciiz "Entre o valor de x e y: "
    output: .asciiz "O resultado é: "
    variable: .asciiz
