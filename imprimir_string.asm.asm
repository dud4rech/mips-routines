.text
main:
# imprimir string com space 81

li $v0, 4
la $a0, prompt # Imprimir "Entre uma string: "
syscall

# Armazenar input
la $a0, input

# Armazenar inputSize
lw $a1, inputSize

li $v0, 8 # Usuario digita string
syscall

li $v0, 4
la $a0, output # "\nVoc� digitou a string: "
syscall

li $v0, 4
la $a0, input # String digitada pelo usuario
syscall

.data
prompt: .asciiz "Entre uma string: "
output: .asciiz "\nVoc� digitou a string: "
input: .space 81 # endereco com "81 espa�os livres"
inputSize: .word 80 #guarda o numero 80 na memoria
