Como se usan las expresiones matematicas en el dql?
;;
En sql existen expresiones matematicas que pueden ser usadas con objetos que contengan numeros o que conviertan un valor a numero
___
 **Ubicación:** En cualquier cláusula que acepte números (`SELECT`, `WHERE`, `ORDER BY`, `SUM/AVG`).
- **Uso del `AS`:** **No es obligatorio**. Es un alias opcional para que el título de la columna sea legible en el `SELECT`.
- **Tipos de datos:** En esencia **todo se reduce a números** al operar. Funciona con:
    - Números directos.
    - Fechas (internamente son números de días/segundos).
    - Textos con números (SQL los convierte automáticamente).
- **Excepción:** En motores como SQL Server, el `+` entre textos une palabras (concatena), no suma.
---
