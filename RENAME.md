Que hace?
;;
Modifica la estructura de la entidad osea la tabla
```SQL
RENAME TABLE Cultivos TO Plantaciones;
```
<!--SR:!2026-05-05,1,170-->

```SQL
ALTER TABLE Cultivos RENAME COLUMN tipo_de_cultivo TO nombre_semilla;
```

```SQL
ALTER TABLE Cultivos RENAME INDEX fk_Cultivos_maquina1_idx TO idx_maquinaria_cultivo;
```



#baseDeDatos/sql/DDL/RENAME
