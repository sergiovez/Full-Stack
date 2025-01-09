'''BUSCANDO EN PI 
Busca si tu fecha de nacimiento esta en los primeros 10000 digitos de pi (y 
en que posición. Puedes usar find()).
 Puedes usar el archivo pi_10000.txt'''

def buscar_nacimiento(archivo, DNI):
    try:
        f = open(archivo)
    except FileNotFoundError:
        print('ERROR: Archivo no encontrado')
    else:
        texto = f.read()
        if texto.find(DNI)>0:
            aparece = True
        else:
            aparece = False
        return aparece
    
print(buscar_nacimiento('pi_10000.txt', '45'))
print(buscar_nacimiento('pi_10000.txt', '4856793893629390'))
print(buscar_nacimiento('pi_100200.txt', '45'))
    