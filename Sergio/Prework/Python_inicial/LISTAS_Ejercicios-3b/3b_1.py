## Ejercicio 1
## Define una lista de 5 palabras aleatorias y una lista de letras prohibidas que contenga tres letras. 
## Filtra las palabras en tu lista original crea una nueva lista de palabras filtradas que solo contenga 
## aquellas palabras que no tienen ninguna letra prohibida. 

## --- Definicion de listas
palabras = ['hola', 'persona', 'colegio', 'estudiante', 'mango']
letras = ['p', 'c', 'g']

palabras_aceptadas = []
incluir = True

for palabra in palabras:
    for letra in letras:
        if letra in palabra:
            incluir = False
    if incluir:
        palabras_aceptadas.append(palabra)
    incluir = True

print(palabras_aceptadas)           