''' POTENCIA 
Implementa una función recursiva llamada potencia que calcule el resultado 
de elevar un número a una potencia dada. Puedes asumir que tanto el 
número como la potencia son enteros no negativos.'''

def potencia(num, pot):
    if pot ==1:
        return num
    else:
        return num * potencia(num, pot-1)
    
print(potencia(4,5))