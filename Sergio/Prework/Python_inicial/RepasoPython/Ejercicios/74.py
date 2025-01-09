''' LISTA DE TAREAS 
Crea una clase "ListaTareas" que contenga una lista de tareas pendientes. 
Implementa métodos para agregar una tarea, marcar una tarea como 
completada y mostrar todas las tareas'''

class ListaTareas:
    def __init__(self, lista):
        self.lista = lista
    def agregarTarea(self, tarea):
        self.lista.append(tarea)
    def completarTarea(self, tarea):
        self.lista.remove(tarea)
    def mostrarTareas(self):
        for lista in self.lista:
            print(lista)


listaSergio = ListaTareas(['Tarea 1', 'Tarea 2', 'Tarea 3'])
listaSergio.mostrarTareas()
listaSergio.agregarTarea('Tarea 4')
listaSergio.mostrarTareas()
listaSergio.completarTarea('Tarea 2')
listaSergio.mostrarTareas()