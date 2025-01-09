'''BUSCANDO EN PI 
Busca si tu fecha de nacimiento esta en los primeros 10000 digitos de pi (y 
en que posición. Puedes usar find()).
 Puedes usar el archivo pi_10000.txt'''

try:
    fpi = open('pi_10000.txt')
except FileNotFoundError:
    print('Archivo no encontrado')
else:
    fpi = fpi.read()
    posicion = fpi.find('141592')
    if posicion == -1:
        print('Cumpleaños no encontrado')
    else:
        print(f'El cumpleaños aparece en la posicion {posicion}.')

