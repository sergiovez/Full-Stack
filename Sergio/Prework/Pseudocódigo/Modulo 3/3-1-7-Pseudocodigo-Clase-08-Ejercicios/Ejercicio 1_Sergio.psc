Algoritmo Ejercicio1	
	// Definicion de variables
	Definir numeroAleatorio, i, numerosArray, posicion Como Entero
	Dimension numerosArray[5]
	
	// Inicializacion de variables
	i = 0
	numeroAleatorio = 0
	Para i=0 Hasta 4 Con Paso 1 Hacer
		numeroAleatorio = azar(20)
		numerosArray[i] = numeroAleatorio
	FinPara
	
	// Operación de lectura
	Escribir "Introducir una posición del array (0 al 4): "
	Leer posicion

	// Operaciones de escritura
	Escribir "El array es " Sin Saltar
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Escribir numerosArray[i], " " Sin Saltar
	FinPara
	Escribir ""
	Si NO posicion > 4 Entonces
		Escribir "La posición [", posicion, "] del array es: ", numerosArray[posicion]
	SiNo
		Escribir "La longitud del array es de 0 a 4, por lo que la posicion [", posicion, "] no es valida"
	FinSi
FinAlgoritmo
