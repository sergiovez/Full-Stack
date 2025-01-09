// Crear una función que imprima por pantalla si el numero 
// introducido es multiplo de 2, de 3 o de ambos
Funcion suma = obtenerSuma(array)
	Definir fila, columna, sumaNum Como Entero
	Definir suma como Texto
	suma = ""
	fila = 0
	columna = 0
	sumaNum = 0
	
	Para fila=0 Hasta 4 Con Paso 1 Hacer
		sumaNum = 0
		Para columna=0 Hasta 6 Con Paso 1 Hacer
			sumaNum = sumaNum + array[fila, columna]
		FinPara
		suma = Concatenar(suma, " ")
		suma = Concatenar(suma, ConvertirATexto(sumaNum))
	FinPara
	
FinFuncion

Algoritmo Ejercicio5
	// Definicion de variables
	Definir array, i, j Como Entero	
	Dimension array[5,7]
	Definir suma como Texto
	
	// Inicializacion de variables
	i = 0
	j = 0

	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 6 Con Paso 1 Hacer
			array[i,j]=azar(41) + 10
		FinPara
	FinPara
	
	// Obtener el valor mas alto
	suma = obtenerSuma(array)
	
	// Llamar a la función y operaciones de escritura
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 6 Con Paso 1 Hacer
			Escribir array[i,j],  " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "La suma de cada fila es ", suma
	
FinAlgoritmo
