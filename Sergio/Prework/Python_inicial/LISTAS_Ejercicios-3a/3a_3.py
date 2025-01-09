## Ejercicio 3
## 1. Crea una lista llamada frutas que contengan los siguientes nombres de frutas como cadenas 
## de caracteres: manzana, plátano, cereza, pera, higo, frambuesa y fresa. 
## 2. Usa la función len() para imprimir la longitud de la lista frutas. 
## 3. Accede al objeto numero 3 de la lista e imprímelo or consola. 
## 4. Modifica el segundo objeto de la lista y cambiado a mora. 
## 5. Añade el string mango al final de la lista. 
## 6. Usa el método insert() y añade el string “uva“ año comienzo de la lista. 
## 7. Usa un bucle para recorrer la lista e imprimir cada fruta por la consola 
## 8. Usa el método pop() para eliminar el último elemento de la lista y guárdalo en una variable 
## llamada “ultima_fruta“. 
## 9. Realiza un bucle que recorra la lista e imprima cada una de las frutas por consola 
## 10. Modifica el script para que imprima también la longitud de cada nombre de fruta por consola 
## 11. Modifica el script para que recorra la lista de frutas y solo imprima aquellos nombres que 
## tengan más de 5 caracteres 
## 12. Usa el método remove() para borrar el string “cereza“ de la lista. 
## 13. Usa el método clear() para vaciar la lista. 
## Recomendación: En cada paso comprueba que el código hace aquello que quieres

## 1
frutas = ['manzana', 'platano', 'cereza', 'pera', 'higo', 'frambuesa', 'fresa']
print(frutas)
## 2
print(len(frutas))
## 3
print(frutas[2])
## 4
frutas[1] = 'mora'
print(frutas)
## 5
frutas.append('mango')
print(frutas)
# 6
frutas.insert(0,'uva')
print(frutas)
# 7
for fruta in frutas:
    print(fruta)
# 8
ultima_fruta = frutas.pop()
print(ultima_fruta)
print(frutas)
# 10
for fruta in frutas:
    print(fruta)
    print(len(fruta))
# 11
for fruta in frutas:
    if len(fruta) > 5:
        print(fruta)
# 12
frutas.remove('cereza')
print(frutas)
# 13
frutas.clear()
print(frutas)