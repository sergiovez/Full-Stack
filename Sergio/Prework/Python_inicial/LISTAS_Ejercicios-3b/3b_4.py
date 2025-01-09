## Ejercicio 4
## Eres un comercial trabajando para una compañía que vende diversos productos. Quieres crear un 
## programa para realizar un seguimiento de los productos que has vendido y el valor total de las 
## ventas. Supongamos que hay un total de 10 productos. 
## Tú has vendido 5 de estos productos en las siguientes cantidades: 
## Producto 1: 3 unidades 
## Producto 2: 1 unidad 
## Producto 5: 7 unidades 
## Producto 6: 2 unidades 
## Producto 9 : 4 unidades 
## Los precios de cada uno de estos productos son como siguen: 
## Producto 1: 30.0 EU	 	 Producto 6: 44.0 EU
## Producto 2: 9.8 EU	 	 Producto 7: 21.2 EU 
## Producto 3: 42.5 EU	 	 Producto 8: 53.2 EU 
## Producto 4: 32.6 EU	 	 Producto 9: 25.3 EU 
## Producto 5: 71.5 EU	 	 Producto 10: 57.8 EU 
## Crea un script que dada una lista con los productos, sus precios y las unidades vendidas, imprima 
## la cantidad total de ventas, el dinero facturado por producto y el dinero total.

# --- Crear listas de productos y precios
productos = [3,1,0,0,7,2,0,0,4,0]
precios = [30.0, 9.8, 42.5, 32.6, 71.5, 44.0, 21.2, 53.2, 25.3, 57.8]

# --- Inicializamos las variables
total_facturado = 0
facturado_producto = 0

# --- Calculamos el numero total de ventas
numero_productos = sum(productos)

# --- Creamos un bucle que lea la cantidad de productos y las multiple por su precio correspondiente
for i in range(0,len(productos)-1):
    total_facturado += productos[i]*precios[i]
    print(f'La facturacion del producto {i+1} ha sido de {productos[i]*precios[i]} euros')

# --- Imprimir resultados
print(f'Se han vendido un total de {numero_productos} productos')
print(f'Se ha facturado un total de {total_facturado} euros')