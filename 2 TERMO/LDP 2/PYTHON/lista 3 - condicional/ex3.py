n1 = float(input('Insira a primeira nota: '))
n2 = float(input('Insira a segunda nota: '))

media = (n1+n2)/2

if media >=5:
    print(f'Sua média é {media:.1f}, você foi aprovado!')
else:
    print(f'Sua média é {media:.1f}, você foi reprovado!')