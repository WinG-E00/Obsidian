Operadores de conjunto
;;
```SQL
-- ==============================
-- 📌 OPERADORES DE CONJUNTOS EN SQL
-- ==============================

-- 1. UNION
-- 🔹 Une los resultados de dos consultas
-- 🔹 Elimina duplicados automáticamente
SELECT nombre FROM clientes
UNION
SELECT nombre FROM proveedores;
-- 👉 Resultado: lista combinada SIN repetidos


-- 2. UNION ALL
-- 🔹 Igual que UNION pero SIN eliminar duplicados
SELECT nombre FROM clientes
UNION ALL
SELECT nombre FROM proveedores;
-- 👉 Resultado: incluye repetidos si existen


-- 3. INTERSECT
-- 🔹 Devuelve SOLO los valores que existen en ambas consultas
SELECT nombre FROM clientes
INTERSECT
SELECT nombre FROM proveedores;
-- 👉 Resultado: nombres que están en ambos conjuntos
-- ⚠️ No todos los motores SQL lo soportan (ej: MySQL no nativamente)


-- 4. EXCEPT (o MINUS en Oracle)
-- 🔹 Devuelve lo que está en la primera consulta
-- 🔹 pero NO está en la segunda
SELECT nombre FROM clientes
EXCEPT
SELECT nombre FROM proveedores;
-- 👉 Resultado: clientes que NO son proveedores

-- ⚠️ En Oracle se usa:
-- MINUS en lugar de EXCEPT
```


#LenguajeSQL 