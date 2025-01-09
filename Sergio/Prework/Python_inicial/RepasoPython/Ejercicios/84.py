'''Problema de Análisis de Datos de Ventas:
 Imagina que eres parte de una empresa de comercio electrónico y tienes 
información detallada sobre las ventas de productos. Cada venta se representa 
como un diccionario, que incluye el nombre del producto, la fecha de venta, el 
monto de la venta y la ubicación del comprador. Realiza un análisis avanzado 
de estas ventas.
 Filtra las ventas realizadas en el último trimestre del año.
  Selecciona solo las ventas de productos con un monto superior a $500.
 Agrupa las ventas por ubicación del comprador.
 Calcula el promedio del monto de venta para cada ubicación.
 Ordena las ubicaciones por el promedio del monto de venta de forma 
descendente. Utiliza funciones lambda.
 A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada
  Registro de ventas (json,dic,etc)
 Salida
 Ubicaciones por promedio, ej. : Chile,
 Ecuador]'''

def analizar_ventas(ventas):
    # 1 Filtra las ventas realizadas en el último trimestre del año
    ventas_filtradas = [venta for venta in ventas if int(venta['fecha_venta'][5:7]) >= 10]

    # 2 Selecciona solo las ventas de productos con un monto superior a $500
    ventas_filtradas = [venta for venta in ventas_filtradas if venta['monto'] > 500]

    # 3 Agrupa las ventas por ubicación del comprador
    ventas_agrupadas = {}
    for venta in ventas_filtradas:
        ubicacion = venta['ubicacion']
        if ubicacion not in ventas_agrupadas:
            ventas_agrupadas[ubicacion] = []
        ventas_agrupadas[ubicacion].append(venta)
    print(ventas_agrupadas)

    # 4 Calcula el promedio del monto de venta para cada ubicación.
    promedio_ventas = {}
    for pais, detalles in ventas_agrupadas.items():
        promedio = sum(producto['monto'] for producto in detalles) / len(detalles)
        promedio_ventas[pais] = promedio

    # 5 Ordena las ubicaciones por el promedio del monto de venta de forma descendente. Utiliza funciones lambda
    ubicaciones_ordenadas = sorted(promedio_ventas, key=lambda name:promedio_ventas[name], reverse=True)
    print(ubicaciones_ordenadas)
    
    # Print
    for ubicacion in ubicaciones_ordenadas:
        print(f'{ubicacion}: {promedio_ventas[ubicacion]}')


ventas = [
    {"nombre_producto": "iPhone 13", "fecha_venta": "2023-10-01", "monto": 1000, "ubicacion": "Ecuador"},
    {"nombre_producto": "MacBook Pro", "fecha_venta": "2023-11-01", "monto": 2000, "ubicacion": "Argentina"},
    {"nombre_producto": "MacBook Pro 4", "fecha_venta": "2023-12-01", "monto": 3000, "ubicacion": "Argentina"},
    {"nombre_producto": "Samsung Galaxy S22", "fecha_venta": "2023-12-01", "monto": 500, "ubicacion": "Bolivia"},
    {"nombre_producto": "Samsung Galaxy S12", "fecha_venta": "2024-01-12", "monto": 300, "ubicacion": "Chile"},
]
analizar_ventas(ventas)