def calcular_digito_verificador(numero, digitos=1):
    lista_digitos = [int(digito) for digito in str(numero)]
    digitos_verificadores = []

    for _ in range(digitos):
        soma = 0
        peso = 2
        for digito in reversed(lista_digitos):
            soma += digito * peso
            peso += 1
        digito_verificador = (11 - soma % 11)
        digitos_verificadores.append(digito_verificador)
        lista_digitos.append(digito_verificador)

    return digitos_verificadores

# Exemplos
cpf = "426240878"
digitos_cpf = calcular_digito_verificador(cpf, digitos=2)
cpf_formatado = f"{cpf}-{digitos_cpf[0]}{digitos_cpf[1]}"
print(cpf_formatado)
