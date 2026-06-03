que puede ir en el WHERE
;;
Que hace where?
Basicamente te dice 
```SQL

-- =========================================
-- 1. Comparaciones básicas
-- =========================================
SELECT *
FROM usuarios
WHERE edad = 18;

SELECT *
FROM usuarios
WHERE edad <> 18;

SELECT *
FROM usuarios
WHERE edad > 18;


-- =========================================
-- 2. Operadores lógicos (AND / OR / NOT)
-- =========================================
SELECT *
FROM usuarios
WHERE edad > 18 AND activo = true;

SELECT *
FROM usuarios
WHERE edad > 18 OR rol = 'admin';

SELECT *
FROM usuarios
WHERE NOT activo;


-- =========================================
-- 3. BETWEEN (rangos)
-- =========================================
SELECT *
FROM usuarios
WHERE edad BETWEEN 18 AND 30;


-- =========================================
-- 4. IN (listas o subconsultas)
-- =========================================
SELECT *
FROM usuarios
WHERE pais IN ('AR', 'CL', 'UY');

SELECT *
FROM usuarios
WHERE id IN (
    SELECT usuario_id
    FROM pedidos
);


-- =========================================
-- 5. LIKE (patrones de texto)
-- =========================================
SELECT *
FROM usuarios
WHERE nombre LIKE 'Juan%';

SELECT *
FROM usuarios
WHERE nombre LIKE '%ez';

SELECT *
FROM usuarios
WHERE nombre LIKE '%mar%';


-- =========================================
-- 6. IS NULL / IS NOT NULL
-- =========================================
SELECT *
FROM usuarios
WHERE email IS NULL;

SELECT *
FROM usuarios
WHERE email IS NOT NULL;


-- =========================================
-- 7. EXISTS (subconsulta booleana)
-- =========================================
SELECT *
FROM usuarios u
WHERE EXISTS (
    SELECT 1
    FROM pedidos p
    WHERE p.usuario_id = u.id
);


-- =========================================
-- 8. Comparación con subconsulta escalar
-- =========================================
SELECT *
FROM usuarios
WHERE edad > (
    SELECT AVG(edad)
    FROM usuarios
);


-- =========================================
-- 9. Uso de funciones en WHERE
-- =========================================
SELECT *
FROM usuarios
WHERE LENGTH(nombre) > 5;

SELECT *
FROM usuarios
WHERE LOWER(email) = 'test@mail.com';


-- =========================================
-- 10. Expresiones complejas combinadas
-- =========================================
SELECT *
FROM usuarios
WHERE (edad > 18 AND activo = true)
   OR (rol = 'admin' AND NOT bloqueado);

```