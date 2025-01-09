'''RED SOCIAL: 
Una red social tiene una base de datos de usuarios y sus correspondientes amistades. 
Crea un programa que tome una base de datos de una red social como una lista de 
tuplas, donde cada tupla contiene el nombre del usuario y una lista de sus amigos. Los 
nombres repetidos en la lista de amigos corresponden a usuarios con varias cuentas 
diferentes. Deberas eliminar las cuentas duplicadas y después  devolver una tupla de 
tuplas que contiene el número real de amigos por usuario y el usuario con más amigos.
 Pista 1: Tus datos de entrada podrían ser así  —>  red_social = [("Juan", ["Maria", "Pedro", 
"Luis"]), ("Maria", ["Juan", “Pedro”,”Juan”]), ("Pedro", ["Juan", "Maria"]), ("Luis", [“Juan”])] 
Pista 2: Para eliminar duplicidades puedes usar sets '''

red_social = [("Juan",["Maria","Pedro","Luis"]),("Maria",["Juan","Pedro","Juan"]),("Pedro",["Juan","Maria"]), ("Luis", ["Juan"])] 

red_social_lista = []
amigos_por_user = []
for usuario in red_social:
    user = [usuario[0], list(set(usuario[1]))]
    red_social_lista.append(user)
    amigos_por_user.append(len(user[1]))

red_social_unico = tuple(red_social_lista)
# amigos_por_user = tuple(amigos_por_user)
print(red_social_unico)
print(amigos_por_user)

import numpy as np
usuarios = np.array(amigos_por_user)
indice = np.argmax(usuarios)

print(f'El usuario con mas amigos es {red_social_unico[indice][0]}')