Que es?
;;
**CHARACTER(n)** (también conocido como **CHAR(n)**) es un tipo de dato para almacenar cadenas de texto de **longitud fija**.

Aquí tienes sus reglas clave:

1. **Tamaño estricto:** El número `(n)` define cuántos caracteres guardará **siempre** la columna. Si defines `CHAR(5)`, esa columna siempre ocupará el espacio de 5 caracteres en el disco.
2. **Relleno automático:** Si guardas un texto más corto que `(n)`, la base de datos añade **espacios en blanco** al final hasta completar el tamaño.
    - _Ejemplo:_ Si guardas `'Paz'` en un `CHAR(5)`, se almacenará como `'Paz '`.
3. **Límite máximo:** Si intentas guardar un texto con más de `(n)` caracteres, la base de datos lanzará un **error** (a menos que los caracteres sobrantes sean espacios en blanco, los cuales suele ignorar).
4. **Uso ideal:** Se utiliza para datos que **siempre miden lo mismo**, como:
    - Códigos de país (`MX`, `ES`, `US`).
    - Siglas de moneda (`USD`, `EUR`).
    - Estados de un proceso representados por una letra (`A` para Activo, `I` para Inactivo).
    - 
    - 
    


#baseDeDatos