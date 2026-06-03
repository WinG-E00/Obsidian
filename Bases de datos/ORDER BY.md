Que hace order by?
```SQL
/* ============================================================
   ORDER BY
   ORDENA LAS FILAS DEL RESULTADO (NO LAS COLUMNAS)
   ============================================================ */


/* ============================================================
   ¿QUÉ HACE ORDER BY?
   ============================================================

   - Ordena filas del resultado
   - No filtra datos (eso es WHERE)
   - No agrupa (eso es GROUP BY)
   - No calcula agregaciones (eso es COUNT, SUM, AVG)

============================================================ */


/* ============================================================
   1. ORDEN ASCENDENTE (ASC)
   MENOR → MAYOR (POR DEFECTO)
   ============================================================ */

ORDER BY salario

ORDER BY salario ASC

ORDER BY edad ASC

-- Ejemplo:
-- 1000 → 1500 → 2000 → 3000


/* ============================================================
   2. ORDEN DESCENDENTE (DESC)
   MAYOR → MENOR
   ============================================================ */

ORDER BY salario DESC

ORDER BY edad DESC

ORDER BY fecha DESC

-- Ejemplo:
-- 3000 → 2000 → 1500 → 1000


/* ============================================================
   3. MÚLTIPLES COLUMNAS
   ============================================================ */

ORDER BY departamento, salario

ORDER BY departamento, salario DESC

ORDER BY ciudad ASC, edad DESC


/* ============================================================
   4. ORDEN POR COLUMNAS DEL SELECT
   ============================================================ */

SELECT nombre, salario, edad
FROM empleados
ORDER BY salario DESC


/* ============================================================
   5. ORDEN POR ALIAS
   ============================================================ */

SELECT salario * 12 AS salario_anual
FROM empleados
ORDER BY salario_anual DESC


/* ============================================================
   6. ORDEN POR POSICIÓN DE COLUMNA
   ============================================================ */

SELECT nombre, salario, edad
FROM empleados
ORDER BY 1        -- nombre

SELECT nombre, salario, edad
FROM empleados
ORDER BY 2 DESC   -- salario

SELECT nombre, salario, edad
FROM empleados
ORDER BY 1, 2 DESC


/* ============================================================
   7. ORDEN POR EXPRESIONES
   ============================================================ */

ORDER BY salario * 12

ORDER BY salario + bonus DESC

ORDER BY ventas / 12 DESC


/* ============================================================
   8. ORDEN POR FUNCIONES
   ============================================================ */

ORDER BY UPPER(nombre)

ORDER BY LENGTH(nombre)

ORDER BY YEAR(fecha_ingreso)

ORDER BY MONTH(fecha_ingreso)


/* ============================================================
   9. ORDEN PERSONALIZADO CON CASE
   ============================================================ */

ORDER BY
CASE
    WHEN prioridad = 'Alta' THEN 1
    WHEN prioridad = 'Media' THEN 2
    WHEN prioridad = 'Baja' THEN 3
END


/* ============================================================
   10. ORDEN CON AGREGACIONES (CON GROUP BY)
   ============================================================ */

ORDER BY COUNT(*) DESC

ORDER BY SUM(ventas) DESC

ORDER BY AVG(salario) DESC

ORDER BY MAX(fecha) DESC

ORDER BY MIN(stock) ASC


/* ============================================================
   11. ORDEN CON SUBCONSULTAS
   ============================================================ */

ORDER BY
(
    SELECT AVG(salario)
    FROM empleados
) DESC


/* ============================================================
   12. ORDEN CON NULLS (SEGÚN MOTOR SQL)
   ============================================================ */

ORDER BY supervisor

-- algunos motores permiten:
ORDER BY supervisor NULLS FIRST
ORDER BY supervisor NULLS LAST


/* ============================================================
   COMBINACIÓN REAL (USO COMPLETO)
   ============================================================ */

SELECT
    departamento,
    COUNT(*) AS empleados,
    AVG(salario) AS promedio
FROM empleados
WHERE activo = 1
GROUP BY departamento
HAVING COUNT(*) > 5
ORDER BY promedio DESC, empleados DESC;


/* ============================================================
   ERROR COMÚN DE INTERPRETACIÓN
   ============================================================

   ORDER BY NO significa:

   ❌ "ordenar columnas"
   ❌ "traer el mayor automáticamente"

   SIGNIFICA:

   ✔ ordenar filas según la regla que vos definas

============================================================ */


/* ============================================================
   RESUMEN SIMPLE
   ============================================================

   ORDER BY salario ASC  → menor a mayor
   ORDER BY salario DESC → mayor a menor

============================================================ */

```