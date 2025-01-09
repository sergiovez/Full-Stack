## Ejercicio string
'''
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
de todos los alumnos en ese string
'''
# --- Crear la base de datos con las notas de los alumnos
database = []
datos = True
while datos == True:
    cadena = input('Introduce los datos de un alumno: ')
    cadena_alumno = cadena.split()
    database.append(cadena_alumno)
    mas_datos = input('¿Quieres introducir otro alumno? (SI o NO): ')
    while (mas_datos != 'SI') and (mas_datos != 'NO'):
        mas_datos = input('Solo puedes seleccionar SI o NO: ')
    if mas_datos == 'NO':
        datos = False
print(database)

# --- Crear string con el numero del dni (valor 3 [2]) y la nota media (valores 6, 7 y 8 [5][6][7])
for alumno in database:
    nota = 0
    longitud_notas = 0
    # --- Obtener la suma de todas las notas
    for j in range(5, len(alumno)):
        nota += float(alumno[j])
        longitud_notas += 1
    # --- Obtener las notas medias
    nota_media = nota / longitud_notas
    print(f'El alumno con DNI {alumno[2]} tiene una nota media de {nota_media:.2f}')

