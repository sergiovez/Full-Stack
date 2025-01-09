// Crear una función que imprima por pantalla si el numero 
// introducido es multiplo de 2, de 3 o de ambos
Funcion alto = obtenerAlto(array)
	Definir alto, i Como Entero
	alto = 0
	i = 0
	Para i=0 Hasta 10-1 Con Paso 1 Hacer
		Si array[i]>alto
			alto = array[i]
		FinSi
	FinPara
FinFuncion

Algoritmo Ejercicio2
	// Definicion de variables
	Definir array, i, alto Como Entero
	Dimension array[10]
	
	// Inicializacion de variables
	i = 0
	alto = 0
	Para i=0 Hasta 10-1 Con Paso 1 Hacer
		array[i]=azar(49)+1
	FinPara
	
	// Obtener el valor mas alto
	alto = obtenerAlto(array)
	
	// Llamar a la función y operaciones de escritura
	Para i=0 Hasta 10-1 Con Paso 1 Hacer
		Escribir array[i], " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "El número más alto es del ", alto
	
FinAlgoritmo
