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


```SQL
-- ==========================================
-- CAST() EN MARIADB / MYSQL
-- ==========================================
-- CAST() sirve para convertir un valor de un tipo de dato a otro.
--
-- Sintaxis:
-- CAST(valor AS tipo)
-- ==========================================


-- ==========================================
-- SIGNED
-- ==========================================
-- Convierte a un número entero CON signo.
-- Puede ser positivo o negativo.

SELECT CAST('123' AS SIGNED);   -- Resultado: 123
SELECT CAST('-123' AS SIGNED);  -- Resultado: -123


-- ==========================================
-- UNSIGNED
-- ==========================================
-- Convierte a un número entero SIN signo.
-- Se utiliza para valores que nunca serán negativos
-- como IDs, stock, edades, etc.

SELECT CAST('123' AS UNSIGNED); -- Resultado: 123


-- ==========================================
-- CHAR
-- ==========================================
-- Convierte cualquier valor a texto.

SELECT CAST(123 AS CHAR);       -- Resultado: '123'
SELECT CAST(15.5 AS CHAR);      -- Resultado: '15.5'
SELECT CAST(NOW() AS CHAR);     -- Resultado: '2026-06-02 12:34:56'


-- ==========================================
-- DECIMAL(M,D)
-- ==========================================
-- Número decimal exacto.
--
-- M = cantidad total de dígitos.
-- D = cantidad de decimales.

SELECT CAST('123.45' AS DECIMAL(10,2)); -- Resultado: 123.45
SELECT CAST(100 AS DECIMAL(10,2));      -- Resultado: 100.00


-- ==========================================
-- FLOAT
-- ==========================================
-- Número decimal aproximado.
-- Menos preciso que DECIMAL.

SELECT CAST('3.14' AS FLOAT); -- Resultado: 3.14


-- ==========================================
-- DOUBLE
-- ==========================================
-- Número decimal aproximado con mayor precisión.

SELECT CAST('3.141592653589793' AS DOUBLE);


-- ==========================================
-- DATE
-- ==========================================
-- Convierte un texto a fecha.

SELECT CAST('2026-06-02' AS DATE);


-- ==========================================
-- TIME
-- ==========================================
-- Convierte un texto a hora.

SELECT CAST('15:30:00' AS TIME);


-- ==========================================
-- DATETIME
-- ==========================================
-- Convierte un texto a fecha y hora.

SELECT CAST('2026-06-02 15:30:00' AS DATETIME);


-- ==========================================
-- EJEMPLOS DE CONVERSIONES COMUNES
-- ==========================================

-- Texto -> Entero
SELECT CAST('500' AS SIGNED);

-- Texto -> Decimal
SELECT CAST('99.99' AS DECIMAL(10,2));

-- Entero -> Texto
SELECT CAST(500 AS CHAR);

-- Decimal -> Texto
SELECT CAST(99.99 AS CHAR);

-- Texto -> Fecha
SELECT CAST('2026-12-25' AS DATE);

-- Datetime -> Texto
SELECT CAST(NOW() AS CHAR);


-- ==========================================
-- EJEMPLOS INVÁLIDOS
-- ==========================================
-- Estas conversiones no tienen sentido porque
-- el valor no puede interpretarse como el tipo
-- solicitado.

SELECT CAST('Hola' AS SIGNED);        -- Error o advertencia
SELECT CAST('abc' AS DECIMAL(10,2));  -- Error o advertencia
SELECT CAST('perro' AS DATE);         -- Error o advertencia


```


#LenguajeSQL 


