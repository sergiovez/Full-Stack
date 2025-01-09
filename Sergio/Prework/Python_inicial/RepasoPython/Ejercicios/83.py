''' Problema de Organización de Datos Empresariales:
 Imagina que trabajas en una empresa internacional con equipos distribuidos en 
diferentes países. Cada equipo tiene una lista de empleados, representados 
como diccionarios, con información sobre el nombre, la edad y el rendimiento 
en proyectos recientes.
 Tu tarea es organizar una lista consolidada de todos los empleados de la 
empresa. La organización debe seguir ciertas reglas:
  Los empleados se deben ordenar por el rendimiento en proyectos recientes 
de forma descendente.
  Para aquellos con el mismo rendimiento, se deben ordenar por edad de 
forma ascendente. Además, deseas agrupar a los empleados por país para 
un análisis más efectivo. Utiliza funciones lambda.
 A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada
  Registro de empleados (json,dic,etc)
 Salida
 Empleados agrupados'''


empleados = [
    {"nombre": "Juan Pérez", "edad": 30, "pais": "España", "rendimiento": 90},
    {"nombre": "María García", "edad": 28, "pais": "España", "rendimiento": 85},
    {"nombre": "Pedro Rodríguez", "edad": 26, "pais": "Argentina", "rendimiento": 95},
    {"nombre": "Ana Rodríguez", "edad": 32, "pais": "Argentina", "rendimiento": 105},
    {"nombre": "Sofía Gómez", "edad": 29, "pais": "Argentina", "rendimiento": 95},
    {"nombre": "José López", "edad": 32, "pais": "Bolivia", "rendimiento": 80},
    {"nombre": "Ana Sánchez", "edad": 35, "pais": "Bolivia", "rendimiento": 85},

]
from itertools import groupby

def ordenar_empleados(empleados):
    empleados_ordenados = sorted(empleados, key=lambda name:(-name['rendimiento'], name['edad']))
    return empleados_ordenados

def agrupar_empleados(empleados_ordenados):
    empleados_agrupados = {pais: list(grupo_empleados) for pais, grupo_empleados in groupby(empleados_ordenados,key=lambda name:name['pais']) }
    return empleados_agrupados

def mostrar_empleados_agrupados(empleados_agrupados):
    for pais, empleados in empleados_agrupados.items():
        print(pais)
        for empleado in empleados:
            print(empleado)
        print()

empleados_ordenados = ordenar_empleados(empleados)
empleados_agrupados = agrupar_empleados(empleados_ordenados)
mostrar_empleados_agrupados(empleados_agrupados)