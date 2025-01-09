# Ejercicio 1
## Supongamos que eres el propietario de una tienda en línea y tienes una lista de ventas de los 
## últimos 30 días. Quieres analizar las ventas por día de la semana para identificar los días de mayor 
## venta. 
## Pista 1: Puedes crear dos listas, una con las ventas por cada día del mes como por ejemplo… 
## ventas = [120, 80, 140, 200, 75, 100, 180, 220, 160, 110, 90, 120, 170, 190, 250, 300, 95, 110, 
## 140, 180, 200, 160, 120, 80, 170, 150, 210, 190, 230, 250] 
## Y otra lista con los días de la semana: 
## dias_semana = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", „Domingo“] 
## Después puedes crear una nueva lista con una entrada por cada día de la semana y usar un bucle 
## para añadir a esta lista la suma de las ventas correspondientes a cada uno de los días de la 
## semana. 
## Pista 2: Puede que necesites una variable que lleve la cuenta del día de la semana actual y se 
## reinicie a cero cuando llegue al séptimo día. 

# --- Crear las listas de ventan y dias dias de la semana
ventas = [120, 80, 140, 200, 75, 100, 180, 220, 160, 110, 90, 120, 170, 190, 250, 300, 95, 110, 
          140, 180, 200, 160, 120, 80, 170, 150, 210, 190, 230, 250] 
dias_semana = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"] 

# --- Crear variable vacia de ventas_dia
ventas_dia = []

# --- Crear una variable del contador del dia
contador = 0

# --- Crear un bucle que recorra las ventas y las asigne al dia de la semana
for venta in ventas:
    if contador == 7:
        contador = 1
    else:
        contador += 1
    if len(ventas_dia)<7:
        ventas_dia.append(venta)
    else:
        ventas_dia[contador-1] += venta

# --- Printeo los resultados
for i in range(0,len(dias_semana)):
    print(f'Las ventas del {dias_semana[i]} han sido de {ventas_dia[i]} euros')
