'''SUMA ELEMENTOS DE UNA LISTA 
Crea una función recursiva llamada suma_lista que calcule la suma de todos 
los elementos de una lista de enteros. Puedes asumir que la lista no está 
vacía.'''
def suma_lista(lista, i=0):
    if i==(len(lista)-1):
        return lista[i]
    else:
        return lista[i] + suma_lista(lista, i+1)

print(suma_lista([1,2,3,4]))