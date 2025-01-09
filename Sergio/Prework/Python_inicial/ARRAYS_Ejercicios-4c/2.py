'''Supongamos que trabajas en una empresa que fabrica dispositivos electrónicos y quieres 
analizar los datos de calidad de los componentes utilizados en la producción de dichos 
dispositivos. Tienes un conjunto de datos que contiene información sobre la fecha de 
producción, el tipo de componente, el lote al que pertenece el componente y la 
puntuación de calidad del componente (un número entre 0 y 100). Quieres analizar estos 
datos para determinar cuál es el tipo de componente con la puntuación de calidad más 
alta, cuántos componentes se produjeron en cada mes y cuál es la puntuación de calidad 
promedio de cada tipo de componente.
(Pista 1: Tu array de entrada puede tener la forma…)
(Pista 2: puede ser util investigar np.unique y np.argmax'''
'''
np.unique   obtiene los elementos unicos de un array. Por ejemplo de [1,2,3,4,2,3,3]
            sacaria [1,2,3,4]
np.argmax   te devuelve el indice de la posicion del valor mas alto. Por ejemplo de
            [3,5,7,2,3,4] te devuelve 2
'''

import numpy as np

# Crear un array con los datos
datos = np.array([['2022-01-01', 'Componente 1', 'Lote A', 80],
                  ['2022-01-15', 'Componente 1', 'Lote B', 90],
                  ['2022-02-01', 'Componente 2', 'Lote C', 85],
                  ['2022-02-15', 'Componente 2', 'Lote D', 95],
                  ['2022-03-01', 'Componente 1', 'Lote E', 75],
                  ['2022-03-15', 'Componente 2', 'Lote F', 90]])

# --- Componente de calidad mas alta individual
posicion_maximo = np.argmax(datos[:,3])
print(f'El componentes de mayor puntuacion es el {datos[posicion_maximo,1]} del lote {datos[posicion_maximo,2]} y una puntuacion de {datos[posicion_maximo,3]}')

# --- Componante con calidad mas alta promedio
componentes = datos[:,1]
componentes_unicos = np.unique(componentes)
print(componentes_unicos)
calidades = datos[:,3]
calidades_promedio = np.zeros(len(componentes_unicos))

for i in range(len(componentes_unicos)):
    calidades_promedio[i] = np.mean(calidades[componentes_unicos[i]==componentes].astype(int))
    print(f'La calidad promedio del {componentes_unicos[i]} es de {calidades_promedio[i]}')

posicion_maximo = np.argmax(calidades_promedio)
print(f'El componentes de mayor puntuacion es el {componentes_unicos[posicion_maximo]} y una puntuacion promedio de {calidades_promedio[posicion_maximo]}')

# --- Componentes producidos por mes
fechas = datos[:,0]
meses,counts = np.unique([fecha[5:7] for fecha in fechas], return_counts=True)
for i in range(len(meses)):
    print(f'En el mes {meses[i]} se han producido {counts[i]} componentes')

