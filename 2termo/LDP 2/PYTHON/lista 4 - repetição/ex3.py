# exercício 3 - tabuada de um número inteiro

n = int(input('Insira um número: '))
for c in range (1, 11, 1):
    mult = n * c
    print(f'{n} x {c} = {mult}')