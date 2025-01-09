## EJERCICIO 1 DICCIONARIOS
'''Tienes una tienda y deseas realizar un seguimiento de las ventas diarias 
de tus productos. Cada producto tiene un nombre y una cantidad 
vendida. Implementa un programa en Python que utilice un diccionario 
para almacenar la información de las ventas. El programa debe permitir 
registrar las ventas de productos, actualizar la cantidad vendida de un 
producto existente y calcular el total de ventas diarias.
 (Pista: puedes comenzar con un diccionario vacío e ir añadiendo cada 
producto)'''
# --- Diccionario vacio
Almacen = {}

# --- el programa debe permitir
                            # registrar las ventas de productos
                            # actualizar la cantidad vendida de un producto existente
                            # calcular el total de ventas diarias.

continuar = True

# --- Menu de entrada
'''1. Registrar venta
2. Actualizar cantidad vendida
3. Calcular total de ventas
4. Mostrar almacen
5. Salir
Elige una opción:'''

while continuar:
    opcion = input("1. Registrar venta\n2. Actualizar cantidad vendida\n3. Calcular total de ventas\n4. Mostrar almacen\n5. Salir\nIngrese una opción: ")
    if opcion == "1":
        nombre = input("Ingresa el nombre del producto: ")
        cantidad = int(input("Ingresa la cantidad vendida: "))
        if nombre in Almacen:
            Almacen[nombre] += cantidad
        else:
            Almacen[nombre] = cantidad
    elif opcion == "2":
        nombre = input("Ingresa el nombre del producto: ")
        if nombre in Almacen:
            cantidad = int(input("Ingresa la cantidad vendida: "))
            Almacen[nombre] = cantidad
        else:
            print(f'No existe el producto {nombre} en el almacen.')
    elif opcion == "3":
        suma = 0
        for cantidad in Almacen.values():
            suma += cantidad
        print(f'El número total de ventas es de {suma} productos')
    elif opcion == "4":
        print(Almacen)   
    elif opcion == "5":
        continuar = False
    else:
        print('No es una opción valida')