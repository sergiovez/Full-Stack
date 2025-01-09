Algoritmo Ejercicio8	
	// Definicion de variables
	Definir contador, numeroMaquina Como Entero
	Definir numeroAcertado Como Texto
	// Inicializacion de variables
	contador = 1
	numeroAcertado = "No"
	numeroMaquina = 0
	// Operación de lectura
	Escribir "Piensa en un número del 1 al 10"
	Esperar 5 Segundos
	// Operaciones del Algoritmo
	Mientras (contador <= 5) Y (numeroAcertado = "No") Hacer
		numeroMaquina = azar(10)+1
		Escribir "¿Es ", numeroMaquina, " tu numero? (Si|No)"
		Leer numeroAcertado
		contador = contador + 1
	FinMientras
	Si numeroAcertado = "Si" Entonces
		Escribir "Numero acertado!"
	SiNo
		Escribir "Se han hecho 5 intentos fallidos"
	FinSi
FinAlgoritmo
