# Ejercicio 10
# 1. Pedir nuestro nombre y saludarnos
nombre = input('¿Como te llamas? ')
print('Hola ' + nombre)

# 2. Pedir y guardar horas trabajadas a la semana y salario por hora
salario_hora = float(input('Salario por hora: '))
horas_semanales = float(input('Horas semanales: '))

# 3. Obtener salario semanal
salario_semanal = salario_hora * horas_semanales

# 4. Obtener ganancias anuales
salario_anual = salario_semanal * 52

# 5. Imprimir ganancia
print('Ganancia anual: ' + str(salario_anual))

# 6. Pedir y guardar gastos semanalas
gastos_anuales = float(input('Gastos anuales: '))

# 7. Imprimir gastos anuales
print('Gasto anual: ' + str(gastos_anuales))

# 9. Obtener ahorros anuales
ahorros_anuales = salario_anual - gastos_anuales

# 10. Imprimir ahorros anuales
print('Ahorro anual: ' + str(ahorros_anuales))