# 14/05 - Aula 2 - Módulos
# exemplo - math e random
import math
import random

n = int(input('Insira um número inteiro: '))

raiz = math.sqrt(n)
seno = math.sin(n)
cosseno = math.cos(n)
tangente = math.tan(n)

print(f'A raíz quadrada do número {n} é {raiz:.2f}')
print(f'O seno do número {n} é {seno:.2f}')
print(f'O cosseno do número {n} é {cosseno:.2f}')
print(f'A tangente do número {n} é {tangente:.2f}')