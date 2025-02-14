# ex 2 - prova semestral

hora_homem = int(input("Insira a quantidade de horas necessárias: "))
dev = int(input("Insira a quantidade de desenvolvedores no projeto: "))

if (dev > 0):
    if hora_homem > 0:
        hora_dia = dev*8
        dia_projeto = hora_homem/hora_dia
        print(f'A quantidade de dias decessários para o projeto é de {round(dia_projeto,0)} dias!')
    else:
        print('Quantidade de horas do projeto inválida!')
else:
    print('Quantidade de desenvolvedores inválida!')

