Algoritmo Ejercicio6		
	// Definicion de variables
	Definir numero1, centenas, decenas, unidades, resto Como Entero
	Definir cifraBaja Como Entero
	// Inicializacion de variables
	numero1 = 0
	centenas = 0
	decenas = 0
	resto = 0
	unidades = 0
	cifraBaja = 0
	// Operación de lectura
	Escribir "Escribe un numero de 3 cifras: "
	Leer numero1
	// Operaciones del Algoritmo
	Si NO ((trunc(numero1/100) < 1) O trunc(numero1/1000) >= 1)
		// Obtenemos las centenas
		centenas = trunc(numero1/100)
		resto = numero1 MOD 100
		// Obtenemos las decenas
		decenas = trunc(resto/10)
		resto = resto MOD 10
		// Obtenemos las unidades
		unidades = resto
		// Obtener cifra mas baja
		Si (centenas <= decenas) Y (centenas <= unidades)
			cifraBaja = centenas
		SiNo
			Si (decenas <= unidades)
				cifraBaja = decenas
			SiNo
				cifraBaja = unidades
			FinSi
		FinSi
		Escribir "La cifra mas baja es ", cifraBaja
	SiNo
		Escribir "El número tiene que ser de 3 cifras"
	FinSi
FinAlgoritmo
