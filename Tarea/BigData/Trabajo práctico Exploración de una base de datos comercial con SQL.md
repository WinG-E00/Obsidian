
# Parte A
## Punto 1
---
Categories

La tabla Categories posee 4 Atributos con 8 registros
![[../../Pasted image 20261020121134.png]]


Esta tabla 
![[../../Pasted image 20261020121222.png]]
Category_id: Este atributo almacena numeros y es una primary key, tambien tiene la restriccion de que no puede ser nulo

category_name: Este atributo alamacena una cadena de texto de 15 de largo, y no puede ser nulo

description: Este atributo almacena una cadena de text que puede almacenar texto con un tamaño maximo de 64kb

picture: almacena informacion binaria pura y puede ser usada para almacenar imagenes

Relaciones
![[../../Pasted image 20261020121853.png]]
Esta tabla tambien en su pk tiene como FK a una tabla llamada products y en su atributo es llamado category_id

---

**Costumers**

Esta tabla posee 11 Atributos cada uno tiene un limitante distinto en cuanto a la cantidad de caracteres que puede almacenar.
![[../../Pasted image 20261020122339.png]]

Keys y relaciones
![[../../Pasted image 20261020122522.png]]
Tiene como primary key a costumer_id y este atributo no puede estar vacio.
Despues tiene el atributo company_name que tampoco puede estar vacio.

No tiene ninguna fk la tabla pero si actua 



Orders
Products
Shippers