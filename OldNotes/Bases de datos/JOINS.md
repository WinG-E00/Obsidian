JOINS
;;
```SQL
-- ======================================
-- 📌 TIPOS DE JOIN EN SQL
-- ======================================

-- Suponemos estas tablas:
-- usuarios(id, nombre)
-- pedidos(id, usuario_id, total)

-- ======================================
-- 1. INNER JOIN
-- ======================================

SELECT u.nombre, p.total
FROM usuarios u
INNER JOIN pedidos p
ON u.id = p.usuario_id;
-- 👉 Solo muestra coincidencias en ambas tablas
-- 👉 Si no hay pedido, no aparece el usuario


-- ======================================
-- 2. LEFT JOIN (LEFT OUTER JOIN)
-- ======================================

SELECT u.nombre, p.total
FROM usuarios u
LEFT JOIN pedidos p
ON u.id = p.usuario_id;
-- 👉 Muestra TODOS los usuarios
-- 👉 Si no tiene pedido, aparece NULL en p.total


-- ======================================
-- 3. RIGHT JOIN (RIGHT OUTER JOIN)
-- ======================================

SELECT u.nombre, p.total
FROM usuarios u
RIGHT JOIN pedidos p
ON u.id = p.usuario_id;
-- 👉 Muestra TODOS los pedidos
-- 👉 Si no hay usuario asociado, aparece NULL en usuario


-- ======================================
-- 4. FULL OUTER JOIN
-- ======================================

SELECT u.nombre, p.total
FROM usuarios u
FULL OUTER JOIN pedidos p
ON u.id = p.usuario_id;
-- 👉 Muestra TODO de ambas tablas
-- 👉 Coincidan o no coincidan

-- ⚠️ No todos los motores lo soportan (MySQL no nativo)


-- ======================================
-- 5. CROSS JOIN
-- ======================================

SELECT u.nombre, p.total
FROM usuarios u
CROSS JOIN pedidos p;
-- 👉 Producto cartesiano
-- 👉 Cada usuario combinado con cada pedido
-- ⚠️ Puede generar MUCHOS registros


-- ======================================
-- 🧠 RESUMEN RÁPIDO
-- ======================================

-- INNER JOIN → solo coincidencias
-- LEFT JOIN  → todo de la izquierda
-- RIGHT JOIN → todo de la derecha
-- FULL JOIN  → todo de ambos lados
-- CROSS JOIN → combinaciones completas (sin condición)
```
___
![[../Pasted image 20260602205810.png]]