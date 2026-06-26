```SQL
  

  
  

  

-- 1 Corregir error cod_loca

UPDATE localidades SET COD_LOCA=34007004 WHERE cod_loca=7004;

-- Prueba

Select

  

  

  

  

-- 3 Registrar titularidad con ID 2358

INsert INTO `titulares` (`titular_nro`,`apellido_y_nombres`,`sexo`,`cuit`,`telefono`,`iva_inscripto`,`monotributo`,`catagoria_monotributo`,`monotributo_social`, `dgr_inscripto`,`dgr_convenio`, `mail` ) Values (2358,'ENCINA, GASTON', 'M','23-46153084-3','3704366377','N','S','B','N','N','N','gastonencinawj@gmail.com');

  

  

-- Transfiero la propiedad

UPdate `establecimientos_titulares` SET `nro_titular` = 2358 WHERE `nro_establecimiento` = 13;

  

-- Cargo nuevas parcelas

INSERT INTO `estabelcimiento_parcela_cultivo` (`ESTA_PARC_NRO`,`ESTABLECIMIENTO`,`PARCELA`,`SUPERFICIE`,`CULTIVO_NRO`) VALUES (5000,13,11,25,1), (5001,13,12,8,9);

  

  

  

-- 4 Crear tabla unidades de medidas, y modifico la tabla de parcelas para incluir las unidades y cargar el cultivo de frutilla 1 He y 250m para mis 6 productores

-- creo la tabla

CREATE TABLE unidad_de_medida (Unidad_de_medida int(1), Descripcion varchar(30));

  

-- Inserto mis valores en la tabla unidad de medida

INSERT INTO unidad_de_medida VALUES (1,'Hectáreas'), (2,'Metros Cuadrados');

  

-- Inserto la frutilla

INSERT INTO `cultivos` (`CULTIVO_NRO`,`CULTIVO_NOMBRE`,`LUGAR_CULTIVO`) VALUES (38, 'FRUTILLA', 'TODA LA PROVINCIA');

  

  

  

-- Modificacion de la tabla de parcelas

ALTER TABLE `estabelcimiento_parcela_cultivo` ADD unidad_de_medida int(1);

  

-- Hago insert de los 6 registros

INSERT INTO `estabelcimiento_parcela_cultivo` (`ESTA_PARC_NRO`,`ESTABLECIMIENTO`,`PARCELA`, `SUPERFICIE`, `CULTIVO_NRO`, `unidad_de_medida`) VALUES (5003,4,10,1,38,1),(5004,3,10,1,38,1),(5005,1,10,1,38,1),(5006,5,10,250,38,2),(5007,6,10,250,38,2),(5008,7,10,250,38,2);

  

  

-- 5 Determinar el establecimiento con mayor superficie,

  

SELECT ESTABLECIMIENTO, sum(superficie) as total_de_hectareas FROM estabelcimiento_parcela_cultivo GROUP BY ESTABLECIMIENTO ORDER BY total_de_hectareas DESC LIMIT 1;

  

  

-- 6 Establecimiento con la primera letra de mi apellido Encina

  

SELECT * FROM establecimientos WHERE nombre LIKE 'E%' LIMIT 5;

  

-- Eleji el que esta en El palo santo (275, EL PALO SANTO, RP N4 EL PARAISO, 34049034, EL PARAISO, PILCOMAYO, 9) Valores de mi tabla (nro,nombre,domicilio,cod_loca,localidad,departamento,cultivo)

  

SELECT e.nombre AS 'Establecimiento', epc.parcela AS 'Nro_Parcela', c.cultivo_nombre AS 'Nombre_Cultivo', epc.superficie AS 'Superficie_Ha' FROM estabelcimiento_parcela_cultivo epc JOIN establecimientos e ON epc.ESTABLECIMIENTO = e.nro JOIN cultivos c USING(CULTIVO_NRO) WHERE e.nombre = 'EL PALO SANTO';

  

  

  

-- 7 Determinar la superficie total y la cantidad de parcelas de PARRA; REGINA POMPEYA

SELECT t.apellido_y_nombres, SUM(epc.superficie) AS 'Superficie_total', COUNT(epc.esta_parc_nro) AS 'cantidad_de_parcelas' FROM titulares t JOIN estabelcimiento_parcela_cultivo epc ON t.titular_nro = epc.ESTABLECIMIENTO WHERE t.apellido_y_nombres = 'PARRA, REGINA POMPEYA';

  

  

  

-- 8 Informe de cultivos y superficies registrados a mi nombre con el id 2358

  

SELECT t.apellido_y_nombres, e.nombre AS 'Establecimiento', epc.parcela, epc.superficie AS 'SuperficieDP', c.cultivo_nombre FROM titulares t JOIN establecimientos_titulares et ON t.titular_nro = et.nro_titular JOIN establecimientos e ON et.nro_establecimiento = e.nro JOIN `estabelcimiento_parcela_cultivo` epc ON e.nro = epc.ESTABLECIMIENTO JOIN cultivos c USING(CULTIVO_NRO) WHERE t.titular_nro = 2358;

  

  

  

-- 9 Me falta hacer

  

SELECT l.localidad, c.cultivo_nombre, sum(epc.superficie) AS 'HectareasEG21' FROM localidades l JOIN establecimientos e ON l.cod_loca = e.cod_loca JOIN `estabelcimiento_parcela_cultivo` epc ON e.nro = epc.ESTABLECIMIENTO JOIN cultivos c USING(CULTIVO_NRO) WHERE l.localidad LIKE '%EL PALO SANTO%' GROUP BY c.cultivo_nombre;

  

  

-- 10

  

CREATE TABLE departamentos (nro_depar int, nombre_depar varchar(30));

  

INSERT INTO departamentos VALUES (1,'BERMEJO'), (2,'FORMOSA'), (3,'LAISHÍ'), (4,'MATACOS'),(5,'PATIÑO'),
```




Punto 6
|[nro](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60nro%60+ASC+LIMIT+5&sql_signature=fc7c850e4ce80bda80765a75dd4856d5b9b647db5ef44377377663dd80455e6a&session_max_rows=25&is_browse_distinct=0)|[nombre](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60nombre%60+ASC+LIMIT+5&sql_signature=2a72e9fbc9588ed136682ad9c3fc8c8d0f473d3f0092c9614dd3ec75cc9b6d2b&session_max_rows=25&is_browse_distinct=0)|[domicilio](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60domicilio%60+ASC+LIMIT+5&sql_signature=6ba728168ad0c0892bc7cc247699854c5050faca95cb15f4be0ee674e84b5c7a&session_max_rows=25&is_browse_distinct=0)|[cod_loca](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60cod_loca%60+ASC+LIMIT+5&sql_signature=06aeacf03c21a3b245c27178402281c14bd2bc5599f33167542fd6f037011e17&session_max_rows=25&is_browse_distinct=0)|[localidad](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60localidad%60+ASC+LIMIT+5&sql_signature=f5398a49fc75b0a9c431e400fddbccdce9e907a8c01a4f09c9e1a48b509ebf06&session_max_rows=25&is_browse_distinct=0)|[departamento](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60departamento%60+ASC+LIMIT+5&sql_signature=d7ec993b4577c9468cfbbc021e49eb1bd12dffd2fd655588bc112c65230384e8&session_max_rows=25&is_browse_distinct=0)|[cultivo](http://localhost/phpmyadmin/index.php?route=/sql&db=Prueba&table=establecimientos&sql_query=SELECT+%2A+FROM+establecimientos+WHERE+nombre+LIKE+%27E%25%27+%0AORDER+BY+%60establecimientos%60.%60cultivo%60+ASC+LIMIT+5&sql_signature=3f2bca8e24e891b479bb7d34303e17b59e495b789fdb2243e7b52d440b47fc1b&session_max_rows=25&is_browse_distinct=0)||
|---|---|---|---|---|---|---|---|
![[Pasted image 20260625021021.png]]

(nro,nombre,domicilio,cod_loca,localidad,departamento,cultivo)