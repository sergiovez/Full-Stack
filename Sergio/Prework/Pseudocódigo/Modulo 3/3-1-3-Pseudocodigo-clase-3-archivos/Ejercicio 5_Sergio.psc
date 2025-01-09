Algoritmo Ejercicio5		
	// Definicion de variables
	Definir numero1, numero2 Como Entero
	Definir elegirOperacion Como Texto
	Definir resultadoOperacion Como Real
	// Inicializacion de variables
	numero1 = 0
	numero2 = 0
	elegirOperacion = ""
	resultadoOperacion = 0
	// Operación de lectura
	Escribir "Escribe el primer numero: "
	Leer numero1
	Escribir "Escribe el segundo numero: "
	Leer numero2
	Escribir "¿Que operacion quieres hacer? (sumar, restar, multiplicar, dividir)"
	Leer elegirOperacion
	// Operaciones del Algoritmo
	Segun elegirOperacion Hacer
		"sumar":
			resultadoOperacion = numero1 + numero2
			Escribir resultadoOperacion
		"restar":
			resultadoOperacion = numero1 - numero2
			Escribir resultadoOperacion
		"multiplicar":
			resultadoOperacion = numero1 * numero2
			Escribir resultadoOperacion
		"dividir":
			Si numero2 = 0
				Escribir "No se puede dividir por 0"
			SiNo
				resultadoOperacion = numero1 / numero2
				Escribir resultadoOperacion				
			FinSi
		De Otro Modo:
			Escribir "No es posible realizar la operación solicitada"
	FinSegun
FinAlgoritmo
