''' RESTAURANTE ONLINE:
 En una hamburguesería han abierto la posibilidad de hacer pedidos online. Ofrecen básicamente 
dos productos de fama mundial: su hamburguesa clásica y la hamburguesa vegana. 
Los ingredientes extra de la hamburguesa clásica son:- Queso Idiazabal- Bacon- Huevo
 Los ingredientes extra de la hamburguesa vegana son:- Tofu- Cebolla caramelizada
 Crea un script que le pregunte al usuario que tipo de hamburguesa quiere. En función de la 
respuesta debe enseñarle los ingredientes extra disponibles y permitirle escoger uno de ellos. 
Finalmente debe imprimir por pantalla que tipo de hamburguesa se ha elegido y cuales son sus 
ingredientes. '''

import time

hamburguesa = input('Tipo de hamburguesa (CLASICA / VEGANA): ')
ingredientes_clasica = ['Queso Idiazabal', 'Bacon', 'Huevo']
ingredientes_vegana = ['Tofu', 'Cebolla caramelizada']

if hamburguesa.upper() == 'CLASICA':
    print('La lista de ingredientes disponibles es:')
    for ingrediente in ingredientes_clasica:
        print(ingrediente)
    time.sleep(3)
    ingrediente_sel = (input('Ingrediente seleccionado: '))
    if ingrediente_sel in ingredientes_clasica:
        print(f'Has seleccionado una hamburguesa {hamburguesa.lower()} con {ingrediente_sel.lower()} como ingrediente')
    else:
        print('Ingrediente no disponible')
elif hamburguesa.upper() == 'VEGANA':
    print('La lista de ingredientes disponibles es:')
    for ingrediente in ingredientes_vegana:
        print(ingrediente)
    time.sleep(3)
    ingrediente_sel = (input('Ingrediente seleccionado: '))
    if ingrediente_sel in ingredientes_vegana:
        print(f'Has seleccionado una hamburguesa {hamburguesa.lower()} con {ingrediente_sel.lower()} como ingrediente')
    else:
        print('Ingrediente no disponible')
else:
    print('No existe ese tipo de hamburguesa')