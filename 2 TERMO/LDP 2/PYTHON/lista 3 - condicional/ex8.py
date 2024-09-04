idade = int(input('Insira sua idade: '))

if (idade >=0) and (idade <=12):
    print('Você é criança')
elif (idade > 12) and (idade <= 18):
    print('Você é adolescente')
elif (idade > 18) and (idade <= 59):
    print('Você é adulto')
else:
    print('Você é terceira idade')