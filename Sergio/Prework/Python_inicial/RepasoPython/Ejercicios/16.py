'''Crea un programa que imprima todos los números primos entre el 2 y el 100. Un numero primo es 
un numero positivo y entero mayor que uno que no tiene un divisor positivo y entero que no sea 1 
o sí mismo. '''
print(1)
print(2)
for numero in range(3, 101):
    primo = True
    for num in range(2, numero):
        if numero % num == 0:
            primo = False
            break
    if primo:
        print(numero)