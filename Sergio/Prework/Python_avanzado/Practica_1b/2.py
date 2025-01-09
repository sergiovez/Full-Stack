## EJERCICIO 2
'''Crea un programa que permita gestionar las ventas de una tienda. Utiliza una 
estructura de datos adecuada para almacenar la información de las ventas 
(por ejemplo, una lista de diccionarios). Implementa dos funciones, una para 
agregar el producto vendido con su precio y otro para mostrar las ventas de 
productos con sus respectivos precios.
(La base de datos puede tener la forma [{“Producto”: producto1, “Precio”: 
precio1}, {“Producto”: producto2, “Precio”: precio2}…])'''

base_datos=[{"Producto": "macarrones", "Precio": 10},{"Producto": "jamon", "Precio": 5},{"Producto": "pescado", "Precio": 3}]
ventas = []

def agregar_producto(producto, precio):
    venta = {
            'Producto': producto,
            'Precio': precio,
            }
    ventas.append(venta)

def mostrar_ventas(ventas):
    for venta in ventas:
        print("Producto", venta["Producto"])
        print("Precio", venta["Precio"])
        print("----")

agregar_producto("Camisa", 25.99)
agregar_producto("Pantalon", 39.95)
agregar_producto("Zapatos", 61.25)

mostrar_ventas(ventas)