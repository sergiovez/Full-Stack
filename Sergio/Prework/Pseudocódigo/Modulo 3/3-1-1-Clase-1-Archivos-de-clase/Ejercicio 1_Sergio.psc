Algoritmo Ejercicio1		
	// Definicion de variables
	Definir numeroPantalla Como Entero
	Definir parImpar Como Texto
	// Inicializacion de variables
	numeroPantalla = 0
	parImpar = ""
	// Operaci�n de lectura�
	Escribir "Escribe un n�mero entero"
	Leer numeroPantalla
	// Operaciones del Algoritmo
	Si (numeroPantalla MOD 2) = 0
		parImpar = "Par"
	SiNo
		parImpar = "Impar"
	FinSi
	// Operaciones de escritura
	Escribir "El n�mero es ", parImpar
FinAlgoritmo
