## Ejercicio Matriz
'''
Crea un script que dada una lista de listas M (numérica), identifique si se trata de una matriz y en 
ese caso imprima dos listas correspondientes a: 
1. La fila cuyos elementos suman el máximo 
2. La columna cuyos elementos suman el máximo 
Si no se trata de una matriz devolverá dos listas vacías. 
Por ejemplo: 
M1=[[2,5,3],[6,1,8],[7,5,4]] devolverá: L1 = [7,5,4] y L2 = [2,6,7] 
M2 = [[4,2,3],[4,5],[6,8,2]] devolverá: L1 = [] y L2 = [] 
(Nota: Definimos matriz como una lista de listas donde todas las listas internas tienen el mismo 
numero de objetos) 
'''

# --- Definir la lista
M1 = [[2,5,9],[6,1,8],[7,5,4]]

# --- Definimos las listas de salida
fila_maximo = []
columna_maximo = []
matriz = True

# --- Bucle donde recorremos la lista para verificar que son matrices
for lista in M1:
    if len(lista) != len(M1[0]):
        matriz = False

# --- Obtener la fila de maximos
suma_max_fila = 0
indicador_fila = 0
if matriz:
    for i in range(0,len(M1)):
        if sum(M1[i]) > suma_max_fila:
            suma_max_fila = sum(M1[i])
            indicador_fila = i
    fila_maximo = M1[indicador_fila]

# --- Obtener la columna de maximos
suma_max_columna = 0
indicador_columna = 0
if matriz:
    for j in range(0, len(M1)):
        suma_columna = 0
        for lista in M1:
            suma_columna += lista[j]
        if suma_columna > suma_max_columna:
            suma_max_columna = suma_columna
            indicador_columna = j
    for k in range(0, len(M1)):
        columna_maximo.append(M1[k][indicador_columna])

# --- Mostrar resultados
print(f'La fila cuyos elementos suman el maximo es {fila_maximo}')
print(f'La columna cuyos elementos suman el maximo es {columna_maximo}')