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
	
	//2. Letrero
	Escribir ""
	Escribir " --------------------------------"
	Escribir "| TABLERO - JUGADA ", jugada " |"
	Escribir " --------------------------------"
	Escribir ""
	
	//3. Mostrar el tablero de juego
	
	Escribir ""
FinFuncion

//Función que revisa el tablero que se le pasa como parámetro, comprobando si hay algún ganador
Funcion hayGanador = ComprobarGanador(tableroJuego)
	//1. Definir e inicializar variables
	Definir hayGanador Como Logico
	hayGanador = Falso
	
	//2. Comprobamos si hay alguna fila completa con X's o O's, que no sean "**"
	
	//3. Comprobamos si hay alguna columna completa con X's o O's, que no sean "**"
	
	//4. Comprobamos si alguna de las dos diagonales está completa con X's o O's, que no sean "**"
	
FinFuncion

//Juego de las Tres en Raya
Algoritmo TresEnRaya
	//1. Definir e inicializar variables
	Definir numeroJugada, jugador Como Entero
	Definir tablero Como Texto
	Definir hayGanador Como Logico
	Dimension tablero(3,3)
	hayGanador = Falso
	numeroJugada = 0 //Como mucho, habrá 9 jugadas, ya que el tablero tiene 9 posiciones
	jugador = azar(2) //Si el resultado de azar(2) es 0, empezamos nosotros, y si es 1 empieza el ordenador. Vamos alternando de jugador
	//en cada jugada
	
	//1.1. Inicializar las posiciones del tablero con texto vacío ("**")
	
	//2. Empieza el juego
	//2.1. Comenzamos mostrando el tablero vacío
	MostrarTablero(tablero, numeroJugada)
	Mientras (numeroJugada < 9) Y (hayGanador = Falso) Hacer
		numeroJugada = numeroJugada + 1
		
		//2.2. En el caso de que sea el turno del jugador... (el usuario pone "U")
		Si (jugador = 0) Entonces
			Escribir "Es el turno del jugador..."
			Esperar 3 segundos
			//2.2.1. Pedir al usuario que elija una fila y una columna, hasta que introduzca una posición vacía (tablero[fila,columna] = "**")
			//y poner la ficha del jugador (tablero[fila,columna] = "U")

		SiNo //2.3. En el caso de que sea el turno del ordenador... (el ordenador pone "O")
			Escribir "Es el turno del ordenador..."
			Esperar 3 segundos
			//2.3.1. Hacer que el ordenador elija una fila y una columna al azar, hasta que introduzca una posición vacía (tablero[fila,columna] = "**")
			//y poner la ficha del ordenador (tablero[fila,columna] = "O")
			
		FinSi
		
		//2.4. Mostramos el tablero después de poner la ficha
		MostrarTablero(tablero, numeroJugada)
		
		//2.5. Comprobamos si ha ganado el jugador que acaba de poner ficha, y si es así, lo decimos y terminamos el juego (función ComprobarGanador(tablero))		
		hayGanador = ComprobarGanador(tablero)
		
		//2.6. Cambiamos de jugador (Si acaba de jugar el ordenador, ahora le toca al jugador; y viceversa)
		
	FinMientras
	
	//3. En el caso de que no haya habido un ganador, mostrar que hemos empatado
	
FinAlgoritmo
