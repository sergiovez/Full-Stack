Algoritmo Ejercicio3		
	// Definicion de variables
	Definir horario Como Texto
	Definir horas, tarifa Como Entero
	// Inicializacion de variables
	horario = ""
	horas = 0
	tarifa = 0
	// Operación de lectura
	Escribir "Introducir horario: "
	Leer horario
	Escribir "Introducir numero de horas: "
	Leer horas
	// Operaciones del Algoritmo
	Segun horario Hacer
		"mañanas":
			Si horas > 2
				tarifa = 30
			SiNo
				Si horas > 1
					tarifa = 20
				SiNo
					tarifa = 10
				FinSi
			FinSi
		"tardes":
			Si horas > 2
				tarifa = 40
			SiNo
				Si horas > 1
					tarifa = 30
				SiNo
					tarifa = 20
				FinSi
			FinSi
	FinSegun
	// Operaciones de escritura
	Escribir "La tarifa es de ", tarifa, " euros"
FinAlgoritmo
