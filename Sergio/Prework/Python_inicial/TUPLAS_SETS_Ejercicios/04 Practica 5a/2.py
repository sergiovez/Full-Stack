## Ejercicio 2 SETS
'''14.Crea un set y elimina uno de sus elementos.'''
set_1 = {1,2,3}
print(set_1)
set_1.discard(2)
print(set_1)

'''15.Crea un set vacío.'''
set_vacio = set()
print(set_vacio)

'''16.Crea dos sets y encuentra su union, su intersección y su diferencia.'''
set_1 = {1,3,5,6}
set_2 = {4,6,8,3}
set_union =set_1 | set_2
set_interseccion = set_1 & set_2
set_diferencia = set_1 - set_2
print(f'El set union es: {set_union}')
print(f'El set interseccion es: {set_interseccion}')
print(f'El set diferencia es: {set_diferencia}')

'''17.Crea un script que dados dos sets cree uno nuevo que contenga solo los elementos 
comunes de ambos.'''
set_1 = {1,3,5,6}
set_2 = {4,6,8,3}
print(f'El set interseccion es: {set_interseccion}')

'''18.Crea un script que dado un set con números devuelva el numero máximo y mínimo.'''
set_1 = {1,3,5,6}
maximo = max(set_1)
print(maximo)

'''19.Crea un script que dados dos sets cree uno nuevo solo con los elementos únicos de 
cada uno de los sets.'''
set_1 = {1,3,5,6,5,6}
set_2 = {4,6,8,3,2,3}
set_union = set(set_1) | set(set_2)
print(set_union)

'''20.Crea un set con colores y comprueba si cierto color se encuentra en el set.'''
set_colores = {'azul','verde','rojo'}
color = input('Introduce un color: ')
color = color.lower()
if color in set_colores:
    print('El color se encuentra en el set')
else:
    print('El color no se encuentra en el set')

'''21.Crea un script que dados dos sets cree un nuevo set con los elementos que están en 
el primer set pero no en el segundo.'''
set_1 = {1,3,5,6}
set_2 = {4,6,8,3}
set_diferencia = set_1 - set_2
print(f'El set diferencia es: {set_diferencia}')

'''22.Crea un script que dado un set de enteros devuelva el producto de todos los números 
dentro del set.'''
set_1 = {1,3,5,6}
producto = 1
for valor in set_1:
    producto *= valor
print(producto)
