''' NUMERO TRIANGULAR 
Crea una función recursiva llamada numero_triangular que calcule el n-ésimo 
número triangular. Un número triangular se obtiene al sumar todos los 
números naturales desde 1 hasta n.'''

def numero_triangular(num):
    if num==1:
        return num
    else:
        return num + numero_triangular(num-1)

print(numero_triangular(19))
