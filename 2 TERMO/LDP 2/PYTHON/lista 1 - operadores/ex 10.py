# ex 10
# Quadrado
lado = int(input('Insira o lado do quadrado: '))
area_quad = lado ** 2
perim_quad = lado * 4
print(f'A área do quadrado é igual a {area_quad} e o perímetro ')

# Retângulo
base_ret = int(input('Insira a base do retângulo: '))
alt_ret = int(input('Insira a altura do retângulo: '))
area_ret = base_ret*alt_ret
perim_ret = base_ret*2+alt_ret*2
print(f'A área do retângulo é igual a {area_ret} e o perímetro é igual a {perim_ret}')

# Círculo
raio = int(input('Insira o valor do raio do círculo: '))
area_circ = 3.14*(raio**2)
perim_circ = 2*3.14*raio
print(f'A área do retângulo é igual a {area_circ:.1f} e o perímetro é igual a {perim_circ:.1f}')

# Triângulo Equilátero
base_tri = int(input('Insira o valor da base do triângulo: '))
alt_tri = int(input('Insira o valor da altura do triângulo: '))
area_tri = base_tri*alt_tri
perim_tri = base_tri*3
print(f'A área do triângulo é igual a {area_tri} e o perímetro é igual a {perim_tri}')