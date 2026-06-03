Que puede ir en el FROM?
;;
```SQL
-- =========================================
-- 1. FROM con una tabla simple
-- =========================================
SELECT *
FROM usuarios;


-- =========================================
-- 2. FROM con JOIN entre tablas
-- =========================================
SELECT *
FROM usuarios u
JOIN pedidos p
  ON u.id = p.usuario_id;


-- =========================================
-- 3. FROM con subconsulta (tabla derivada)
-- =========================================
SELECT *
FROM (
    SELECT id, nombre
    FROM usuarios
    WHERE activo = true
) AS usuarios_activos;


-- =========================================
-- 4. FROM con una vista (VIEW)
-- =========================================
SELECT *
FROM vista_usuarios_activos;


-- =========================================
-- 5. FROM con función que devuelve tabla
-- (depende del motor: PostgreSQL, SQL Server, etc.)
-- =========================================
SELECT *
FROM generar_reporte_mensual();


-- =========================================
-- 6. FROM usando CTE (WITH ... antes del SELECT)
-- =========================================
WITH activos AS (
    SELECT *
    FROM usuarios
    WHERE activo = true
)
SELECT *
FROM activos;
```