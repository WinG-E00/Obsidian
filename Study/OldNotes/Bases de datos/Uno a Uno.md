Como funciona?
;;
La relación **1:1 (Uno a Uno)** es como un "matrimonio exclusivo" en tu base de datos: un registro de la Tabla A solo puede estar conectado con **un único** registro de la Tabla B, y viceversa.
Ejemplo
___
```
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Expedientes (
    id_usuario INT PRIMARY KEY, -- Es su propia PK...
    historial TEXT,
    -- ...y TAMBIÉN es la FK que conecta con Usuarios
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
```
<!--SR:!2026-08-20,1,170-->


#baseDeDatos 
