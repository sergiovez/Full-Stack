'''PALABRAS PROHIBIDAS: 
Define una lista de 5 palabras aleatorias y una lista de letras prohibidas que contenga tres letras. 
Filtra las palabras en tu lista original crea una nueva lista de palabras filtradas que solo contenga 
aquellas palabras que no tienen ninguna letra prohibida.  '''
lista=['arbol','caballo','pantano','baño','maluma']
prohibidas=['r','m','p']
palabras_permitidas=[]

for palabra in lista:
    permitida = True
    for letra in palabra:
        if letra in prohibidas:
            permitida = False
    if permitida:
        palabras_permitidas.append(palabra)

print(palabras_permitidas)