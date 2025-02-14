n = int(input('Insira o código do produto: '))

if n == 1:
    print('Alimento não-perecível')
elif (n>1) and (n<=4):
    print('Alimento perecível')
elif (n==5) or (n==6):
    print('Vestuário')
elif n == 7:
    print('Higiene pessoal')
elif (n > 7) and (n <= 15):
    print('Limpeza e utensílios domésticos')
else:
    print('Código inválido')