atual = int(input('Insira seu salário atual: '))

if atual <= 3500:
    ajuste = 1.1
    novo = atual * ajuste
    print(f'Seu novo salário é {novo:.0f}')
else:
    ajuste = 1.05
    novo = atual * ajuste
    print(f'Seu novo salário é {novo:.0f}')