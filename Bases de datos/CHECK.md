Para que sirve?
;;
La restricción **`CHECK`** es el "filtro de seguridad" de SQL. Sirve para obligar a que los datos de una columna cumplan una **condición lógica** antes de que se guarden.
___
Si el dato no cumple la regla (la condición es falsa), SQL **rechaza** la operación y te lanza un error.
Seria basicamente como una validacion
___
```SQL
CREATE TABLE Empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    edad INT CHECK (edad >= 18),           -- REGLA 1: Solo adultos
    salario DECIMAL CHECK (salario > 1000) -- REGLA 2: Sueldo mínimo de 1000
);
```
<!--SR:!2026-04-10,1,190-->

#baseDeDatos #tipos 