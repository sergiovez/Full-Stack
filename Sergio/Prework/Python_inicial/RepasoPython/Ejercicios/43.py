'''DATOS CLIENTES: 
Una compañía tiene dos bases de datos de clientes. La primera base de datos contiene 
el nombre del cliente, la dirección de correo electrónico y el número de teléfono. La 
segunda base de datos contiene el nombre del cliente, la dirección y el historial de 
pedidos. Escribe un programa que tome las dos bases de datos como listas de tuplas y 
devuelva una nueva lista de tuplas que contenga solo los clientes que aparecen en 
ambas bases de datos. Los clientes se consideran iguales si tienen el mismo nombre.
 Pista: Tus datos de entrada podrían ser así  —>   
base_datos1 = [("Juan", "juan@example.com", "555-1234"), ("Maria", 
"maria@example.com", "555-5678"), ("Pedro", "pedro@example.com", “555-9012")] 
base_datos2 = [("Juan", "Calle 123", ["Libro1", "Libro2"]), ("Maria", "Calle 456", ["Libro3"]), 
("Luis", "Calle 789", ["Libro4"])] '''

base_datos1 = [("Juan", "juan@example.com", "555-1234"), ("Maria", "maria@example.com", "555-5678"), ("Pedro", "pedro@example.com", "555-9012")] 
base_datos2 = [("Juan", "Calle 123", ["Libro1", "Libro2"]), ("Maria", "Calle 456", ["Libro3"]), ("Luis", "Calle 789", ["Libro4"])]

clientes_1 = [cliente[0] for cliente in base_datos1]
clientes_2 = [cliente[0] for cliente in base_datos2]

base_datos_final = []
for cliente in base_datos1:
    for cliente_2 in base_datos2:
        if cliente[0] == cliente_2[0]:
            base_datos_final.append([cliente[0],cliente[1],cliente[2],cliente_2[1],cliente_2[2]])

print(base_datos_final)