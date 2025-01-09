''' CALCULADORA BÁSICA 
Crea una clase llamada "Calculadora" con métodos para sumar, restar, 
multiplicar y dividir. Crea objetos de esta clase y realiza algunas operaciones 
básicas.'''

class Calculadora:
    def sumar(self,a,b):
        return a+b
    def restar(self,a,b):
        return a-b
    def multiplicar(self,a,b):
        return a*b
    def dividir(self,a,b):
        try:
            division = a/b
        except ZeroDivisionError:
            print('ERROR: No se puede dividir por cero')
        else:
            return division
        
calculadora = Calculadora()
print(calculadora.sumar(4,5))
print(calculadora.restar(4,5))
print(calculadora.multiplicar(4,5))
print(calculadora.dividir(4,5))
print(calculadora.dividir(4,0))