'''BECAS PARA ESTUDIANTES (BONUS*):
 El gobierno quiere otorgar becas de excelencia a los estudiantes con un mínimo de un 8 de media. 
Además para acceder a la beca el estudiante debe tener entre 17 y 21 años. Crea un script que 
pida el nombre, la edad y la nota media del estudiante e indique si puede optar a la beca o no.
 *Los ejercicios bonus no se resolverán directamente en clase si no que están pensados para que 
los alumnos los discutan por el chat de Discord y compartan sus soluciones. Las soluciones 
compartidas de los alumnos se subirán en un archivo a la academia.'''

nombre = input('Nombre: ')
edad = int(input('Edad: '))
nota_media = int(input('Nota media: '))

if (17<= edad <= 21) and (nota_media)>=8:
    print(f'{nombre.title()} PUEDES acceder a la beca')
else:
    print(f'{nombre.title()} NO PUEDES acceder a la beca')

