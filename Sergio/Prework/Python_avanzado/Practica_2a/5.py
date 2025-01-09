''' NUMERO FAVORITO 
Escribe un programa que solicite al usuario su número favorito. Utiliza 
json.dump() para almacenar este número en un archivo. Escribe un 
programa separado que lea este valor e imprima el mensaje: "Sé cuál es tu 
número favorito… Es ____.” Combina ambos programas en un solo archivo 
(puedes crear tantas funciones como necesites). Si el número ya está 
almacenado, muestra el número favorito al usuario. Si no lo está, solicita al 
usuario su número favorito y guárdalo en un archivo. Ejecuta el programa al 
menos dos veces para asegurarte de que funciona correctamente.'''

import json

def abrir(archivo):
    farchivo = open(archivo, 'w+')
    return farchivo

def almacenar(numero, farchivo):
    jsonarchivo = json.dump(numero, farchivo)
    return jsonarchivo

def escribir(jsonarchivo):
    numero = json.load(jsonarchivo)
    print(f'Se cual es tu numero favorito. Es... el {numero}!')

numero_usuario = input('Introduce tu numero favorito')
archivo = 'numero.txt'

farchivo = abrir(archivo)
jsonarchivo = almacenar(numero_usuario, farchivo)
escribir(jsonarchivo)

