Algoritmo Ejercicio4	
	// Definicion de variables
	Definir frase, c Como Texto
	Definir contador, i, long Como Entero
	
	// Inicializacion de variables
	frase = ""
	c = ""
	contador = 0
	i = 0
	long = 0
	
	// Operaciones de lectura
	Escribir "Escribe un texto: "
	Leer frase
	Escribir "Y una letra: "
	Leer c
	long = Longitud(frase)
	
	// Operaciones de Algoritmo 
	Para i=0 Hasta long-1 Hacer
		Si subcadena(frase, i, i) = c Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	// Operaciones de escritura
	Escribir "La letra ", c, " aparece ", contador, " veces en la frase -", frase, "-"
FinAlgoritmo
