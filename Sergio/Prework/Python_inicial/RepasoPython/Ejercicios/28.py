'''MATRIZ: 
Crea un script que dada una lista de listas M (numérica), identifique si se trata de una matriz y en 
ese caso imprima dos listas correspondientes a: 
1. La fila cuyos elementos suman el máximo 
2. La columna cuyos elementos suman el máximo 
Si no se trata de una matriz devolverá dos listas vacías. 
Por ejemplo: 
M1=[[2,5,3],[6,1,8],[7,5,4]]  devolverá: L1 = [7,5,4] y L2 = [2,6,9,7] 
M2 = [[4,2,3],[4,5],[6,8,2]] devolverá: L1 = [] y L2 = [] 
(Nota: Definimos matriz como una lista de listas donde todas las listas internas tienen el mismo 
numero de objetos)'''
M1 = [[2,5,3],[6,1,8],[7,5,4]]
M2 = [[4,2,3],[4,5],[6,8,2]]

matriz = M1

ismatriz = True
posicion = 0

while (ismatriz) and (posicion < len(matriz)):
    if posicion == 0:
        longitud = len(matriz[posicion])
    elif len(matriz[posicion]) != longitud:
        ismatriz = False
        break
    posicion = posicion + 1

if ismatriz:
    print('ES MATRIZ')
else:
    print('NO ES MATRIZ')

filas = [0] * len(matriz) 
columnas = [0] * len(matriz[0])

for i in range(len(matriz)):
    for j in range(len(matriz[i])):
        filas[i] += matriz[i][j]
        columnas[j] += matriz[i][j]


print(filas)
print(columnas)