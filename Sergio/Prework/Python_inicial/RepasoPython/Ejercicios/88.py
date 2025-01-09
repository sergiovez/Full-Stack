'''Ejercicio: Verificación de Inicio de Sesión con Decorador
 Estás desarrollando un sistema de autenticación para una aplicación web y 
deseas implementar un sistema de inicio de sesión que verifique si las 
credenciales proporcionadas por el usuario son válidas antes de permitir el 
acceso a ciertas funciones. Además, deseas que una vez que el usuario haya 
iniciado sesión correctamente, se le proporcione información personal.
 Implementa lo siguiente:
 Un registro de usuarios que contenga información adicional, como el 
nombre completo y el correo electrónico.
 Un decorador llamado 
verificar_inicio_sesion que acepte el nombre de 
usuario y la contraseña como argumentos. Este decorador verificará si las 
credenciales proporcionadas son válidas comparándolas con el registro de 
usuarios. Si las credenciales son válidas, la función decorada se ejecutará y 
se le pasará como argumento la información personal del usuario.
 Una función llamada 
informacion_usuario que imprima la información personal 
del usuario después de que haya iniciado sesión correctamente.
Implementa este sistema de inicio de sesión utilizando decoradores.
 A continuacion un ejemplo de una posible entrada y salida de la solucion:
 Entrada- informacion_usuario("usuario1",
 "contrasena123")
 Salida
  Inicio de sesión exitoso para el
 usuario usuario1.
 * Información personal del usuario:
 * Nombre completo: Juan Pérez
  Inicio de sesión fallido. Verifica tu
 nombre de usuario y contraseña'''