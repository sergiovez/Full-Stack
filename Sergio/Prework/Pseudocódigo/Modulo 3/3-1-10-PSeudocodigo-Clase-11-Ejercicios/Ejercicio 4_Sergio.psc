// Crear una función que imprima por pantalla si el numero 
// introducido es multiplo de 2, de 3 o de ambos
Funcion posicion = obtenerAlto(array)
	Definir fila, columna, altoNum Como Entero
	Definir posicion, fila_pos, columna_pos como Texto
	posicion = ""
	fila = 0
	columna = 0
	fila_pos = ""
	columna_pos = ""
	altoNum = 0
	
	Para fila=0 Hasta 4 Con Paso 1 Hacer
		Para columna=0 Hasta 6 Con Paso 1 Hacer
			Si array[fila,columna] > altoNum Entonces
				altoNum = array[fila,columna] 
				fila_pos = ConvertirATexto(fila)
				columna_pos = ConvertirATexto(columna)
			FinSi
		FinPara
	FinPara
	
	posicion = Concatenar("[", fila_pos)
	posicion = Concatenar(posicion, ",")
	posicion = Concatenar(posicion, columna_pos)
	posicion = Concatenar(posicion,"]")
FinFuncion

Algoritmo Ejercicio4
	// Definicion de variables
	Definir array, i, j, fila, columna Como Entero
	Definir posicion Como Texto	
	Dimension array[5,7]
	
	// Inicializacion de variables
	i = 0
	j = 0
	fila = 0
	columna = 0
	posicion = ""
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 6 Con Paso 1 Hacer
			array[i,j]=azar(41) + 10
		FinPara
	FinPara
	
	// Obtener el valor mas alto
	posicion = obtenerAlto(array)
	
	// Llamar a la función y operaciones de escritura
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Para j=0 Hasta 6 Con Paso 1 Hacer
			Escribir array[i,j],  " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "La posición del numero mas alto es ", posicion
	
FinAlgoritmo
