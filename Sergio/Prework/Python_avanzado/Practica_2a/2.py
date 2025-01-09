'''MANIPULACION DE ARCHIVOS  Y FILENOTFOUNDERROR 
Crea dos archivos, cats.txt y dogs.txt. Almacena al menos tres nombres de 
gatos en el primer archivo y tres nombres de perros en el segundo archivo. 
Escribe un programa que intente leer estos archivos e imprima el contenido 
de cada archivo en la pantalla. Envuelve tu código en un bloque try-except 
para capturar el error de FileNotFoundError, e imprime un mensaje amigable 
si falta algún archivo. Mueve uno de los archivos a una ubicación diferente 
en tu sistema y asegúrate de que el código en el bloque except se ejecute 
correctamente. Modifica tu bloque except para que falle en silencio si falta 
alguno de los archivos.'''

try:
    fperros = open('dogs.txt','r')
    fgatos = open('cats.txt','r')
except FileNotFoundError:
    print('Falta al menos uno de los archivos')
else:
    perros = fperros.read()
    gatos = fgatos.read()
    print(perros)
    print(gatos)