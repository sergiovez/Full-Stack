// Crear una función que imprima por pantalla si el numero 
// introducido es multiplo de 2, de 3 o de ambos
Funcion multiplicar(numeroPantalla)
	Definir i, multiplo Como Entero
	i = 0
	multiplo = 0
	Para i=1 Hasta 10 Con Paso 1 Hacer
		multiplo = i * numeroPantalla
		Escribir numeroPantalla, " x ", i, " = ", multiplo
	FinPara
FinFuncion

Algoritmo Ejercicio2
	// Operaciones de lectura
	Definir numeroPantalla Como Entero
	
	// Inicializacion de variables
	numeroPantalla  = 0
	
	// Operaciones de lectura
	Escribir "Introduce un número: "
	Leer numeroPantalla
	
	// Llamar a la función y operaciones de escritura
	Escribir "Tabla de multiplicar del ", numeroPantalla
	Escribir "- - - - - - - - - - - -"
	multiplicar(numeroPantalla)
	
FinAlgoritmo
