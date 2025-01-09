Algoritmo Desayuno
	//1. Preguntar por el precio del café, de la tostada y del zumo de naranja
	Definir precioCafe,precioTostada,precioZumo Como Real
	Definir precioTotalDesayuno Como Real
	Definir dineroDevolucion Como Real
	precioCafe = 0
	precioTostada = 0
	precioZumo = 0
	precioTotalDesayuno = 0
	dineroDevolucion = 0
	
	Escribir "Precio Cafe"
	Leer precioCafe
	Escribir "Precio Tostada"
	Leer precioTostada
	Escribir "Precio Zumo"
	Leer precioZumo
	
	//2. Hacer la suma para calcular el precio total del desayuno
	precioTotalDesayuno = precioCafe + precioTostada + precioZumo
	Escribir "El precio total del desayuno es: ", precioTotalDesayuno
	
	//3. Suponiendo que tenemos solo un billete de 10 euros, calcular cuánto nos tienen que
	//devolver
	//--> PISTA: el coste total del desayuno puede ser mayor, igual o menor a 10 euros :-)
	
	Si precioTotalDesayuno>10 Entonces
		Escribir "Hacen falta más de 10 euros para pagar el desayuno"
	SiNo
		Si precioTotalDesayuno=10
			dineroDevolucion=0
		SiNo
			dineroDevolucion = 10-precioTotalDesayuno
		FinSi
		Escribir "Nos tienen que devolver ", dineroDevolucion, " euros"
	FinSi
	
	//4. Mostrar el precio total del desayuno y la cantidad a devolver
	
FinAlgoritmo
