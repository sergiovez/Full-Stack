''' TIENDA ONLINE 
Crea una clase "Producto" con atributos como nombre, precio y cantidad en 
stock. Luego, crea una clase "Tienda" que contenga una lista de productos 
disponibles y métodos para agregar productos, mostrar el inventario y 
realizar una compra.'''

class Producto:
    def __init__(self, nombre, precio, cantidad):
        self.nombre = nombre
        self.precio = precio
        self.cantidad = cantidad

class Tienda:
    def __init__(self):
        self.productos = []
    def agregarProducto(self, producto):
        self.productos.append(producto)
    def mostrarInventario(self):
        for producto in self.productos:
            print(f'El producto {producto.nombre} tiene un precio de {producto.precio} y hay {producto.cantidad} productos en stock')
    def realizarCompra(self, nombre, cantidad):
        for producto in self.productos:
            if producto.nombre == nombre:
                if producto.cantidad >= cantidad:
                    producto.cantidad -= cantidad
                    print('Compra realizada')
                else:
                    print('No hay suficiente stock')

p1 = Producto('Papel', 100, 30)
p2 = Producto('Atun', 50, 20)
p3 = Producto('Salmon', 75, 10)
tienda = Tienda()

tienda.mostrarInventario()
tienda.agregarProducto(p1)
tienda.agregarProducto(p2)
tienda.agregarProducto(p3)
tienda.mostrarInventario()
tienda.realizarCompra('Papel', 40)
tienda.realizarCompra('Papel', 20)
tienda.mostrarInventario()