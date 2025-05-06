x1 = [1, 1, 1, 1, 0, 0, 0, 0]
x2 = [1, 1, 0, 0, 1, 1, 0, 0]
x3 = [1, 0, 1, 0, 1, 0, 1, 0]
d =  [1, 1, 1, 0, 1, 0, 1, 0]

w1 = 0.2
w2 = 0.2
w3 = 0.2
b = 1.0
alpha = 0.1

N = 10
iteracao = 0

def escreve(iteracao, w1, w2, w3, b):
    print(f"Iteração {iteracao}: w1 = {w1:.2f}, w2 = {w2:.2f}, w3 = {w3:.2f}, b = {b:.2f}")

escreve(iteracao, w1, w2, w3, b)

for repeticao in range(N):
    erro_total = 0
    for exemplo in range(8):
        soma = (w1 * x1[exemplo]) + (w2 * x2[exemplo]) + (w3 * x3[exemplo]) - b

        if soma >= 0:
            y = 1
        else:
            y = 0

        erro = d[exemplo] - y
        erro_total += abs(erro)

        if erro != 0:
            w1 = w1 + alpha * erro * x1[exemplo]
            w2 = w2 + alpha * erro * x2[exemplo]
            w3 = w3 + alpha * erro * x3[exemplo]
            b = b - alpha * erro

        iteracao += 1
        escreve(iteracao, w1, w2, w3, b)

    if erro_total == 0:
        print(f"Treinamento completo após {repeticao + 1} épocas!")
        break
