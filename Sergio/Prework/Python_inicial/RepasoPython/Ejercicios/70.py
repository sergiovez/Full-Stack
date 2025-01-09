'''RECTÁNGULO 
Crea una clase "Rectangulo" con atributos de longitud y ancho. Implementa 
un método para calcular el área y el perímetro del rectángulo.'''

class Rectangulo:
    def __init__(self, longitud, ancho):
        self.longitud = longitud
        self.ancho = ancho
    def area(self):
        return self.longitud*self.ancho
    def perimetro(self):
        return 2*(self.longitud + self.ancho)
    
poligono_1 = Rectangulo(4,4)
poligono_2 = Rectangulo(3,4)
area_1 = poligono_1.area()
area_2 = poligono_2.area()
perimetro_1 = poligono_1.perimetro()
perimetro_2 = poligono_2.perimetro()

print(f'El area del poligono 1 es de {area_1}mm^2 y el perimetro de {perimetro_1}mm')
print(f'El area del poligono 1 es de {area_2}mm^2 y el perimetro de {perimetro_2}mm')