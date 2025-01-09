Algoritmo Ejercicio1
	//1. Definir e inicializar variables
	Definir array, i, num Como Entero
	Dimension array[5]
	i = 0
	num = 0
	
	//2. Inicializar el array con n�meros aleatorios, del 0 al 19
	Para i = 0 Hasta 4 Con Paso 1 Hacer //Recordad que el valor_final de la variable "i" es (dimension - 1)
		array[i] = azar(20)
	FinPara
	
	//3. Pedir el n�mero por pantalla
	Escribir "Introduce un n�mero (0-4)"
	Leer num
	
	//4. Escribir todos los n�meros del array
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir array[i], " " Sin Saltar
	FinPara
	Escribir "" //Para hacer un salto de l�nea
	
	//5. Comprobamos que el n�mero est� entre 0 y 4 y, si es as�, escribimos el n�mero almacenado en esa posici�n del array
	Si (num >= 0) y (num <= 4) Entonces
		Escribir "El n�mero del array en la posici�n [", num, "] es: ", array[num]
	SiNo
		Escribir "La longitud del array es de 0 a 4, por lo que la posici�n [", num, "] no es v�lida"
	FinSi

FinAlgoritmo
