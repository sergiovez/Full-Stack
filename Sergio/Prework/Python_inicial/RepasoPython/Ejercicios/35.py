''' ANALISIS DE DATOS - VENTAS POR MES 
Supongamos que tienes un conjunto de datos de ventas de una tienda durante un año. 
Cada fila representa una venta y tiene tres columnas: la fecha de la venta, el monto de la 
venta y la categoría de producto vendido (por ejemplo, electrónicos, ropa, alimentos, 
etc.). Quieres analizar estos datos para determinar cuánto fue el monto total de ventas en 
cada mes. Para ello, puedes usar NumPy para cargar los datos en un array de 3 
columnas y n filas, donde n es el número de ventas. Luego, puedes usar operaciones de 
NumPy para filtrar los datos por mes y sumar los montos de venta correspondientes.
 (Pista 1) Tu array de entrada puede tener un a forma de este tipo:                   
(Pista 2: puedes cambiar el tipo de dato del array de string a entero usando 
array[:,i].astype(int) )'''

import numpy as np

# Datos de ventas de la tienda / input
ventas = np.array([
    ['2022-01-01', 100, 'ropa'],
    ['2022-01-02', 200, 'alimentos'],
    ['2022-01-03', 150, 'ropa'],
    ['2022-02-01', 120, 'alimentos'],
    ['2022-02-02', 180, 'electrónicos'],
    ['2022-02-03', 200, 'alimentos'],
    ['2022-03-01', 90, 'ropa'],
    ['2022-03-02', 110, 'electrónicos'],
    ['2022-03-03', 100, 'alimentos']
])

'''Quieres analizar estos datos para determinar cuánto fue el monto total de ventas en 
cada mes'''
import numpy as np
fechas = ventas[:,0]
meses = np.array([int(fecha[5:7]) for fecha in fechas])
print(meses)

# --- Obtener el monto por mes
monto_mes = np.zeros(12)
for mes in range(1,13):
    ventas_mes = ventas[meses == mes]
    monto_mes[mes-1] = np.sum(ventas_mes[:,1].astype(int))

print("Monto total de ventas por mes:", monto_mes)