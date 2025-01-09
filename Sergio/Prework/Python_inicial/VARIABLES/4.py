# Ejercicio 4
# Introducir el numero de ventas de cada modelo
coches_Serie_1 = input('Coches vendidos RBM Serie 1: ')
coches_Serie_Plus = input('Coches vendidos RBM Serie Plus: ')
coches_Serie_Todoterreno = input('Coches vendidos RBM Todoterreno: ')

# Calculas comisiones de cada modelo
comisiones_Serie_1 = 0.03 * 20000 * float(coches_Serie_1)
comisiones_Serie_Plus = 0.05 * 35000 * float(coches_Serie_Plus)
comisiones_Todoterreno = 0.07 * 60000 * float(coches_Serie_Todoterreno)

# Calcular comision total
comision_Total = comisiones_Serie_1 + comisiones_Serie_Plus + comisiones_Todoterreno

# Imprimir en pantalla
print('La comision total de este mes es de ', comision_Total, ' euros')