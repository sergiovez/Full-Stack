''' LIBRO 
Crea una clase "Libro" con atributos como título, autor y año de publicación. 
Luego, crea varios objetos Libro y muestra su información.'''

class Libro:
    def __init__(self, titulo, autor, publicacion):
        self.titulo = titulo
        self.autor = autor
        self.publicacion = publicacion

libro_1 = Libro('La Colmena', 'Sergio', '2000')
libro_2 = Libro('Luces de Bohemia', 'Ruben', '1991')
libro_3 = Libro('Codigo Da Vinci', 'Jose', '2020')
print(libro_1.titulo, libro_1.autor, libro_1.publicacion)
print(libro_2.titulo, libro_2.autor, libro_2.publicacion)
print(libro_3.titulo, libro_3.autor, libro_3.publicacion)