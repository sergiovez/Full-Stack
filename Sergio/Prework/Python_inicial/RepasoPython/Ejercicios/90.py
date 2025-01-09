'''Ejercicio de Memoización en Costos de Envío
Imagina que estás trabajando en un sistema de gestión de costos de envío para 
una empresa de logística. El sistema debe calcular el costo de envío para 
diferentes destinos, distancias y pesos de paquetes. Implementa una función 
llamada 
calcular_costo_envio que tome como entrada un destino, una distancia 
en kilómetros y un peso en kilogramos, y devuelva el costo total del envío.
 Requerimientos:
  El costo base de envío es de $5.0.
  El costo por kilómetro de distancia es de $0.1.
  El costo por kilogramo de peso es de $0.2.
 Implementa la función de manera eficiente utilizando memoización para evitar 
recalcular el costo para los mismos destinos, distancias y pesos.
 A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada- destino_1  "Ciudad A"- distancia_1  150- peso_1  2.5
 Salida
  Costo de envío con memoización
 Ciudad A 20.5'''