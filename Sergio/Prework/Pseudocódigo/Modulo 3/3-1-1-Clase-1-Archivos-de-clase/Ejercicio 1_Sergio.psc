Algoritmo Ejercicio1		
	// Definicion de variables
	Definir numeroPantalla Como Entero
	Definir parImpar Como Texto
	// Inicializacion de variables
	numeroPantalla = 0
	parImpar = ""
	// Operación de lecturaç
	Escribir "Escribe un número entero"
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Si (numeroPantalla MOD 2) = 0
		parImpar = "Par"
	SiNo
		parImpar = "Impar"
	FinSi
	// Operaciones de escritura
	Escribir "El número es ", parImpar
FinAlgoritmo
