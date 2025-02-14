# exercício 7 - jogo da adivinhação

import random as rd

pc = rd.randint(0,10)
num=int(input('Que número eu escolhi entre 0 e 10?: '))

while num != pc:
    num=int(input('Você errou! Tente novamente: '))

print('Você venceu!')