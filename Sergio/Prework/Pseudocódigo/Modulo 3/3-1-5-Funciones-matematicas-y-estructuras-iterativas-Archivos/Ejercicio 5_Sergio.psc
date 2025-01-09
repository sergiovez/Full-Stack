Algoritmo Ejercicio5	
	// Definicion de variables
	Definir numeroPantalla Como Entero
	// Inicializacion de variables
	numeroPantalla = 0
	// Operación de lectura
	Repetir
		Escribir "Introducir numero: "
		Leer numeroPantalla
		Si numeroPantalla < 10
			Escribir numeroPantalla, " es menor que 10"
		SiNo
			Si numeroPantalla = 10
				Escribir numeroPantalla, " es igual a 10"
			SiNo
				Escribir numeroPantalla, " es mayor que 10"
			FinSi
		FinSi
	Hasta que numeroPantalla = 0
FinAlgoritmo
