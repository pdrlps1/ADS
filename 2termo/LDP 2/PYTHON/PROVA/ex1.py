# ex 1 - prova semestral
classe = str(input("Insira uma classe entre Guerreiro (G), Mago (M) ou Arqueiro (A): "))

if (classe == "G" or classe == "g"):
    atributo = "Força"
    print(f'Você escolheu Guerreiro! Seu atributo é {atributo}')
elif (classe == "M" or classe == "m"):
    atributo = "Inteligência"
    print(f'Você escolheu Mago! Seu atributo é {atributo}')
elif (classe == "A" or classe =="a"):
    atributo = "Agilidade"
    print(f'Você escolheu Arqueiro! Seu atributo é {atributo}')
else:
    print('Essa classe não existe!')