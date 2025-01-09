Algoritmo Ejercicio9	
	// Definicion de variables
	Definir ladoCuadrado, ancho, alto Como Entero
	// Inicializacion de variables
	ladoCuadrado = 0
	alto = 0
	ancho = 0
	// Operación de lectura
	Escribir "Introducir el lado del cuadrado: "
	Leer ladoCuadrado
	// Operaciones del Algoritmo
	Para alto=1 Hasta ladoCuadrado	Con Paso 1 Hacer
		Para ancho=1 Hasta ladoCuadrado Con Paso 1 Hacer
			Si (alto=ancho) O (ladoCuadrado+1 = alto+ancho) Entonces
				Escribir "*" Sin Saltar
			SiNo
				Escribir " " Sin Saltar
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
