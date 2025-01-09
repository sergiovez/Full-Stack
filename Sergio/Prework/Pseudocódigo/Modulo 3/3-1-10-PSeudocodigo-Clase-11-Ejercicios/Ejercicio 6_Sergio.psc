Funcion mcd = maximoComunDivisor (num1, num2)
	Definir divisoresNum1, divisoresNum2, numDivisores1, numDivisores2 Como Entero
	Definir i, j, mcd Como Entero
	Dimension divisoresNum1[num1]
	Dimension divisoresNum2[num2]
	
	// Inicializar
	numDivisores1 = 0
	numDivisores2 = 0
	i = 0
	j = 0
	mcd = 0
	Para i=0 Hasta num1-1 Con Paso 1 Hacer
		divisoresNum1[i] = num1
	FinPara
	Para i=0 Hasta num2-1 Con Paso 1 Hacer
		divisoresNum2[i] = num2
	FinPara
	
	// Generar los divisores
	Para i=0 Hasta num1-1 Con Paso 1 Hacer
		Si (num1 MOD (i+1) = 0) Entonces // Es divisor  
			divisoresNum1[numDivisores1] = i+1
			numDivisores1 = numDivisores1 + 1
		FinSi
	FinPara
	Para i=0 Hasta num2-1 Con Paso 1 Hacer
		Si (num2 MOD (i+1) = 0) Entonces // Es divisor  
			divisoresNum2[numDivisores2] = i+1
			numDivisores2 = numDivisores2 + 1
		FinSi
	FinPara
	
	// Compararlos
	Para i=0 Hasta numDivisores1 Con Paso 1 Hacer
		Para j=0 Hasta numDivisores2 Con Paso 1 Hacer
			Si (divisoresNum1[i] = divisoresNum2[j]) Y (divisoresNum1[i] > mcd) Entonces
				mcd = divisoresNum1[i]
			FinSi
		FinPara
	FinPara
FinFuncion

Algoritmo Ejercicio6
	// Declarar variables
	Definir num1, num2, mcd Como Enteros
	
	// Inicializar variables
	num1 = 0
	num2 = 0
	mcd = 0
	
	// Operaciones de lectura
	Escribir "Escribe el primer numero: "
	Leer num1
	Escribir "Escribe el segundo numero: "
	Leer num2	
	
	// Operaciones del algoritmo y llamada a funciones
	mcd = maximoComunDivisor (num1, num2)
	
	// Operaciones de escritura
	Escribir "El MCD de ", num1, " y ", num2, " es: ", mcd
FinAlgoritmo
