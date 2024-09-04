import random

print('--------------------------')
print('---JOGO DO PAR OU IMPAR---')
print('--------------------------\n')

user = str(input('Qual seu nome de usuário? '))

print(f'Bem vindo, {user}, vamos jogar!')

n_user = int(input('Escolha um número de 1 a 10: '))
escolha = int(input('Escolha entre PAR (1) ou IMPAR (2): '))
aleatorio = random.randrange(1,10)

print(f'Meu número é {aleatorio}\n')
soma = n_user + aleatorio

print(f'A soma dos números é {soma}\n')

if (soma % 2 == 0) & (escolha == 1):
    print('Você venceu!')
elif (soma %2 != 0) & (escolha == 2):
    print('Você venceu!')
else:
    print('Você perdeu!')