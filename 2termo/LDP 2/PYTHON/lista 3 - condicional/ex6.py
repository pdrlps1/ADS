n1 = int(input('Insira o primeiro numero: '))
n2 = int(input('Insira o segundo numero: '))
n3 = int(input('Insira o terceiro numero: '))

if n1 > n2:
    if n2 > n3:
        print(f'Menor numero: {n3}')
    else:
        print(f'Menor numero: {n2}')
elif n2 > n1:
    if n1 > n3:
        print(f'Menor numero: {n3}')
    else:
        print(f'Menor numero: {n1}')
elif n3 > n1:
    if n1 > n2:
        print(f'Menor numero: {n2}')
    else:
        print(f'Menor numero: {n1}')