'''TRABAJANDO CON SETS:  
14.Crea un set y elimina uno de sus elementos.'''
set = {1,2,3}
set.remove(3)
print(set)

'''15.Crea un set vacío.'''

'''16.Crea dos sets y encuentra su union, su intersección y su diferencia.'''
set_1 = {1,2,3}
set_2 = {3,4,5}
set_union = set_1 | set_2
print(set_union)
set_intersec = set_1 & set_2
print(set_intersec)
set_dif = set_1 - set_2
print(set_dif)

'''17.Crea un script que dados dos sets cree uno nuevo que contenga solo los elementos 
comunes de ambos.'''
set_1 = {1,2,3}
set_2 = {3,4,5}
set_intersec = set_1 & set_2

'''18.Crea un script que dado un set con números devuelva el numero máximo y mínimo.'''
set_1 = {1,2,3}
set_max = max(set_1)
set_min = min(set_1)
print(set_max)
print(set_min)

'''19.Crea un script que dados dos sets cree uno nuevo solo con los elementos únicos de 
cada uno de los sets.'''
set_1 = {1,2,4,6,3,2}
set_2 = {2,5,6,2,4,1,1}
print(set_1 | set_2)

'''20.Crea un set con colores y comprueba si cierto color se encuentra en el set.'''
colores = {'azul', 'rojo', 'verde'}
print('verde' in colores)
print('amarillo' in colores)

'''21.Crea un script que dados dos sets cree un nuevo set con los elementos que están en 
el primer set pero no en el segundo.'''
set_1 = {1,2,4,6,3,2}
set_2 = {2,5,6,2,4,1,1}
print(set_1 - set_2)

'''22.Crea un script que dado un set de enteros devuelva el producto de todos los números 
dentro del set. '''
set = {4,5,7}
mult = 1
for element in set:
    mult *= element
print(mult)