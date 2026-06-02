Para que es?
;;
```SQL
-- ======================================
-- 📌 ALIAS EN SQL (EXPLICACIÓN + EJEMPLOS)
-- ======================================

-- 🔹 Un alias es un "nombre temporal" que se usa dentro de una consulta
-- 🔹 Sirve para columnas o tablas
-- 🔹 NO modifica la base de datos, solo el resultado de la consulta

-- ======================================
-- 1. ALIAS EN COLUMNAS
-- ======================================

SELECT 
    nombre AS cliente_nombre,
    edad AS edad_cliente
FROM usuarios;
-- 👉 Cambia el nombre de las columnas en el resultado
-- 👉 "nombre" pasa a mostrarse como "cliente_nombre"


-- ======================================
-- 2. ALIAS EN COLUMNAS CON CÁLCULOS
-- ======================================

SELECT 
    precio,
    precio * 1.21 AS precio_con_iva
FROM productos;
-- 👉 Crea una columna calculada con un nombre más claro


-- ======================================
-- 3. ALIAS EN TABLAS (MUY USADO EN JOIN)
-- ======================================

SELECT 
    u.nombre,
    p.total
FROM usuarios AS u
JOIN pedidos AS p
ON u.id = p.usuario_id;
-- 👉 "usuarios" se llama "u"
-- 👉 "pedidos" se llama "p"
-- 👉 hace la consulta más corta y legible


-- ======================================
-- 4. ALIAS SIN USAR "AS" (FORMA CORTA)
-- ======================================

SELECT 
    nombre cliente_nombre
FROM usuarios;
-- 👉 Algunos motores permiten omitir AS


-- ======================================
-- 🧠 RESUMEN
-- ======================================

-- ✔ Alias = nombre temporal dentro de la consulta
-- ✔ Se usa con columnas y tablas
-- ✔ No cambia la base de datos
-- ✔ Mejora legibilidad y reduce escritura (especialmente en JOINs)

```


#LenguajeSQL