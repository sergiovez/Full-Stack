'''GRUPOS DE ALUMNOS:
 En uno de los cursos se ha dividido a una clase en dos grupos A y B. Para mezclar a los alumnos 
lo mejor posible se ha asignado a todas las chicas con nombres empezando por la letra E hasta la 
M en el grupo A y el resto en el B. A los chicos con nombres empezando por la letra A hasta la H y 
R hasta la Z se les ha asignado al grupo A también, el resto están en el B. 
Crea un script que pregunte al usuario si es chica o chico y el nombre. El script debe mostrar por 
pantalla el grupo que le corresponde a ese alumno.'''

genero = input('Genero: ')
nombre = input('Nombre: ')

inicial = nombre.lower()[0]

if genero.lower() == 'chica':
    if ('e' <= inicial <= 'm'):
        grupo = 'A'
    else:
        grupo = 'B'
else:
    if ('a' <= inicial <= 'h') or ('r' <= inicial <= 'z'):
        grupo = 'A'
    else:
        grupo = 'B'

print(f'Pertences al grupo {grupo}')