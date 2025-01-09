''' DECLARACION DE LA RENTA:
 Para tributar en un determinado país es necesario ser mayor de edad y cobrar más de 1000 euros 
al mes. Además los tramos impositivos de la renta anual son los siguientes:
 RENTA
 Menos de 15.000 eu
 Entre 15.000 y 25.000 eu
 Entre 25.000 y 35.000 eu
 Entre 35.000 y 60.000 eu
 Más de 60.000 eu
 TIPO IMPOSITIVO
 5%
 15%
 20%
 30%
 45%
 Escribe un script que primero compruebe si eres susceptible de que se te aplique algún tipo 
impositivo y en caso afirmativo imprima por pantalla cuál te tocaría.'''

edad = int(input('Edad: '))
sueldo = int(input('Sueldo: '))

if (edad >= 18 ) and (sueldo >= 1000):
    if sueldo < 15000:
        porcentaje = 5
    elif (15000 <= sueldo < 25000):
        porcentaje = 15
    elif (25000 <= sueldo < 35000):
        porcentaje = 20
    elif (35000 <= sueldo < 60000):
        porcentaje = 30 
    else:
        porcentaje = 45                   
    print(f'Te corresponde un tipo impositivo del {porcentaje}%')
else:
    print('No eres susceptible de que se te aplique algún tipo impositivo')
