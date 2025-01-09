## EJERCICIO 1
'''Imagina que eres el gerente de recursos humanos de una empresa y 
necesitas gestionar la información de los empleados. Cada empleado 
tiene un nombre, salario y departamento al que pertenece. Implementa 
un programa en Python que permita agregar nuevos empleados, 
actualizar el salario de un empleado existente, mostrar la lista completa 
de empleados y calcular el promedio salarial por departamento'''

base_datos = {}

# --- Empleado: nombre, salario y departamento


# --- El programa permite
                        # Agregar nuevo empleado
                        # Actualizar el salario del empleado existente
                        # Mostrar la lista completa de empleados
                        # Calcular el promedio salarial
                        # Salir

continuar = True

while continuar:
    opcion = input('1. Agregar nuevo empleado\n2. Actualizar salario\n3. Mostrar lista completa de empleados\n4. Calcular promedio salarial\n5. Salir\nIntroduce una opcion: ')
    if opcion == '1':
        nombre = input('Nombre: ')
        salario = int(input('Salario: '))
        departamento = input('Departamento: ')
        base_datos[nombre] = {'salario':salario, 'departamento':departamento}
    elif opcion == '2':
        nombre = input('Nombre: ')
        if nombre in base_datos:
            salario = int(input('Salario: '))
            base_datos[nombre] = {'salario':salario}
        else:
            print('Ese empleado no se encuentra en la base de datos')
    elif opcion == '3':
        print(base_datos)
        for empleado, detalles in base_datos.items():
            print(f'Nombre: {empleado}')
            salario = detalles['salario']
            departamento = detalles['departamento']
            print(f'Salario: {salario}')
            print(f'Departamento: {departamento}')
    elif opcion == '4':
        suma = 0
        for empleado in base_datos.values():
            suma += empleado['salario']
        numero_empleados = len(base_datos)
        promedio = suma/numero_empleados
        print(f'El promedio salarial es de {promedio} euros')
    elif opcion == '5':
        continuar = False
    else:
        print('Opcion no valida.')
