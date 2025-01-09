//EJERCICIO 2
//Hacer un programa que calcule el Mínmo Común Multiplo (MCM) de dos números, teniendo en cuenta los 100 primeros múltiplos
//Recordatorio: para calcular el MCM de dos números, habría que hacer lo siguiente:
//1. Calcular los múltiplos de cada número
//		Ej. 2 y 3
//		2x1=2; 2x2=4; 2x3=6; 2x4=8; 2x5=10; 2x6=12; 2x7=14; 2x8=18; ...
//		3x1=3; 3x2=6; 3x3=9; 3x4=12; 3x5=15; 3x6=18; 3x7=21; 3x8=24; ...
//2. Ver cuál es el menor de los múltiplos comunes
//		En el ejemplo anterior, tenemos 2 múltiplos comunes: el 6 y 18 (habrá más). El MCM de 2 y 3 será 6
//Hacer uso de una función:
//1. Funcion MCM - calcula el MCM de dos números (todos los cálculos)

Funcion minimo = MCM(num1,num2)
	//1. Definir e inicializar las variables
	Definir minimo, multiplosNum1, multiplosNum2, i, j Como Entero
	Dimension multiplosNum1[100]
	Dimension multiplosNum2[100]
	i = 0
	j = 0
	
	//2. Calculamos los múltiplos de los dos números. El mínimo, lo inicializamos al último múltiplo + 1 de uno de los
	//números
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		multiplosNum1[i] = num1 * (i + 1)
		multiplosNum2[i] = num2 * (i + 1)
	FinPara
	Si multiplosNum1[99] > multiplosNum2[99] Entonces
		minimo = multiplosNum1[99] + 1
	SiNo
		minimo = multiplosNum2[99] + 1
	FinSi
	
	//3. Comparar todos los múltiplos y quedarnos con el más bajo que sea común
	Para i = 0 Hasta 99 Con Paso 1 Hacer
		Para j = 0 Hasta 99 Con Paso 1 Hacer
			Si (multiplosNum1[i] = multiplosNum2[j]) Y multiplosNum1[i] < minimo Entonces
				minimo = multiplosNum1[i]
			FinSi
		FinPara
	FinPara
	
	//4. Si el mínimo sigue siendo el mismo que al que inicializamos, es que no ha habido ningún múltiplo común en los
	//100 primeros múltiplos. Devolvemos 0 para indicar este caso
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
	
	//2. Pedir por consola los dos números
	Escribir "Introduce el primer número"
	Leer num1
	Escribir "Introduce el segundo número"
	Leer num2

	//3. Llamar a la función que calcula el MCM
	minComunMultiplo = MCM(num1, num2)
	
	//4. Comprobar si hemos encontrados el MCM y mostrarlo por consola
	Si (minComunMultiplo <> 0) Entonces
		Escribir "El MCM de ", num1, " y ", num2, " es: ", minComunMultiplo
	SiNo
		Escribir "No se ha podido calcular el MCM"
	FinSi

FinAlgoritmo











