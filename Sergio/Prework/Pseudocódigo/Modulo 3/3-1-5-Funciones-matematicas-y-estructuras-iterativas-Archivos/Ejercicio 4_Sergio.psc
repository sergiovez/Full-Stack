Algoritmo Ejercicio4
	// Definicion de variables
	Definir numeroPantalla, i, Factorial Como Entero
	// Inicializacion de variables
	numeroPantalla = 0
	i = 0
	Factorial = 1
	// Operación de lectura
	Escribir "Introducir numero: "
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Para i=1 Hasta numeroPantalla Con Paso 1 Hacer
		Factorial = Factorial * i
	FinPara
	// Operacion de escritura
	Escribir "El factorial de " numeroPantalla " es: " Factorial
FinAlgoritmo
