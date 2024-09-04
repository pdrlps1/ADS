# ex 3
peso = int(input('Insira seu peso (kg): '))
altura = float(input('Insira sua altura (m): '))
IMC = float(peso/(altura**2))

print(f'Seu IMC é {IMC:.2f}')