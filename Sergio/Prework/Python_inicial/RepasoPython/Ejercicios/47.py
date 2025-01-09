'''Tienes una tienda y deseas realizar un seguimiento de las ventas diarias 
de tus productos. Cada producto tiene un nombre y una cantidad 
vendida. Implementa un programa en Python que utilice un diccionario 
para almacenar la información de las ventas. El programa debe permitir 
registrar las ventas de productos, actualizar la cantidad vendida de un 
producto existente y calcular el total de ventas diarias.
 (Pista: puedes comenzar con un diccionario vacío e ir añadiendo cada 
producto) '''

ventas = {}
continuar = True

while continuar:
    opcion = input("1. Registrar venta\n2. Actualizar cantidad vendida\n3. Calcular total de ventas\n4. Salir\nElige una opción: ")
    if opcion == '1':
        producto = input('Producto: ')
        cantidad = int(input('Cantidad: '))
        if producto in ventas:
            ventas[producto] += cantidad
        else:
            ventas[producto] = cantidad
    if opcion == '2':
        producto = input('Producto: ')
        if producto in ventas:
            cantidad = int(input('Cantidad: '))
            ventas[producto] = cantidad
        else:
            print('Ese producto no está registrado')
    if opcion == '3':
        total = 0
        for cantidades in ventas.values():
            total += cantidades
        print(f'Se han vendido un total de {total} productos')
    if opcion == '4':
        continuar = False
    else:
        print('Introduce un valor del 1 al 4')