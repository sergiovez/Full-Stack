Algoritmo Ejercicio7	
	// Definicion de variables
	Definir eleccionJuego, eleccionMaquina Como Texto
	Definir numeroAzar Como Entero
	Definir jugarNuevo Como Texto
	// Inicializacion de variables
	eleccionJuego = ""
	eleccionMaquina = ""
	numeroAzar = 0
	jugarNuevo = "Si"
	Mientras jugarNuevo = "Si"
		Escribir "Escoge entre Piedra, Papel o Tijera: "
		Leer eleccionJuego
		// Generacion del numero al azar y vincularlo con una Opcion 
		numeroAzar = azar(3)
		Si numeroAzar=0 Entonces
			eleccionMaquina = 'Piedra'
		SiNo
			Si numeroAzar=1 Entonces
				eleccionMaquina = 'Papel'
			SiNo
				eleccionMaquina = 'Tijera'
			FinSi
		FinSi
		// Operaciones del Algoritmo
		Segun eleccionJuego Hacer
			"Piedra":
				Si eleccionMaquina = "Piedra"
					Escribir "Yo piedra tambien. Empate"
				SiNo
					Si eleccionMaquina = "Papel"
						Escribir "Yo papel. Pierdes"
					SiNo
						Escribir "Yo tijera. Ganas"
					FinSi
				FinSi
			"Papel":
				Si eleccionMaquina = "Papel"
					Escribir "Yo papel tambien. Empate"
				SiNo
					Si eleccionMaquina = "Tijera"
						Escribir "Yo tijera. Pierdes"
					SiNo
						Escribir "Yo piedra. Ganas"
					FinSi
				FinSi		
			"Tijera":
				Si eleccionMaquina = "Tijera"
					Escribir "Yo tijera tambien. Empate"
				SiNo
					Si eleccionMaquina = "Piedra"
						Escribir "Yo piedra. Pierdes"
					SiNo
						Escribir "Yo Papel. Ganas"
					FinSi
				FinSi
			De Otro Modo:
				Escribir "Tiene que elegir entre Piedra, Papel o Tijera"
		FinSegun
		Escribir "¿Quieres volver a jugar? (Si, No)?"
		Leer jugarNuevo
	FinMientras

FinAlgoritmo
