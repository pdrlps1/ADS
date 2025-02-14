n1 = int(input('Insira o primeiro numero: '))
n2 = int(input('Insira o segundo numero: '))
n3 = int(input('Insira o terceiro numero: '))

if (n1 > n2) and (n1 > n3):
    if n2 > n3:
        print(f'{n3}, {n2}, {n1}')
    else:
        print(f'{n2}, {n3}, {n1}')
elif (n2 > n1) and (n2 > n3):
    if n1 > n3:
        print(f'{n3}, {n1}, {n2}')
    else:
        print(f'{n1}, {n3}, {n2}')
elif (n3 > n1) and (n3 > n2):
    if n1 > n2:
        print(f'{n2}, {n1}, {n3}')
    else:
        print(f'{n1}, {n2}, {n3}')