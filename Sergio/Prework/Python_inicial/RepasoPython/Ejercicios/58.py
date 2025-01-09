'''POTENCIA 
Implementa una función recursiva llamada potencia que calcule el resultado 
de elevar un número a una potencia dada. Puedes asumir que tanto el 
número como la potencia son enteros no negativos'''

def potencia(base, exponente):
    if exponente==1:
        return base
    else:
        return base*potencia(base, exponente-1)

print(potencia(4,4))