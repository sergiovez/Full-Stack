## EJERCICIO 1
'''Una red social tiene una base de datos de usuarios y sus correspondientes amistades. 
Crea un programa que tome una base de datos de una red social como una lista de 
tuplas, donde cada tupla contiene el nombre del usuario y una lista de sus amigos. Los 
nombres repetidos en la lista de amigos corresponden a usuarios con varias cuentas 
diferentes. Deberas eliminar las cuentas duplicadas y después  devolver una tupla de 
tuplas que contiene el número real de amigos por usuario y el usuario con más amigos.
 Pista 1: Tus datos de entrada podrían ser así  —>  red_social = [("Juan", ["Maria", "Pedro", 
"Luis"]), ("Maria", ["Juan", “Pedro”,”Juan”]), ("Pedro", ["Juan", "Maria"]), ("Luis", [“Juan”])] 
Pista 2: Para eliminar duplicidades puedes usar sets'''

red_social = [("Juan",["Maria","Pedro","Luis"]),("Maria",["Juan","Pedro","Juan"]),("Pedro",["Juan","Maria"]), ("Luis", ["Juan"])] 

# --- Eliminar las cuentas duplicadas
red_social_sin_duplicados = []
for usuario, amigos in red_social:
    # Se crea una lista de amigos sin duplicados
    amigos_sin_duplicados = list(set(amigos))
    # Se agrega una nueva tupla a la lista red_social_sin_duplicados con el usuario y la lista de amigos sin duplicados
    red_social_sin_duplicados.append((usuario, amigos_sin_duplicados))
print(red_social_sin_duplicados)

# --- Devolver tupla de tuplas que contiene el numero real de amigos por usuario
# Devolver algo asi numero_real_amigos = (('Juan', 3), ('Maria', 2), ('Pedro', 2), ('Luis', 1))
numero_real_amigos = []
for usuario, amigos in red_social:
    numero_real_amigos.append((usuario, len(amigos)))

numero_real_amigos = tuple(numero_real_amigos)
print(numero_real_amigos)

# --- Y el usuario con mas amigos (Juan)
personas = [tupla[0] for tupla in numero_real_amigos]
amigos = [tupla[1] for tupla in numero_real_amigos]
indice_con_mas_amigos = amigos.index(max(amigos))

print(f'La persona con mas amigos es {personas[indice_con_mas_amigos]}')