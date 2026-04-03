Para que sirve
;;
La restricción **`DEFAULT`** sirve para establecer un **valor automático** en una columna cuando tú no proporcionas uno al insertar un nuevo registro.
___
Es como el "plan B" de SQL: si tú no le dices qué poner, él pone lo que tú hayas definido por defecto.
```SQL
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    estado VARCHAR(20) DEFAULT 'Activo', -- Si no pongo nada, será 'Activo'
    monedas INT DEFAULT 0,               -- Si no pongo nada, será 0
    fecha_registro DATE DEFAULT CURRENT_DATE -- Pone la fecha de hoy sola
);
```

#baseDeDatos #tipos 