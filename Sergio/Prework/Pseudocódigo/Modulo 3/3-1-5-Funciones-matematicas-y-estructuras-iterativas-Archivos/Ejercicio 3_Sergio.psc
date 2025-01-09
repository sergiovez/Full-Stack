Algoritmo Ejercicio3	
	// Definicion de variables
	Definir numeroPantalla, i Como Entero
	// Inicializacion de variables
	numeroPantalla = 0
	i = 0
	// Operación de lectura
	Escribir "Introducir numero: "
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Para i=numeroPantalla Hasta 1 Con Paso -1 Hacer
		Si NO (i MOD 2) = 0
			Escribir i, ", " Sin Saltar
		FinSi
	FinPara
FinAlgoritmo
