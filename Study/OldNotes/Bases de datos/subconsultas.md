Explicacion de subconsulta
;;
```SQL
-- ================================
-- 🧠 SUBCONSULTAS EN SQL (SUBQUERIES)
-- ================================
-- Una subconsulta es una consulta dentro de otra consulta.
-- Se ejecuta primero y su resultado se usa en la consulta principal.
--
-- Puede devolver:
-- 1) Un solo valor (escalar)
-- 2) Una lista de valores (una “columna”)
-- 3) Una tabla completa (derivada)
--
-- Se pueden usar en: SELECT, WHERE, FROM, HAVING

-- =========================================
-- 1) SUBCONSULTA ESCALAR (DEVUELVE 1 VALOR)
-- =========================================
-- Se usa como si fuera una columna calculada

SELECT
    nombre,
    (SELECT COUNT(*)
     FROM pedidos
     WHERE pedidos.usuario_id = usuarios.id) AS total_pedidos
FROM usuarios;

-- 🧠 Idea:
-- La subconsulta se ejecuta por cada fila de "usuarios"
-- y devuelve un número (cantidad de pedidos)

-- =========================================
-- 2) SUBCONSULTA EN WHERE (LISTA DE VALORES)
-- =========================================
-- Devuelve una lista de resultados

SELECT *
FROM usuarios
WHERE id IN (
    SELECT usuario_id
    FROM pedidos
);

-- 🧠 Idea:
-- La subconsulta devuelve varios valores (usuario_id)
-- y el WHERE filtra los que coinciden

-- =========================================
-- 3) SUBCONSULTA COMO TABLA (DERIVADA)
-- =========================================
-- Se usa dentro del FROM como si fuera una tabla real

SELECT *
FROM (
    SELECT
        usuario_id,
        COUNT(*) AS total_pedidos
    FROM pedidos
    GROUP BY usuario_id
) AS resumen;

-- 🧠 Idea:
-- La subconsulta genera una tabla temporal "resumen"
-- que luego se puede consultar normalmente

-- =========================================
-- 4) SUBCONSULTA EN HAVING
-- =========================================
-- Se usa para filtrar resultados agregados

SELECT usuario_id, COUNT(*) AS total
FROM pedidos
GROUP BY usuario_id
HAVING COUNT(*) > (
    SELECT AVG(cantidad)
    FROM (
        SELECT COUNT(*) AS cantidad
        FROM pedidos
        GROUP BY usuario_id
    ) AS promedio
);

-- 🧠 Idea:
-- Compara cada usuario contra un promedio calculado en otra subconsulta

-- =========================================
-- 🧩 TIPOS DE SUBCONSULTAS
-- =========================================
-- 🔹 Escalar → devuelve 1 valor
-- 🔹 Lista → devuelve varias filas (IN)
-- 🔹 Tabla → devuelve una tabla (FROM)

-- =========================================
-- ⚠️ PUNTOS IMPORTANTES
-- =========================================
-- ✔ La subconsulta se ejecuta antes que la consulta principal
-- ✔ Puede ser correlacionada (depende de la fila externa)
-- ✔ Puede ser no correlacionada (independiente)
-- ✔ Puede afectar rendimiento si se usa mal

-- =========================================
-- 🧠 DIFERENCIA CLAVE
-- =========================================
-- JOIN → combina tablas directamente
-- SUBCONSULTA → usa el resultado de otra consulta como dato

```