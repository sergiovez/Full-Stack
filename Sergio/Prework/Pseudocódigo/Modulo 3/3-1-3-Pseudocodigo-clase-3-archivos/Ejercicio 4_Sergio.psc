Algoritmo Ejercicio4		
	// Definicion de variables
	Definir numeroSeguidores Como Entero
	Definir seguidorCuenta Como Logico
	Definir paisResidencia Como Texto
	// Inicializacion de variables
	numeroSeguidores = 0
	seguidorCuenta = Verdadero
	paisResidencia = ""
	// Operación de lectura
	Escribir "Numero de seguidores: "
	Leer numeroSeguidores
	Escribir "¿Sigues a la cuenta sorteo_conquer_blocks? (Verdadero o Falso)"
	Leer seguidorCuenta
	Escribir "Pais de residencia: "
	Leer paisResidencia
	// Operaciones del Algoritmo
	Si (numeroSeguidores>1000) Y (seguidorCuenta) Y ((paisResidencia='Italia') O (paisResidencia='Alemania') O (paisResidencia='Francia')) Entonces
		Escribir "Puedes participar en el sorteo"
	SiNo
		Escribir "No puedes participar en el sorteo"
	FinSi
FinAlgoritmo
