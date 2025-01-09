'''CUENTA BANCARIA 
Crea una clase "CuentaBancaria" con atributos como número de cuenta y 
saldo. Implementa métodos para depositar y retirar dinero, y muestra el 
saldo actual.'''

class CuentaBancaria:
    def __init__(self, numeroCuenta, saldo):
        self.numeroCuenta = numeroCuenta
        self.saldo = saldo
    
    def depositar(self, cantidad):
        self.saldo += cantidad

    def retirar(self, cantidad):
        self.saldo -= cantidad

    def muestraSaldo (self):
        print(f'El saldo es {self.saldo}')

cuenta_1 = CuentaBancaria('1383836', 1300)
cuenta_2 = CuentaBancaria('8373738', 1000)

cuenta_1.muestraSaldo()
cuenta_1.depositar(1000)
cuenta_1.muestraSaldo()
cuenta_1.retirar(200)
cuenta_1.muestraSaldo()

