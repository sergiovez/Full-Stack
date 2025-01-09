// Crear una función que imprima por pantalla si el numero 
// introducido es multiplo de 2, de 3 o de ambos
Funcion multiplo(numeroPantalla)
	Si (numeroPantalla MOD 2 = 0) Y (numeroPantalla MOD 3 = 0) Entonces
		Escribir "El número ", numeroPantalla, " es multiplo de 2 y 3"
	SiNo
		Si (numeroPantalla MOD 2 = 0) Entonces
			Escribir "El número ", numeroPantalla, " es multiplo de 2"
		SiNo 
			Si (numeroPantalla MOD 3 = 0) Entonces
				Escribir "El número ", numeroPantalla, " es multiplo de 3"
			SiNo
				Escribir "El número ", numeroPantalla, " no es multiplo ni de 2 ni de 3"
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo Ejercicio1
	// Operaciones de lectura
	Definir numeroPantalla Como Entero
	
	// Inicializacion de variables
	numeroPantalla  = 0
	
	// Operaciones de lectura
	Escribir "Introduce un número: "
	Leer numeroPantalla
	
	// Llamar a la función y operaciones de escritura
	multiplo(numeroPantalla)
	
FinAlgoritmo
