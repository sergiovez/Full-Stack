Algoritmo Ejercicio3		
	// Definicion de variables
	Definir numeroHoras,numeroMinutos,tiempoTotal  Como Entero
	Definir precioMinuto, descuento, gastoTotal Como Real
	// Inicializacion de variables
	numeroHoras = 0
	numeroMinutos = 0
	tiempoTotal = 0
	precioMinuto = 0.2
	descuento = 0 
	gastoTotal = 0
	// Operación de lecturaç
	Escribir "Escribe el numero de horas"
	Leer numeroHoras
	Escribir "Escribe el numero de minutos"
	Leer numeroMinutos
	// Operaciones del Algoritmo
	tiempoTotal = numeroHoras * 60 + numeroMinutos
	Si tiempoTotal < 90
		gastoTotal = precioMinuto * tiempoTotal
	SiNo
		descuento = (precioMinuto * tiempoTotal) * 0.1
		gastoTotal = precioMinuto * tiempoTotal - descuento
	FinSi
	// Operaciones de escritura
	Escribir "Tenemos que pagar ", gastoTotal, " euros."
FinAlgoritmo