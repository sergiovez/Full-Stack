Algoritmo Ejercicio8	
	// Definicion de variables
	Definir array, fila, columna, suma, planta Como Entero
	Dimension array[3,4]
	
	// Inicializacion de variables
	fila = 0
	columna = 0
	suma = 0
	planta = 0
	Para fila = 0 hasta 2 Hacer
		Para columna = 0 hasta 3 Hacer
			array[fila, columna] = azar(4)+1
		FinPara
	FinPara
	
	// Operaciones de escritura
	Para fila = 0 hasta 2 Hacer
		Para columna = 0 hasta 3 Hacer
			Escribir array[fila, columna], " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Para fila = 2 hasta 0 Con Paso -1 Hacer
		planta = planta + 1
		suma = 0
		Para columna = 0 hasta 3 Hacer
			suma = suma + array[fila, columna]
		FinPara
		Escribir "El numero de vecinos en la planta ", planta, " es: ", suma
		Escribir ""
	FinPara

FinAlgoritmo
