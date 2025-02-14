# ex 5 - ler 5 pesos e dizer qual o maior e o menor

lista = []

for c in range (1, 6, 1):
    peso = int(input(f'Insira o peso do indivíduo {c}: '))
    lista.insert(c,peso)

print('O maior peso é',max(lista))
print('O menor peso é',min(lista))
