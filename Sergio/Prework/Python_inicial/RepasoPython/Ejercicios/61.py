'''SUMA Y VALUEERROR 
Un problema común al solicitar una entrada numérica ocurre cuando las 
personas ingresan texto en lugar de números. Cuando intentas convertir la 
entrada a un entero (int), obtendrás un ValueError. Escribe un programa que 
solicite dos números. Suma los números y muestra el resultado. Captura el 
ValueError si alguno de los valores de entrada no es un número e imprime un 
mensaje de error amigable. Prueba tu programa ingresando dos números y 
luego ingresando texto en lugar de un número. Envuelve tu código del en un 
bucle while para que el usuario pueda continuar ingresando números incluso 
si comete un error ingresando texto en lugar de un número.'''

def suma(sumando1, sumando2):
    try:
        resultado = int(sumando1) + int(sumando2)
    except ValueError:
        print('Los dos valores deben ser numéricos')
    else:
       print(f'El valor de la suma es: {suma}')
    
suma(1,2)
suma(1,'a')