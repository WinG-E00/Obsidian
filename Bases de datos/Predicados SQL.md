Que seria el un predicado en SQL?
;;
un predicado seria como una preposicion en donde el resultado te da un valor verdadero o falso, se usa en clausulas que necesiten un valor de verdad como [[WHERE]] [[HAVING]] [[JOIN]]
```sql
-- ======================================
-- 📌 QUÉ ES UN PREDICADO EN SQL
-- ======================================

-- 🔹 Un predicado es una condición que evalúa si una fila cumple o no una regla
-- 🔹 Siempre devuelve: TRUE / FALSE / UNKNOWN
-- 🔹 Se usa en WHERE, HAVING y ON

-- ======================================
-- 1. PREDICADO DE COMPARACIÓN
-- ======================================

SELECT *
FROM usuarios
WHERE edad > 18;
-- 👉 "edad > 18" es el predicado
-- 👉 filtra usuarios mayores de edad


-- ======================================
-- 2. PREDICADO BETWEEN (rango)
-- ======================================

SELECT *
FROM productos
WHERE precio BETWEEN 100 AND 500;
-- 👉 "precio BETWEEN 100 AND 500" es el predicado


-- ======================================
-- 3. PREDICADO IN (pertenencia)
-- ======================================

SELECT *
FROM usuarios
WHERE pais IN ('Argentina', 'Chile');
-- 👉 "pais IN (...)" es el predicado


-- ======================================
-- 4. PREDICADO LIKE (patrones de texto)
-- ======================================

SELECT *
FROM usuarios
WHERE nombre LIKE 'Juan%';
-- 👉 "nombre LIKE 'Juan%'" es el predicado


-- ======================================
-- 5. PREDICADO IS NULL
-- ======================================

SELECT *
FROM usuarios
WHERE nombre IS NULL;
-- 👉 "nombre IS NULL" es el predicado


-- ======================================
-- 6. PREDICADOS LÓGICOS (combinados)
-- ======================================

SELECT *
FROM usuarios
WHERE edad > 18 AND pais = 'Argentina';
-- 👉 todo el bloque es un predicado compuesto


-- ======================================
-- 🧠 IDEA CLAVE
-- ======================================

-- Un predicado NO es solo un operador
-- Es TODA la condición completa que filtra filas
```
___
Estos serian los operadores que se usan en los predicados
[[Opeeradores de comparacion]]
[[operadores de null]]
[[Operador de patron]]
[[Operadores de pertenencia]]
[[operadores de rango]]
[[Opeeradores de comparacion]]