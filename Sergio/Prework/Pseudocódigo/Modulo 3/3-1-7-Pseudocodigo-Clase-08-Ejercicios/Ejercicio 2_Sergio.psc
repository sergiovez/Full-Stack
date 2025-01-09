Algoritmo Ejercicio2	
	// Definicion de variables
	Definir numeroConsola, i, numeroMayor Como Entero
	Dimension numeroConsola[5]
	
	// Inicializacion de variables
	numeroMayor = 0
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Escribir "Escribe el número ", i+1, " del array"
		Leer numeroConsola[i]
		Si i=0 Entonces
			numeroMayor = numeroConsola[i]
		SiNo
			Si numeroConsola[i]>numeroMayor Entonces
				numeroMayor = numeroConsola[i]
			FinSi
		FinSi
	FinPara

	// Operaciones de escritura
	Escribir "El array es " Sin Saltar
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Escribir numeroConsola[i], " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "El numero mayor es: ", numeroMayor
FinAlgoritmo
