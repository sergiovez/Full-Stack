Algoritmo Ejercicio5	
	// Definicion de variables
	Definir array, num, filas, columnas, numeroAparece, contador Como Entero
	Dimension array[5,5]
	
	// Inicializacion de variables
	num = 0
	filas=0
	columnas=0
	numeroAparece = 0
	contador = 0
	Para filas=0 hasta 4 Hacer
		Para columnas=0 hasta 4 Hacer
			num=azar(10)
			array[filas, columnas] = num
		FinPara
	FinPara
	
	// Operaciones de lectura
	Escribir "Escribe un numero: "
	Leer numeroAparece
	
	// Operaciones de Algoritmo 
	Para filas=0 hasta 4 Hacer
		Para columnas=0 hasta 4 Hacer
			Si array[filas, columnas] = numeroAparece Entonces
				contador = contador + 1
			FinSi
		FinPara
	FinPara
	
	// Operaciones de escritura
	Para filas=0 hasta 4 Hacer
		Para columnas=0 hasta 4 Hacer
			Escribir array[filas, columnas], " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir "El numero ", numeroAparece, " aparece ", contador, " veces"
FinAlgoritmo
