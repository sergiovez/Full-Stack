Algoritmo Ejercicio1
	//1. Definir e inicializar variables
	Definir num Como Entero
	num = 0
	
	//2. Pedir el n�mero a comprobar
	Escribir "Introduce un n�mero (entero)"
	Leer num
	
	//3. Comprobar si es m�ltiplo de 2 y de 3 a la vez
	//Para ello, podemos utilizar la operaci�n MOD (o %),
	//de forma que nos devuelva el resto de la divisi�n
	Si (num MOD 2 = 0) Y (num MOD 3 = 0)
		Escribir "El n�mero SI es m�ltiplo de 2 y de 3 a la vez"
	SiNo
		Escribir "El n�mero NO es m�ltiplo de 2 y de 3 a la vez"
	FinSi
FinAlgoritmo
