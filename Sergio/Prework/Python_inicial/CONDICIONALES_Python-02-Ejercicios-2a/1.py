# Ejercicio 1
# Pedir el nombre de usuario
usuario = input('Introduce nombre de usuario: ')

# Adecuarlo a minisculas y sin puntos ni almohadillas
usuario = usuario.replace(".","")
usuario = usuario.replace("#","")
usuario = usuario.lower()

# Usuarios administrador
usuario_1 = "alejandro"
usuario_2 = "naomi"
usuario_3 = "sergio"

# Ciclo if
if (usuario == usuario_1) or (usuario == usuario_2) or (usuario == usuario_3):
    print("¡Bienvenido", usuario.title(), "!")
else:
    print("Bienvenido usuario invitado")


