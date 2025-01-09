# Ejercicio 2
# Pedir la cantidad de euros
euros = float(input('Introducir la cantidad de euros: '))
# Obtener la cantidad en dolares sin comision
dolares = euros * 1.2
# Imprimir la cantidad de dolares
print(euros,' euros equivalen a ', dolares, ' dolares sin comision')
# Calcular los dolares con la tasa de gestion
dolares_comision = dolares * 0.1
dolares_restantes = dolares - dolares_comision
# Imprimir la cantidad de dolares
print('La casa de cambio se queda ', dolares_comision, ' dolares')
print('A mi me quedan por lo tanto ', dolares_restantes, ' dolares')