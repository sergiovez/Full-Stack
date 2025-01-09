Algoritmo Ejercicio3	
	// Definicion de variables
	Definir tamanoArray, array, numeroAzar, suma, i Como Entero
	Definir media como Real
	// Inicializacion de variables
	tamanoArray = 0
	numeroAzar = 0
	suma = 0
	media = 0
	
	Escribir "Escribe el tamaño del array: "
	Leer tamanoArray
	Dimension array[tamanoArray]
	
	Escribir "El array es: " Sin Saltar
	
	Para i=0 Hasta tamanoArray-1 Con Paso 1 Hacer
		numeroAzar = azar(16)+5 
		suma = suma + numeroAzar
		array[i] = numeroAzar
		Escribir array[i] " " Sin Saltar
	FinPara
	Escribir ""
	media = suma/tamanoArray
	
	// Operaciones de escritura
	Escribir "La media es: ", media
FinAlgoritmo
