temp = int(input('Insira a temperatura do álcool: '))

if (temp >= 0) and (temp <= 75):
    print('Temperatura está baixa')
elif (temp > 75) and (temp <= 88):
    print('Temperatura está ideal')
elif (temp  > 88) and (temp <= 100):
    print('Temperatura passou do ponto ideal')
else:
    print('Temperatura inválida')