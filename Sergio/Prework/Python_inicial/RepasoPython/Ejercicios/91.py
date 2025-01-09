''' Ejercicio de Memoización en Análisis de Texto
 Imagina que estás trabajando en un sistema de análisis de texto que requiere 
calcular la frecuencia de ocurrencia de palabras en un conjunto de 
documentos. Implementa una función llamada 
calcular_frecuencia_palabras que 
tome como entrada un texto y devuelva un diccionario que muestre la 
frecuencia de cada palabra en el texto.
  La función debe ser capaz de manejar textos y ser insensible a 
mayúsculas/minúsculas (por ejemplo, "Hola" y "hola" se consideran la 
misma palabra).
  Se deben excluir las palabras comunes (artículos, preposiciones, etc.) que 
no aportan información relevante al análisis.
 Utiliza memoización para evitar recalcular la frecuencia de palabras para el 
mismo texto.
A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada- texto 1- texto 2
 Salida- frecuencia de palabras, conteo por
 palabra.
 Tienes a tu disposición un conjunto de discos numerados del 1 al N y tres torres 
etiquetadas como A, B y C. La torre A contiene inicialmente todos los discos 
apilados en orden descendente, desde el disco N en la parte inferior hasta el 
disco 1 en la parte superior.
 Tu tarea es implementar una solución recursiva para mover todos los discos 
desde la torre A hasta la torre C, siguiendo las reglas clásicas de las Torres de 
Hanoi:
  Puedes mover un disco a una torre adyacente.
  Solo puedes mover un disco a la cima de otra pila si esa pila está vacía o si 
el disco superior es más grande que el disco que estás colocando.
 Debes definir una función llamada 
torres_de_hanoi(n, origen, destino, auxiliar) 
que, dado el número total de discos 
n y las torres de origen, destino y auxiliar, 
imprima los pasos necesarios para lograr el movimiento de todos los discos 
desde la torre A hasta la torre C.'''