'''CONTRASEÑA SEGURA:
 Por motivos de seguridad una contraseña debe tener una vocal en minúscula, dos símbolos 
especiales diferentes (pueden ser solo * o #). Dada una contraseña ingresada por el usuario, 
comprueba si es una contraseña segura e indícalo por pantalla.'''

contraseña = input('Introduce la contraseña: ')

if ((('a' in contraseña) or ('e' in contraseña) or ('i' in contraseña) or ('o' in contraseña) or ('u' in contraseña)) and (('*' in contraseña) or ('#' in contraseña))):
    print('Contraseña segura')
else:
    print('Contraseña no segura')