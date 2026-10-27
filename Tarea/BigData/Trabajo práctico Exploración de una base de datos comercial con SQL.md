
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

---

Esta tabla posee 11 Atributos cada uno tiene un limitante distinto en cuanto a la cantidad de caracteres que puede almacenar.
![[../../Pasted image 20261020122339.png]]

Keys y relaciones
![[../../Pasted image 20261020122522.png]]
Tiene como primary key a costumer_id y este atributo no puede estar vacio.
Despues tiene el atributo company_name que tampoco puede estar vacio.

No tiene ninguna fk la tabla pero si se relaciona con las tablas costumer_costumer_demo y la tabla orders como una fk 
![[../../Pasted image 20261020122745.png]]

--- 

# Orders
Esta tabla tiene 

![[../../Pasted image 20261020123701.png]]

order_id: este atributo seria la primary key con el tipo de dato numerico y con la resctrccion de not null

costumer_id: este atributo seria una Fk de la tabla costumers, con el tipo de dato de caracter con un limite de 5 caracteres.
![[../../Pasted image 20261020124028.png]]

employe_id: este atributo es otro FK de la tabla de la tabla orders que tiene como tipo de dato el int
![[../../Pasted image 20261020124305.png]] 
order_date: Este tipo atributo simplemente almacena la fecha en la que se ordeno, y tiene el tipo de dato de fecha.

required_date: Este atributo tambien almacena el tipo date para fechas

shipped_date: Este atributo almacena tambien el tipo de dato date y seria para almacenar las fechas de enviado

shipped_via: Este atributo tiene el tipo de dato de  int y es una FK que almacena la primary key de el encargado de el envio osea el shipper

freight: Este atributo posee el tipo de dato de float y almacena valores indicando la carga en peso de la orden

ship_name: Simplemente almacena el nombre, y tiene el tipo de dato de varchar con un limite de 40 caracteres

ship_address: Tipo de dato varchar con limite de 60 caracteres

ship_city: varchar con limite de 15 caracteres

ship_region:varchar con limite de 12 caracteres

ship_postal_code: varchar con limite de 10 caracteres.

ship_country: varchar con limite de 15 caracteres

Products


## Shippers
![[../../Pasted image 20261022121824.png]]
Tabla con 3 atributos

shipper_id: Tabla con el tipo de dato int con el parametro de PM
![[../../Pasted image 20261022121923.png]]
y con restriccion de not null

company_name: varchar con limite de 40 caracteres con el valor de not null

phone: varchar con limite de 24 caracteres.


# Punto B
**2. Consulta de registros:** Utilizando SELECT, consulta los primeros 10 registros de las tablas de clientes, productos y pedidos.
![[../../Pasted image 20261022135521.png]]

![[../../Pasted image 20261022135611.png]]

![[../../Pasted image 20261022135625.png]]


**3. Búsqueda de productos:** Realiza una consulta que muestre los productos cuyo precio unitario sea superior a 20. Los resultados deben mostrar el nombre del producto y su precio. Ordenalos de mayor a menor precio.
![[../../Pasted image 20261022140550.png]]

# PARTE B

**4. Búsqueda de clientes:** Consulta los clientes que pertenezcan a un país determinado. La consulta debe mostrar el nombre de la empresa, la ciudad y el país. Ordena los resultados alfabéticamente por nombre de empresa.

![[../../Pasted image 20261022141221.png]]



## 5.
![[../../Pasted image 20261027124959.png]]


# 6.
![[../../Pasted image 20261027131148.png]]


# 7.
![[../../Pasted image 20261027131448.png]]

# **Parte C. Conteos y operaciones de modificación**
# 7.
![[../../Pasted image 20261027132520.png]]


# 8.
![[../../Pasted image 20261027132415.png]]

![[../../Pasted image 20261027132436.png]]

