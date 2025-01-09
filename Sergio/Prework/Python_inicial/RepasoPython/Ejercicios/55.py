''' GESTIÓN DE VENTAS 
Crea un programa que permita gestionar las ventas de una tienda. Utiliza una 
estructura de datos adecuada para almacenar la información de las ventas 
(por ejemplo, una lista de diccionarios). Implementa dos funciones, una para 
agregar el producto vendido con su precio y otro para mostrar las ventas de 
productos con sus respectivos precios.
 (La base de datos puede tener la forma [{“Producto”: producto1, “Precio”: 
precio1}, {“Producto”: producto2, “Precio”: precio2}…])'''
ventas = []

def agregarProducto(nombre, precio):
    ventas.append({'Producto':nombre, 'Precio':precio})
    return ventas

def mostrarVentas(ventas):
    for venta in ventas:
        print(f'El producto {venta['Producto']} tiene un precio de {venta['Precio']} euros')

agregarProducto('Carne', 20)
agregarProducto('Pescado', 30)
mostrarVentas(ventas)
agregarProducto('Papel', 5)
mostrarVentas(ventas)