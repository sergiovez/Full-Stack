'''GESTIÓN DE EMPLEADOS: 
Imagina que eres el gerente de recursos humanos de una empresa y 
necesitas gestionar la información de los empleados. Cada empleado 
tiene un nombre, salario y departamento al que pertenece. Implementa 
un programa en Python que permita agregar nuevos empleados, 
actualizar el salario de un empleado existente, mostrar la lista completa 
de empleados y calcular el promedio salarial por departamento.'''

empresa = {}
continuar = True

while continuar:
    opcion = input("1. Agregar nuevos empleados\n2. Actualizar salario\n3. Mostrar lista\n4. Calcular promedio por departamento\n5. Salir\nElige una opción: ")
    # Agregar nuevos empleados
    if opcion == '1':
        empleado = input('Empleado: ')
        if empleado in empresa:
            print('Ya existe ese empleado')
        else:
            salario = input('Salario: ')
            departamento = input('Departamento: ')
            empresa[empleado]={'Salario':salario, 'Departamento':departamento}
            print('EMPLEADO ASIGNADO')
    # Actualizar salario
    if opcion == '2':
        empleado = input('Empleado: ')
        if empleado in empresa:
            salario = input('Salario: ')
            empresa[empleado]['Salario'] = salario
            print('SALARIO ACTUALIZADO')
        else:
            print('No existe ese empleado')        
    # Mostrar lista
    if opcion == '3':
        for nombre, detalles in empresa.items():
            salario = detalles['Salario']
            departamento = detalles['Departamento']
            print(f'{nombre} tiene un salario de {salario} y trabaja en el departamento {departamento}')
    # Calcular promedio por departamento
    if opcion == '4':
        departamentos = [detalles['Departamento'] for detalles in empresa.values()]
        import numpy as np
        print(departamentos)
        salarios = [int(detalles['Salario']) for detalles in empresa.values()]
        departamentos_array = np.array(departamentos)
        departamentos_unicos = np.unique(departamentos_array)
        print(departamentos_unicos)
        promedio = np.arange(len(departamentos_unicos))
        for i in range(len(departamentos_unicos)):
            promedio[i]=np.mean(salarios[:][departamentos_unicos[i]==departamentos])
            print(promedio[i])
    if opcion == '5':
        continuar = False
    else:
        print('Introduce un valor del 1 al 5')   