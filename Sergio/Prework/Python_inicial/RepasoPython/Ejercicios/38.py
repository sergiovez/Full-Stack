'''EMPRESA DE ELECTRONICA 
Supongamos que trabajas en una empresa que fabrica dispositivos electrónicos y quieres 
analizar los datos de calidad de los componentes utilizados en la producción de dichos 
dispositivos. Tienes un conjunto de datos que contiene información sobre la fecha de 
producción, el tipo de componente, el lote al que pertenece el componente y la 
puntuación de calidad del componente (un número entre 0 y 100). Quieres analizar estos 
datos para determinar cuál es el tipo de componente con la puntuación de calidad más 
alta, cuántos componentes se produjeron en cada mes y cuál es la puntuación de calidad 
promedio de cada tipo de componente.
 (Pista 1: Tu array de entrada puede tener la forma…)
  (Pista 2: puede ser util investigar np.unique y np.argmax)'''

import numpy as np

# Crear un array con los datos
datos = np.array([['2022-01-01', 'Componente 1', 'Lote A', 80],
                  ['2022-01-15', 'Componente 1', 'Lote B', 90],
                  ['2022-02-01', 'Componente 2', 'Lote C', 85],
                  ['2022-02-15', 'Componente 2', 'Lote D', 95],
                  ['2022-03-01', 'Componente 1', 'Lote E', 75],
                  ['2022-03-15', 'Componente 2', 'Lote F', 90]])

'''tipo de componente con la puntuación de calidad más alta'''
puntuaciones = datos[:,3]
print(f'{datos[puntuaciones.argmax(),1]} tiene la puntuacion mas alta con {max(puntuaciones)}')

'''cuántos componentes se produjeron en cada mes'''
fechas = datos[:,0]
meses, counts = np.unique([fecha[5:7] for fecha in fechas], return_counts=True)
print(meses, counts)
for i in range(len(meses)):
    print(f'En el mes {meses[i]} se han producido {counts[i]} componentes')

'''puntuación de calidad promedio de cada tipo de componente'''
componentes = datos[:,1]
componentes_unicos = np.unique(componentes)
print(componentes_unicos)

for componente in componentes_unicos:
    promedio = round(np.mean((datos[:,3].astype(float))[componente == componentes]),1)
    print(f'La calidad promedio del {componente} es de: {promedio}')