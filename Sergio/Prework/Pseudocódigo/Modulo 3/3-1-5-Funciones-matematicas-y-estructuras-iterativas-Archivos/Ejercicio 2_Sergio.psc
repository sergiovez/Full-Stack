Algoritmo Ejercicio2	
	// Definicion de variables
	Definir numeroPantalla1, numeroPantalla2, suma, i Como Entero
	// Inicializacion de variables
	numeroPantalla1 = 0
	numeroPantalla2 = 0
	suma = 0
	i = 0
	// Operación de lectura
	Escribir "Introducir numero 1: "
	Leer numeroPantalla1
	Escribir "Introducir numero 2: "
	Leer numeroPantalla2
	// Operaciones del Algoritmo
	Para i=(numeroPantalla1+1) Hasta (numeroPantalla2-1) Con Paso 1 Hacer
		suma=suma+i
	FinPara
	// Operaciones de escritura
	Escribir "La suma es ", suma
FinAlgoritmo
