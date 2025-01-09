''' SISTEMA DE GESTION DE BIBLIOTECA 
Crea un sistema de gestión de una biblioteca utilizando clases en Python. 
Debes implementar las siguientes clases:
 1. “Libro”: Representa un libro con atributos como título, autor y número de 
ejemplares disponibles.
 2. “Usuario”: Representa a un usuario de la biblioteca con atributos como 
nombre, número de identificación y lista de libros prestados.
 3. “Biblioteca”: Representa la biblioteca en sí, con métodos para agregar 
libros, prestar libros a usuarios, devolver libros y mostrar el inventario.'''

class Libro:
    def __init__(self, titulo, autor, ejemplares):
        self.titulo = titulo
        self.autor = autor
        self.ejemplares = ejemplares

class Usuario:
    def __init__(self, nombre, identificacion):
        self.nombre = nombre
        self.identificacion = identificacion
        self.lista = []    

class Biblioteca(Libro, Usuario):
    def __init__(self):
        self.libros = []

    def agregarLibro(self, libro):
        self.libros.append(libro)

    def prestarLibroUsuario(self, usuario, titulo):
        for libro in self.libros:
            if libro.ejemplares > 0 and libro.titulo == titulo:
                usuario.lista.append(libro)
                libro.ejemplares -= 1

    def devolverLibro(self, usuario, titulo):
        for libro in usuario.lista:
            if libro == titulo:
                usuario.lista.remove(titulo)
                libro.ejemplares += 1

    def mostrarInventario(self):
        for libro in self.libros:
            print(f'Del libro {libro.titulo} hay {libro.ejemplares} ejemplares ')

# Ejemplo de Uso
biblioteca = Biblioteca()  # Crear una instancia de Biblioteca
libro1 = Libro("El Gran Gatsby", "F. Scott Fitzgerald", 3)  # Crear un libro
libro2 = Libro("Cien Años de Soledad", "Gabriel García Márquez", 5)  # Crear otro libro

biblioteca.agregarLibro(libro1)  # Agregar libro1 al inventario de la biblioteca
biblioteca.agregarLibro(libro2)  # Agregar libro2 al inventario de la biblioteca

biblioteca.mostrarInventario()  # Mostrar el inventario de la biblioteca

usuario1 = Usuario("Lara", "12345")  # Crear un usuario1
usuario2 = Usuario("Ana", "54321")  # Crear un usuario2

biblioteca.prestarLibroUsuario(usuario1, "El Gran Gatsby")  # Prestar libro1 a usuario1
biblioteca.prestarLibroUsuario(usuario2, "Cien Años de Soledad")  # Prestar libro2 a usuario2

biblioteca.mostrarInventario()  # Mostrar el inventario de la biblioteca después de prestar libros

biblioteca.devolverLibro(usuario1, "El Gran Gatsby")  # Devolver libro1 prestado por usuario1

biblioteca.mostrarInventario()  # Mostrar el inventario de la biblioteca después de devolver un libro