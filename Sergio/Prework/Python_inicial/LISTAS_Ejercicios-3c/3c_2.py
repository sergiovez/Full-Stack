## Ejercicio 2
## El abecedario latino es un sistema de escritura alfabético más usado del mundo hoy en día. Se 
## compone de 26 letras principales, más ciertas modificaciones y letras adicionales según el idioma 
## del que se trate (por ejemplo, en castellano y gallego se incluye la ”ñ”, en portugués, francés y 
## catalán la ”Ç”, en alemán la ”ß”, etc.). 
## Aplicar el cifrado ROT13 a un texto se reduce a examinar sus caracteres alfabéticos y sustituirlos 
## por la letra que está 13 posiciones por delante en el alfabeto, volviendo al principio si es necesario 
## y conservando las mayúsculas y minúsculas: a se convierte en n, B se convierte en O, y así hasta 
## la Z, que se convierte en M. Solo quedan afectadas las 26 letras principales que aparecen en el 
## alfabeto latino; los números, símbolos, espacios y otros caracteres se dejan igual

alfabeto = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
alfabeto_mayusculas = []
for letra in alfabeto:
    alfabeto_mayusculas.append(letra.upper())

texto = str(input('Introduce el texto a codificar: '))
texto_cifrado = ''

for letra in texto:
    if letra.islower():
        # Es minuscula
        if alfabeto.index(letra) <= 13:
            letra_cifrada = alfabeto[alfabeto.index(letra)+13]
        else:
            letra_cifrada = alfabeto[alfabeto.index(letra)-13]
        texto_cifrado += letra_cifrada
    elif letra.isupper():
        # Es mayuscula
        if alfabeto_mayusculas.index(letra) <= 13:
            letra_cifrada = alfabeto_mayusculas[alfabeto_mayusculas.index(letra)+13]
        else:
            letra_cifrada = alfabeto_mayusculas[alfabeto_mayusculas.index(letra)-13]
        texto_cifrado += letra_cifrada
    else:
        continue
print(texto_cifrado)