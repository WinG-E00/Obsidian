Para que sirve este operador?
;;
para buscar en tu columna registros con las letras Similares que andas buscando
```SQL
-- ============================
-- 📌 OPERADOR LIKE EN SQL
-- ============================

-- 🔹 LIKE permite buscar patrones en texto (strings)

-- ============================
-- 1. % (cualquier cantidad de caracteres)
-- ============================

SELECT *
FROM usuarios
WHERE nombre LIKE 'Juan%';
-- 👉 Nombres que empiezan con "Juan"
-- Ej: Juan, Juana, Juan Carlos


SELECT *
FROM usuarios
WHERE nombre LIKE '%Juan';
-- 👉 Nombres que terminan en "Juan"
-- Ej: "Pedro Juan", "Juan"


SELECT *
FROM usuarios
WHERE nombre LIKE '%Juan%';
-- 👉 Nombres que contienen "Juan" en cualquier parte
-- Ej: "Juan", "Juanito", "Maria Juan Perez"


-- ============================
-- 2. _ (un solo carácter)
-- ============================

SELECT *
FROM usuarios
WHERE nombre LIKE 'J_an';
-- 👉 Coincide con cualquier letra en el lugar del "_"
-- Ej: "Juan", "Jian", "Joan"


SELECT *
FROM usuarios
WHERE nombre LIKE '__an';
-- 👉 Dos caracteres cualquiera antes de "an"
-- Ej: "Juan", "Clan", "Fran"


-- ============================
-- 3. NOT LIKE (negación)
-- ============================

SELECT *
FROM usuarios
WHERE nombre NOT LIKE 'A%';
-- 👉 Nombres que NO empiezan con A


-- ============================
-- 4. Ejemplo práctico real
-- ============================

SELECT *
FROM productos
WHERE descripcion LIKE '%notebook%';
-- 👉 Busca productos que contengan la palabra "notebook"


-- ============================
-- 🧠 RESUMEN RÁPIDO
-- ============================

-- %  → cualquier cantidad de caracteres
-- _  → un solo carácter
-- LIKE → buscar patrón
-- NOT LIKE → excluir patrón

```