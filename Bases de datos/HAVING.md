Que puede ir en el having y para que sirve?
;;
Es para filtrar grupos en base a cierta condicion, se usa dentro del group by
```SQL
/* ============================================================
   HAVING
   Filtra GRUPOS creados por GROUP BY
   ============================================================ */


/* ============================================================
   1. FUNCIONES DE AGREGACIÓN
   ============================================================ */

HAVING COUNT(*) > 5

HAVING SUM(total) > 10000

HAVING AVG(salario) > 50000

HAVING MAX(salario) < 150000

HAVING MIN(stock) > 0


/* ============================================================
   2. OPERADORES DE COMPARACIÓN
   ============================================================ */

HAVING COUNT(*) = 10

HAVING COUNT(*) <> 10

HAVING COUNT(*) > 10

HAVING COUNT(*) >= 10

HAVING COUNT(*) < 10

HAVING COUNT(*) <= 10


/* ============================================================
   3. OPERADORES LÓGICOS
   ============================================================ */

HAVING COUNT(*) > 5
AND AVG(salario) > 50000

HAVING COUNT(*) > 5
OR AVG(salario) > 50000

HAVING NOT COUNT(*) > 5


/* ============================================================
   4. RANGOS Y PERTENENCIA
   ============================================================ */

-- BETWEEN

HAVING AVG(salario)
BETWEEN 30000 AND 50000

-- NOT BETWEEN

HAVING AVG(salario)
NOT BETWEEN 30000 AND 50000

-- IN

HAVING COUNT(*)
IN (5,10,15)

-- NOT IN

HAVING COUNT(*)
NOT IN (5,10,15)


/* ============================================================
   5. COMPARACIÓN DE TEXTO
   ============================================================ */

-- LIKE

HAVING departamento LIKE 'V%'

-- NOT LIKE

HAVING departamento NOT LIKE 'V%'


/* ============================================================
   6. VALORES NULOS
   ============================================================ */

-- IS NULL

HAVING supervisor IS NULL

-- IS NOT NULL

HAVING supervisor IS NOT NULL


/***************************************************************
   7. EXPRESIONES MATEMÁTICAS
 ***************************************************************/

HAVING SUM(ventas) * 0.21 > 1000

HAVING AVG(precio) + 100 > 500

HAVING COUNT(*) / 2 > 10


/* ============================================================
   8. FUNCIONES SQL
   ============================================================ */

HAVING ROUND(AVG(salario), 2) > 50000

HAVING YEAR(MAX(fecha_ingreso)) = 2025

HAVING LENGTH(departamento) > 5


/* ============================================================
   9. SUBCONSULTAS
   ============================================================ */

HAVING AVG(salario) >
(
    SELECT AVG(salario)
    FROM empleados
)

HAVING SUM(ventas) >
(
    SELECT AVG(total_ventas)
    FROM resumen_ventas
)


/* ============================================================
   10. COMBINACIÓN COMPLETA
   ============================================================ */

SELECT
    departamento,
    COUNT(*) AS empleados,
    SUM(salario) AS total_salarios,
    AVG(salario) AS promedio,
    MAX(salario) AS maximo,
    MIN(salario) AS minimo
FROM empleados
WHERE activo = 1
GROUP BY departamento
HAVING
       COUNT(*) > 5
   AND AVG(salario) > 50000
   AND SUM(salario) > 100000
   AND MAX(salario) < 150000
   AND MIN(salario) > 20000
ORDER BY promedio DESC;


/* ============================================================
   RECORDATORIO
   ============================================================

   WHERE    -> FILTRA FILAS

   GROUP BY -> CREA GRUPOS

   HAVING   -> FILTRA GRUPOS

   ORDEN GENERAL:

   SELECT
   FROM
   WHERE
   GROUP BY
   HAVING
   ORDER BY
   LIMIT

============================================================ */

```