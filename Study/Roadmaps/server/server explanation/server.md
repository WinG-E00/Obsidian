# Server

Un **servidor (server)** es un programa que recibe peticiones de clientes, las procesa y devuelve respuestas. 

En una aplicación web, se encarga de consultar usuarios, verificar contraseñas o guardar información en una base de datos.

## Ejemplo: buscar un usuario

1. El cliente envía una petición: `GET /usuarios/15`.
2. El servidor recibe la petición y encuentra la **ruta** correspondiente.
3. Los **middlewares** pueden validar los datos y comprobar permisos.
4. El **controlador** coordina la operación y utiliza el **modelo** para consultar la base de datos.
5. El servidor devuelve una respuesta con los datos del usuario o un error.


## Recorrido básico

Cliente → servidor → ruta → controlador → modelo → base de datos → respuesta al cliente.
