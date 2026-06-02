Cuales son las funciones que existen en sql?
;;
## Funciones de agregacion
```SQL

---Para contar cuantas filas tiene una columna
Count(id);

--- Para sumar los valores de los registros
SUM(precio):
--- Para sacar el avarage de osea el promedio de una funcion 
AVG(precios)

---Para encontrar el valor minimo de una columnaç
Min(precios);

--- Para encontrar el valor maximo de una columna
MAX(precios);



```


## Funciones numericas

```SQL
--- ABS devuelve el valor absoluto de un numero sin importan si es negativo o no, ademas te puede convertir todos los valores de una columna tambien no solo numeros
ABS(precios);

---Roudn es para redondear los valores toma dos valores de entrada, el numero o columan con los numeros y el numero de decimales que queres poner
ROUND(precios,2);
ROUND(4.5555,2);


--- CEIL / CEILING() redondea hacia arriba, basciamente si por ejemplo tenes 4.3 te devuelve 5, osea lo redondea hacia arriba,  a excepcion de que sean numeros negativos, entonces te por ejemplo si tenes -4.3, te devuelve 4

SELECT CEILING(4.3);
SELECT CEILING(-4.3);


---  Floor lo mismo que ceiling solo que redonde  hacia abajo floor(4.9) = 4 floor(-4.9) = 5
 

SELECT floor(4.9);
SELECT floor(-4.9);



---Power potencia, basicamente es la funcion para la potencia, esta funcion toma dos valores, la base y el exponenten POWER(base,exponente)
SELECT POWER(4)



--- SQRT() Es para la raiz cuadrada
Para calcular la raiz cuadrada 
SELECT SQRT(precios);
 
```



## Funciones de texto
```SQL
--- Para devolver la longitud del texto
select LENGHT(nombres) from tabla;

select upper(nombres) from tabla;
--- convierte los o el registro en caracteres a mayuscula

select Lower(nombres) from tabla;
--- Convierte los registros selecionados en caracteress a minusculas


CONCAT(precios, nombres)
--- Basicamente para concatenar cadenas de texto concat("hola", " chau"); = hola chau tambien se puede concatenar varios registros de disintas columnas


SUBSTRING('Hola Mundo',1,4);
-- Resultado = Hola



TRIM(' hola chabalez');
--- Sirve para **eliminar espacios en blanco al inicio y al final de un texto. resultado = "hola chabalez"

```


## Funciones de fecha y hora

```SQL
NOW()
--- devuelve la fecha y hora actual de la base de datos, now es una funcion que no recibe ningun parametro

SELECT CURRENT_DATE;
--- deevuelve solo la fecha actual, sin la hora

YEAR() / MONTH() / DAY() 
-- Devuelve partes de la fecha






```



## Funciones de conversion
```
-- ==========================
-- TEXTO -> NÚMERO
-- ==========================

-- Texto a entero con signo
SELECT CAST('123' AS SIGNED);

-- Texto a entero sin signo
SELECT CAST('123' AS UNSIGNED);

-- Texto a decimal
SELECT CAST('123.45' AS DECIMAL(10,2));

-- Texto a float
SELECT CAST('123.45' AS FLOAT);

-- Texto a double
SELECT CAST('123.45' AS DOUBLE);


-- ==========================
-- NÚMERO -> TEXTO
-- ==========================

-- Entero a texto
SELECT CAST(123 AS CHAR);

-- Decimal a texto
SELECT CAST(123.45 AS CHAR);

-- Float a texto
SELECT CAST(3.1416 AS CHAR);


-- ==========================
-- NÚMERO -> NÚMERO
-- ==========================

-- Decimal a entero (pierde la parte decimal)
SELECT CAST(123.99 AS SIGNED);

-- Entero a decimal
SELECT CAST(123 AS DECIMAL(10,2));

-- Float a entero
SELECT CAST(15.8 AS SIGNED);

-- Entero a float
SELECT CAST(15 AS FLOAT);


-- ==========================
-- TEXTO -> FECHA Y HORA
-- ==========================

-- Texto a fecha
SELECT CAST('2026-06-02' AS DATE);

-- Texto a hora
SELECT CAST('15:30:00' AS TIME);

-- Texto a fecha y hora
SELECT CAST('2026-06-02 15:30:00' AS DATETIME);


-- ==========================
-- FECHA Y HORA -> TEXTO
-- ==========================

-- Fecha a texto
SELECT CAST(CURDATE() AS CHAR);

-- Hora a texto
SELECT CAST(CURTIME() AS CHAR);

-- Fecha y hora a texto
SELECT CAST(NOW() AS CHAR);


-- ==========================
-- FECHA Y HORA -> FECHA Y HORA
-- ==========================

-- Datetime a fecha (descarta la hora)
SELECT CAST(NOW() AS DATE);

-- Datetime a hora (descarta la fecha)
SELECT CAST(NOW() AS TIME);


-- ==========================
-- EJEMPLOS INVÁLIDOS
-- ==========================

-- Error o advertencia: "Hola" no es un número
SELECT CAST('Hola' AS SIGNED);

-- Error o advertencia: formato de fecha inválido
SELECT CAST('perro' AS DATE);

-- Error o advertencia: no representa un decimal
SELECT CAST('abc' AS DECIMAL(10,2));

```




#LenguajeSQL 


