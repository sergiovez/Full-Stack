//EJERCICIO 2
//Hacer un programa que calcule el M�nmo Com�n Multiplo (MCM) de dos n�meros, teniendo en cuenta los 100 primeros m�ltiplos
//Recordatorio: para calcular el MCM de dos n�meros, habr�a que hacer lo siguiente:
//1. Calcular los m�ltiplos de cada n�mero
//		Ej. 2 y 3
//		2x1=2; 2x2=4; 2x3=6; 2x4=8; 2x5=10; 2x6=12; 2x7=14; 2x8=18; ...
//		3x1=3; 3x2=6; 3x3=9; 3x4=12; 3x5=15; 3x6=18; 3x7=21; 3x8=24; ...
//2. Ver cu�l es el menor de los m�ltiplos comunes
//		En el ejemplo anterior, tenemos 2 m�ltiplos comunes: el 6 y 18 (habr� m�s). El MCM de 2 y 3 ser� 6
//Hacer uso de una funci�n:
//1. Funcion MCM - calcula el MCM de dos n�meros (todos los c�lculos)

Funcion minimo = MCM(num1,num2)
	//1. Definir e inicializar las variables
	Definir minimo, multiplosNum1, multiplosNum2, i, j Como Entero
	Dimension multiplosNum1[100]
	Dimension multiplosNum2[100]
	i = 0
	j = 0
	
	//2. Calculamos los m�ltiplos de los dos n�meros. El m�nimo, lo inicializamos al �ltimo m�ltiplo + 1 de uno de los
	//n�meros
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		multiplosNum1[i] = num1 * (i + 1)
		multiplosNum2[i] = num2 * (i + 1)
	FinPara
	Si multiplosNum1[99] > multiplosNum2[99] Entonces
		minimo = multiplosNum1[99] + 1
	SiNo
		minimo = multiplosNum2[99] + 1
	FinSi
	
	//3. Comparar todos los m�ltiplos y quedarnos con el m�s bajo que sea com�n
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		Para j = 0 Hasta 99 Con Paso 1 Hacer
			Si (multiplosNum1[i] = multiplosNum2[j]) Y multiplosNum1[i] < minimo Entonces
				minimo = multiplosNum1[i]
			FinSi
		FinPara
	FinPara
	
	//4. Si el m�nimo sigue siendo el mismo que al que inicializamos, es que no ha habido ning�n m�ltiplo com�n en los
	//100 primeros m�ltiplos. Devolvemos 0 para indicar este caso
	Si (minimo = (multiplosNum1[99] + 1)) O (minimo = (multiplosNum2[99] + 1))
		minimo = 0
	FinSi
FinFuncion

Algoritmo MinimoComunMultiplo
	//1. Definir e inicializar las variables
	Definir minComunMultiplo, num1, num2 Como Entero
	minComunMultiplo = 0
	num1 = 0
	num2 = 0
	
	//2. Pedir por consola los dos n�meros
	Escribir "Introduce el primer n�mero"
	Leer num1
	Escribir "Introduce el segundo n�mero"
	Leer num2

	//3. Llamar a la funci�n que calcula el MCM
	minComunMultiplo = MCM(num1, num2)
	
	//4. Comprobar si hemos encontrados el MCM y mostrarlo por consola
	Si (minComunMultiplo <> 0) Entonces
		Escribir "El MCM de ", num1, " y ", num2, " es: ", minComunMultiplo
	SiNo
		Escribir "No se ha podido calcular el MCM"
	FinSi

FinAlgoritmo











