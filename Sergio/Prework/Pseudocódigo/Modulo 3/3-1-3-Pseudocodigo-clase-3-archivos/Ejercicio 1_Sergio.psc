Algoritmo Ejercicio1		
	// Definicion de variables
	Definir numeroPantalla Como Entero
	Definir multiplo Como Texto
	// Inicializacion de variables
	numeroPantalla = 0
	multiplo = ""
	// Operación de lectura
	Escribir "Introducir numero: "
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Si (numeroPantalla MOD 2 =0) Y (numeroPantalla MOD 3 =0)
		multiplo=" es multiplo de 2 y de 3 a la vez"
	SiNo
		multiplo=" no es multiplo de 2 y de 3 a la vez"
	FinSi
	// Operaciones de escritura
	Escribir "El número ", numeroPantalla,multiplo 
FinAlgoritmo
