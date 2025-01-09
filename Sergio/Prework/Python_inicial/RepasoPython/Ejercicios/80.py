'''Tienes a tu disposición un conjunto de discos numerados del 1 al N y tres torres 
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
desde la torre A hasta la torre C.
 A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada
  N de discos
  N de torres
  Torres : origen, desitno, auxiliar
 Salida
 Mover disco de la torre A a la torre D
 Mover disco de la torre A a la torre B'''

def torresHanoi(num, origen, destino, auxiliar):
    if num==1:
        print(f'Mover el disco {num} de la torre {origen} a la torre {destino}')
        return
    torresHanoi(num-1, origen, auxiliar, destino)
    print(f'Mover el disco {num} de la torre {origen} a la torre {destino}')
    torresHanoi(num-1, auxiliar, destino, destino)

torresHanoi(3,'origen','destino','auxiliar')
