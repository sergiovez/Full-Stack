'''STRING A LISTA: 
Desarrolla un script en Python que dado una cadena de caracteres con la siguiente información: 
nombre, apellido, DNI, código_asignatura, convocatoria, nota1, nota2, nota3 … Por ejemplo: 
David Fernandez 12311267A 43527 2 2.1 4.6 3.4. El script debe crear una lista con esos datos, 
introducirlo en una lista de listas donde se encuentra la información de todos los alumnos e 
imprimir la nota media de los alumnos junto con el DNI.  
Supón ahora que tu input es un string como este:  
‘’'David Fernandez 12311267A 43527 2 9.1 7.6 2.4\n 
Maria Garcia 12316487A 43527 2 7.1 8.6 5.4\n 
Juan Perez 647829236A 43527 2 8.1 8.5 8.4\n ‚’’ 
Reescribe el script para que procese ese input adecuadamente e imprima la nota media y el DNI 
de todos los alumnos en ese string. '''

cadena = 'David Fernandez 12311267A 43527 2 9.1 7.6 2.4\nMaria Garcia 12316487A 43527 2 7.1 8.6 5.4\nJuan Perez 647829236A 43527 2 8.1 8.5 8.4\n' 
print(cadena)
cadena = cadena.split('\n')
base_datos = []
for alumno in cadena:
    datos_alumno = alumno.split()
    print(datos_alumno)
    base_datos.append(datos_alumno)
base_datos.pop()
print(base_datos)
for alumno in base_datos:
    dni = alumno[2]
    suma_notas = 0
    for i in range(5, len(alumno)):
        suma_notas += float(alumno[i])
    nota_media = round(suma_notas / (len(alumno)-5),2)
    print(f'El alumno {alumno[0]} {alumno[1]} con DNI {dni} tiene una nota media de {nota_media}')
