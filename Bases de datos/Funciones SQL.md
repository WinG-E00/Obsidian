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

 
```



#LenguajeSQL 