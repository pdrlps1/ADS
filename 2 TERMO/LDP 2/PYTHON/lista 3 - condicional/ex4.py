ano_nasc = int(input("Insira o ano do seu nascimento: "))
ano_atual = int(input("Insira o ano atual: "))

idade = ano_atual - ano_nasc

if idade >= 18:
    print(f'Sua idade é {idade}, você pode dirigir!')
else:
    print(f'Sua idade é {idade}, você não pode dirigir!')