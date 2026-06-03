Que hace?
;;
```SQl
--Que hace group by? te agrupa todos los elementos sin repetir
```
En group by basicamente se puede poner cualquier expresion que sirva para definir como se agrupan los registros para que no se repitan
osea basicamente te dice, agarrame este valor 5 y todos los que tengan 5 en mis columnas mostramelos
___
```SQL
/* ============================================================
   GROUP BY - TODO LO QUE PUEDE IR DENTRO
   ============================================================ */

/* 1. Una columna */
SELECT departamento, COUNT(*)
FROM empleados
GROUP BY departamento;


/* 2. Varias columnas */
SELECT departamento, ciudad, COUNT(*)
FROM empleados
GROUP BY departamento, ciudad;


/* 3. Funciones / expresiones */
SELECT YEAR(fecha_ingreso), COUNT(*)
FROM empleados
GROUP BY YEAR(fecha_ingreso);

SELECT MONTH(fecha_ingreso), COUNT(*)
FROM empleados
GROUP BY MONTH(fecha_ingreso);

SELECT UPPER(nombre), COUNT(*)
FROM empleados
GROUP BY UPPER(nombre);


/* 4. Operaciones matemáticas */
SELECT precio * cantidad AS total, COUNT(*)
FROM ventas
GROUP BY precio * cantidad;

SELECT salario / 1000 AS rango
FROM empleados
GROUP BY salario / 1000;


/* 5. CASE */
SELECT
    CASE
        WHEN edad < 18 THEN 'Menor'
        ELSE 'Mayor'
    END AS categoria,
    COUNT(*)
FROM personas
GROUP BY
    CASE
        WHEN edad < 18 THEN 'Menor'
        ELSE 'Mayor'
    END;


/* 6. Posición de columnas (MySQL) */
SELECT departamento, ciudad, COUNT(*)
FROM empleados
GROUP BY 1, 2;


/* ============================================================
   FUNCIONES DE AGREGACIÓN
   (NO VAN DENTRO DE GROUP BY)
   ============================================================ */

SELECT
    departamento,
    COUNT(*)       AS cantidad,
    SUM(salario)   AS suma_salarios,
    AVG(salario)   AS promedio,
    MAX(salario)   AS salario_maximo,
    MIN(salario)   AS salario_minimo
FROM empleados
GROUP BY departamento;


/* ============================================================
   HAVING (FILTRA GRUPOS)
   ============================================================ */

SELECT
    departamento,
    COUNT(*) AS cantidad
FROM empleados
GROUP BY departamento
HAVING COUNT(*) > 5;


SELECT
    departamento,
    AVG(salario) AS promedio
FROM empleados
GROUP BY departamento
HAVING AVG(salario) > 50000;


/* ============================================================
   ORDER BY
   ============================================================ */

SELECT
    departamento,
    COUNT(*) AS cantidad
FROM empleados
GROUP BY departamento
ORDER BY cantidad DESC;


/* ============================================================
   LIMIT
   ============================================================ */

SELECT
    departamento,
    COUNT(*) AS cantidad
FROM empleados
GROUP BY departamento
ORDER BY cantidad DESC
LIMIT 10;


/* ============================================================
   EJEMPLO COMPLETO
   ============================================================ */

SELECT
    departamento,
    COUNT(*)      AS empleados,
    AVG(salario)  AS salario_promedio,
    MAX(salario)  AS salario_maximo,
    MIN(salario)  AS salario_minimo
FROM empleados
WHERE activo = 1
GROUP BY departamento
HAVING AVG(salario) > 50000
ORDER BY salario_promedio DESC
LIMIT 5;


/* ============================================================
   EJEMPLOS INCORRECTOS
   ============================================================ */

/* ERROR: función de agregación en GROUP BY */
SELECT departamento, COUNT(*)
FROM empleados
GROUP BY COUNT(*);


/* ERROR: AVG en GROUP BY */
SELECT departamento, AVG(salario)
FROM empleados
GROUP BY AVG(salario);


/* ERROR: columna no agrupada ni agregada */
SELECT nombre, departamento, COUNT(*)
FROM empleados
GROUP BY departamento;
```