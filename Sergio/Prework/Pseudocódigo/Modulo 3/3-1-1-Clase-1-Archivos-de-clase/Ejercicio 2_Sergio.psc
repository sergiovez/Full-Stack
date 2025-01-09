Algoritmo Ejercicio2		
	// Definicion de variables
	Definir numeroPantalla1,numeroPantalla2  Como Entero
	Definir resultadoDivision Como Real
	// Inicializacion de variables
	numeroPantalla1 = 0
	numeroPantalla2 = 0
	resultadoDivision = 0
	// Operación de lecturaç
	Escribir "Escribe el primer número entero"
	Leer numeroPantalla1
	Escribir "Escribe el segundo número entero"
	Leer numeroPantalla2
	// Operaciones del Algoritmo
	Si numeroPantalla2 = 0
		Escribir "Error: no se puede dividir por 0"
	SiNo
		// Operaciones de escritura
		resultadoDivision = numeroPantalla1/numeroPantalla2
		Escribir "El resultado de la division es ", resultadoDivision
	FinSi
FinAlgoritmo