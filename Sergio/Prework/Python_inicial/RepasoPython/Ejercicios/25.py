'''ENCRIPTACIÓN ROT13: 
El abecedario latino es un sistema de escritura alfabético más usado del mundo hoy en día. Se 
compone de 26 letras principales, más ciertas modificaciones y letras adicionales según el idioma 
del que se trate (por ejemplo, en castellano y gallego se incluye la ”ñ”, en portugués, francés y 
catalán la ”Ç”, en alemán la ”ß”, etc.). 
Aplicar el cifrado ROT13 a un texto se reduce a examinar sus caracteres alfabéticos y sustituirlos 
por la letra que está 13 posiciones por delante en el alfabeto, volviendo al principio si es necesario 
y conservando las mayúsculas y minúsculas: a se convierte en n, B se convierte en O, y así hasta 
la Z, que se convierte en M. Solo quedan afectadas las 26 letras principales que aparecen en el 
alfabeto latino; los números, símbolos, espacios y otros caracteres se dejan igual.  
[a,b,c,d,e,f,g,h,i,j,k,l,m] 			
ROT13 
[n,o,p,q,r,s,t,u,v,w,x,y,z]			
[H, O, L, A]
 [U, B, Y, N]
 1. Desarrolla un script que recibiendo de entrada una cadena de caracteres devuelva el texto 
codificado según el cifrado ROT13 
2. Desarrolla ahora un script que compare dos cadenas de caracteres y nos diga si una de ellas 
esta codificación ROT13 de la otra.  '''

### podemos desarrollar el script con strings
alfabeto = "abcdefghijklmnopqrstuvwxyz"
alfabeto_mayusculas = alfabeto.upper()

palabra = input('Palabra: ')
palabra_nueva = ''

for letra in palabra:
    if letra.isalpha():
        letra_minus = letra.lower()
        for i in range(len(alfabeto)):
            if letra_minus == alfabeto[i]:
                indice = i 
                if 0 <= i < 13:
                    if letra.islower():
                        palabra_nueva += alfabeto[i+13]
                    else:
                        palabra_nueva += alfabeto_mayusculas[i+13]
                else:
                    if letra.islower():    
                        palabra_nueva += alfabeto[i-13]
                    else:
                        palabra_nueva += alfabeto_mayusculas[i-13]                    
    else:
        palabra_nueva += letra

print(palabra_nueva)