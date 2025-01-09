''' DADO 
Crea una clase "Dado" que simule el lanzamiento de un dado de 6 caras. 
Implementa un método para lanzar el dado y mostrar el resultado (quizás te 
convenga usar el modulo random).'''
import random

class Dado:
    def lanzar_dado(self):
        resultado = random.randint(1,6)
        print(f'El resultado es {resultado}')

dado = Dado()
dado.lanzar_dado()