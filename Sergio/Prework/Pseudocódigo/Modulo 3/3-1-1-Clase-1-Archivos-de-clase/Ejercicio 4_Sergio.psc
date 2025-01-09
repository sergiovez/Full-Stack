Algoritmo Ejercicio4		
	// Definicion de variables
	Definir numeroPrendasCompradas, numeroPrendasLlevadas, precioPrenda Como Entero
	Definir precioTotal, descuento Como Real
	// Inicializacion de variables
	numeroPrendasCompradas = 0
	numeroPrendasLlevadas = 0
	precioTotal = 0
	precioPrenda = 10
	descuento = 0
	// Operación de lecturaç
	Escribir "Escribe el numero de prendas compradas"
	Leer numeroPrendasCompradas
	// Operaciones del Algoritmo
	Si numeroPrendasCompradas < 3
		descuento = (numeroPrendasCompradas * precioPrenda) * 0.15
		numeroPrendasLlevadas = numeroPrendasCompradas
	SiNo
		Si numeroPrendasCompradas = 3
			descuento = (numeroPrendasCompradas * precioPrenda) * 0.25
			numeroPrendasLlevadas = numeroPrendasCompradas
		SiNo
			descuento = (numeroPrendasCompradas * precioPrenda) * 0.20
			numeroPrendasLlevadas = numeroPrendasCompradas + 1
		FinSi
	FinSi
	precioTotal = (numeroPrendasCompradas * precioPrenda) - descuento
	// Operaciones de escritura
	Escribir "El precio total es de ", precioTotal, " euros y el numero de prendas que nos llevamos son ", numeroPrendasLlevadas
FinAlgoritmo