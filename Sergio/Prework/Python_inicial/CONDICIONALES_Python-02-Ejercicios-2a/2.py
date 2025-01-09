# Ejercicio 2
contraseña = input('Introduce contraseña: ')
if ((('a' in contraseña) or ('e' in contraseña) or ('i' in contraseña) or ('o' in contraseña) or ('u' in contraseña)) and (('*' in contraseña) or ('#' in contraseña))):
    print('Contraseña segura')
else:
    print('Contraseña no segura')