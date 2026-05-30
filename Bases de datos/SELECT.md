Que se puede poner en el select?
;;
```SQL
--- Nombres de columnas
SELECT cantidad

--- Nombres de varias columnas
SELECT cantidad, precio

--- Traer todas las columnas de la tabla
SELECT * 

--- Expresiones matematicas con las columnas
SELECT cantidad * precio FROM ventas;


--- Funciones de agregacion osea funciones que calculan
-- suma toda la columna
SELECT SUM(precio)
-- ME saca el Avarage de todos los resultados
SELECT AVG(precio)
--- devuelve el valor mas pequeño de la columna
SELECT min(precio)
-- max devuelve el mayor
SELECT max(precio)





```