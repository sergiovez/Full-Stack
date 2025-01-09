Algoritmo Ejercicio7	
	// Definicion de variables
	Definir frase, letra Como Texto
	Definir vocales, consonantes, i Como Entero
	
	// Inicializacion de variables
	frase = ""
	letra = ""
	i = 0
	vocales = 0
	consonantes = 0
	
	// Operaciones de lectura
	Escribir "Escribe una frase: "
	Leer frase
	
	// Operaciones de Algoritmo 
	Para i=0 hasta longitud(frase)-1 Hacer
		letra = SubCadena(frase, i, i)
		Si (letra = "a") O (letra = "e") O (letra = "i") O (letra = "o") O (letra = "u") Entonces
			vocales = vocales + 1
		SiNo
			Si (letra <> " ") Entonces 
				consonantes = consonantes + 1
			FinSi
		FinSi
	FinPara
	
	// Operaciones de escritura
	Escribir "La frase -", frase, "- tiene ", vocales, " vocales y ", consonantes, " consonantes"

FinAlgoritmo
