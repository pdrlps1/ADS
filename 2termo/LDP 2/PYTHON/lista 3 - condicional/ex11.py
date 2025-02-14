consumo = int(input('Insira o valor do consumo (kWh): '))
valor = int(input('Insira o valor da conta (R$): '))

if consumo <= 40:
    conta = valor*1.1
    print(f'Valor da conta: {conta}')
else:
    conta = valor*1.3
    print(f'Valor da conta: {conta}')