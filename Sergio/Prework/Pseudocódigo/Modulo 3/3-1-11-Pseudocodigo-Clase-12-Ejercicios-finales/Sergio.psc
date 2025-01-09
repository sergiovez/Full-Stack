//TRES EN RAYA
//
// ** ** **
// ** ** **
// ** ** **
//
// ** O **
// ** O **
// ** O **
//
// U ** **
// ** U **
// ** ** U

//Función que muestra el tablero que se le pasa como parámetro
Funcion MostrarTablero(tableroJuego, jugada)
	//1. Definir e inicializar variables
	Definir fila, columna como Entero
	fila = 0
	columna = 0
	
	//2. Letrero
	Escribir ""
	Escribir " --------------------------------"
	Escribir "| TABLERO - JUGADA ", jugada " |"
	Escribir " --------------------------------"
	Escribir ""
	
	//3. Mostrar el tablero de juego
	Para fila=0 Hasta 2 Con Paso 1 Hacer
		Para columna=0 Hasta 2 Con Paso 1 Hacer
			Escribir tableroJuego[fila, columna], " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinFuncion

//Función que revisa el tablero que se le pasa como parámetro, comprobando si hay algún ganador
Funcion hayGanador = ComprobarGanador(tableroJuego)
	//1. Definir e inicializar variables
	Definir i Como Entero
	Definir hayGanador Como Logico
	i = 0
	
	//2. Comprobamos si hay alguna fila completa con U's o O's, que no sean "**"
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Si (tableroJuego[i, 0] <> "***") Y (tableroJuego[i, 0] = tableroJuego[i, 1]) Y (tableroJuego[i, 0] = tableroJuego[i, 2])
			hayGanador = Verdadero
		FinSi
	FinPara
	
	//3. Comprobamos si hay alguna columna completa con U's o O's, que no sean "**"
	Para i=0 Hasta 2 Con Paso 1 Hacer
		Si (tableroJuego[0, i] <> "***") Y (tableroJuego[0, i] = tableroJuego[1, i]) Y (tableroJuego[0, i] = tableroJuego[2, i])
			hayGanador = Verdadero
		FinSi
	FinPara
	
	//4. Comprobamos si alguna de las dos diagonales está completa con XU's o O's, que no sean "**"
	Si (tableroJuego[0, 0] <> "***") Y (tableroJuego[0, 0] = tableroJuego[1, 1]) Y (tableroJuego[0, 0] = tableroJuego[2, 2])
			hayGanador = Verdadero
	FinSi
	Si (tableroJuego[0, 2] <> "***") Y (tableroJuego[0, 2] = tableroJuego[1, 1]) Y (tableroJuego[0, 2] = tableroJuego[2, 0])
		hayGanador = Verdadero
	FinSi	
FinFuncion

//Juego de las Tres en Raya
Algoritmo TresEnRaya
	//1. Definir e inicializar variables
	Definir tableroJuego como Texto
	Definir fila, columna, jugador, filaSeleccionada, columnaSeleccionada, posicionVacia como Entero
	Definir numeroJugada como Entero
	Definir long Como Entero
	Definir hayGanador Como Logico
	
	long = 3
	fila = 0
	columna = 0
	jugador = 0
	filaSeleccionada = 0
	columnaSeleccionada = 0
	posicionVacia = 0
	numeroJugada = 0
	hayGanador = Falso
	
	Dimension tableroJuego[long,long]
	
	//1.1. Inicializar las posiciones del tablero con texto "**"
	Para fila=0 Hasta long-1 Con Paso 1 Hacer
		Para columna=0 Hasta long-1 Con Paso 1 Hacer
			tableroJuego[fila, columna] = "***"
		FinPara
	FinPara
	
	//2. Empieza el juego
	//2.1. Comenzamos mostrando el tablero vacío
	MostrarTablero(tableroJuego, numeroJugada)
	
	
	jugador = azar(2) //0 --> Ordenador; 1 --> Usuario
	
	Mientras (numeroJugada < 9) Y (hayGanador = Falso) Hacer
		Si jugador = 1 Entonces
		//2.2. En el caso de que sea el turno del jugador... (el usuario pone "U")
		//2.2.1. Pedir al usuario que elija una fila y una columna, hasta que introduzca una posición vacía (tablero[fila,columna] = "**")
		//y poner la ficha del jugador (tablero[fila,columna] = "U")
			Repetir
				Escribir "Introducir la fila de la posición elegida:"
				Leer filaSeleccionada
				Escribir "Introducir la columna de la posición elegida:"
				Leer columnaSeleccionada
			Hasta Que tableroJuego[filaSeleccionada, columnaSeleccionada] = "***"
			tableroJuego[filaSeleccionada, columnaSeleccionada] = " U "
		SiNo
		//2.3. En el caso de que sea el turno del ordenador... (el ordenador pone "O")
		//2.3.1. Hacer que el ordenador elija una fila y una columna al azar, hasta que introduzca una posición vacía (tablero[fila,columna] = "**")
		//y poner la ficha del ordenador (tablero[fila,columna] = "O")
			Repetir
				filaSeleccionada = azar(3)
				columnaSeleccionada = azar(3)
			Hasta Que tableroJuego[filaSeleccionada, columnaSeleccionada] = "***"
			tableroJuego[filaSeleccionada, columnaSeleccionada] = " O "
		FinSi
		
		//2.4. Mostramos el tablero después de poner la ficha
		MostrarTablero(tableroJuego, numeroJugada)
			
		//2.5. Comprobamos si ha ganado el jugador que acaba de poner ficha, y si es así, lo decimos y terminamos el juego (función ComprobarGanador(tablero))
		hayGanador = ComprobarGanador(tableroJuego)
		Si hayGanador = Verdadero Entonces
			Si jugador = 1
				Escribir "Ha ganado el usuario"
			SiNo
				Escribir "Ha ganado el ordenador"
			FinSi
		FinSi
		
		//2.6. Cambiamos de jugador (Si acaba de jugar el ordenador, ahora le toca al jugador; y viceversa)
		Si jugador = 0 Entonces
			jugador = 1
		SiNo
			jugador = 0
		FinSi
		numeroJugada = numeroJugada + 1
	FinMientras
	//3. En el caso de que no haya habido un ganador, mostrar que hemos empatado
	Si hayGanador = Falso Entonces
		Escribir "Ha habido un empate"
	FinSi
FinAlgoritmo
