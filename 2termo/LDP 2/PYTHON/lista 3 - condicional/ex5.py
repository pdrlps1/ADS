velocidade = int(input('Insira a velocidade atual: '))
limite = int(input('Insira o limite da pista: '))

vel_permitida = limite*1.1

if velocidade >= vel_permitida:
    print(f'Sua velocidade é {velocidade}, você foi multado')
else:
    print(f'Sua velocidade é {velocidade}, você não foi multado')