Algoritmo Ejercicio6	
	// Definicion de variables
	Definir numeroPantalla, i Como Entero
	// Inicializacion de variables
	numeroPantalla = 0
	i = 0
	// Operación de lectura
	Escribir "Introducir numero: "
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Para i=1 Hasta numeroPantalla Con Paso 1 Hacer
		Si (i MOD 2 = 0) Y (i MOD 3 = 0) Entonces
			Escribir i
		FinSi
	FinPara
FinAlgoritmo
