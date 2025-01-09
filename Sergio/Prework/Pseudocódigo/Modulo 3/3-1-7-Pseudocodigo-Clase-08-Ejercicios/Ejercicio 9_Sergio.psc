Algoritmo Ejercicio9	
	// Definicion de variables
	Definir frase, nuevaPalabra, letra, letra1 Como Texto
	Definir i Como Entero
	
	// Inicializacion de variables
	frase = ""
	nuevaPalabra = ""
	letra = ""
	letra1 = ""
	i = 0
	
	// Operaciones de lectura
	Escribir "Escribe una frase: "
	Leer frase
	
	// Operaciones de Algoritmo 
	Para i=0 hasta longitud(frase)-1 Hacer
		letra = Subcadena(frase, i, i)
		Si i=0
			nuevaPalabra = letra
		SiNo
			Si (letra = ",") O (letra = " ")
				letra1 = Subcadena(frase, i+1, i+1)
				nuevaPalabra = Concatenar(nuevaPalabra,letra1)
			FinSi
		FinSi
	FinPara
	
	// Operaciones de escritura
	Escribir "La nueva palabra es: ", nuevaPalabra
Fin Algoritmo
