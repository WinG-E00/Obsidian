
Ejercicio 1

--
```SQL
/*
Importar `campo01.sql` a la base de datos `campo18626`. Ejecutar `TRUNCATE` en la tabla `establecimientos` e importar `bd_establecimientosOK.csv`. Ejecutar `UPDATE localidades SET COD_LOCA=34007004 WHERE cod_loca=7004`. Hacer `SELECT` de la tabla `localidades`.
*/
UPDATE localidades SET COD_LOCA=34007004 WHERE cod_loca=7004
SELECT * FROM localidades;



/*
Eliminar de `establecimientos_titulares` los titulares extra de los establecimientos 386, 1758, 1822 y 2183, conservando únicamente el primer titular de cada uno. Consultar esos establecimientos usando `IN`.
*/

DELETE FROM establecimientos_titulares 
WHERE nro_establecimiento IN (386, 1758, 1822, 2183) 
AND nro_esta_titu NOT IN (
    SELECT id_minimo FROM (
        SELECT MIN(nro_esta_titu) AS id_minimo 
        FROM establecimientos_titulares 
        WHERE nro_establecimiento IN (386, 1758, 1822, 2183) 
        GROUP BY nro_establecimiento
    ) AS tabla_temporal
);

-- Comprobacion
SELECT nro_esta_titu, nro_establecimiento, nro_titular 
FROM establecimientos_titulares 
WHERE nro_establecimiento IN (386, 1758, 1822, 2183);



/*
Agregar el cultivo de **rúcula** en la tabla `cultivos` y generar una parcela de 1 hectárea en algún establecimiento del este de la provincia.
*/

-- agrego el cultivo
INSERT INTO cultivos (CULTIVO_NRO, CULTIVO_NOMBRE, LUGAR_CULTIVO) 
VALUES (35, 'RÚCULA', 'ESTE');


-- Paso 2: Generar la parcela de 1 hectárea
-- Se usa el ID 4200 (consecuente al último registro 4199)
-- Se asigna al establecimiento 208 (Dpto. Formosa - Este)

INSERT INTO estabelcimiento_parcela_cultivo (ESTA_PARC_NRO, ESTABLECIMIENTO, PARCELA, SUPERFICIE, CULTIVO_NRO) 
VALUES (4200, 208, 2, 1, 35);

-- Consulta de comprobacion
SELECT 
    e.nombre AS 'Establecimiento', 
    e.departamento AS 'Ubicación', 
    p.PARCELA, 
    p.SUPERFICIE AS 'Hectáreas', 
    c.CULTIVO_NOMBRE AS 'Cultivo'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE p.ESTA_PARC_NRO = 4200;



/*
En la tabla `establecimiento_parcela_cultivo` existe una gran superficie sembrada de **maní**, lo cual es irracional. Cambiar ese cultivo por uno racional para Formosa.
*/

--Primero consultamos cuales son los mayores

SELECT 
    ESTA_PARC_NRO AS 'ID_RegistroGE25', 
    ESTABLECIMIENTO AS 'EstablecimientoGE25', 
    SUPERFICIE AS 'Superficie_HectáreasGE25', 
    CULTIVO_NRO AS 'Cultivo_IDGE25'
FROM estabelcimiento_parcela_cultivo
ORDER BY SUPERFICIE DESC
LIMIT 10;

-- Ahora cambiamos por un cultivo coherente en donde mani es muy exajerado
UPDATE estabelcimiento_parcela_cultivo 
SET CULTIVO_NRO = 1 
WHERE CULTIVO_NRO = 34 
AND SUPERFICIE = 250;

-- y bueno comprobamos ahora
SELECT 
    e.nombre AS 'EstablecimientoGE25', 
    p.SUPERFICIE AS 'HectáreasGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE p.SUPERFICIE = 250 OR c.CULTIVO_NOMBRE = 'MANI';


/*
Haga de cuenta que un familiar cercano, le regaló un establecimiento que tiene dos parcelas de 25 y 8 hectáreas en la localidad de Posta Zalazar. Plante mejor algodón (25 hectáreas) y pomelo (8 hectáreas) en ellas. Antes que se arrepienta su familiar, no se olvide de registrar su propiedad !!! (NO SE OLVIDE DE MANTENER LA INTEGRIDAD REFERENCIAL DE LA BASE DE DATOS).
*/


-- Paso 1: Registrarte como titular (Gaston Encina)
-- Usamos el ID 3000 para evitar conflictos con registros existentes

INSERT INTO titulares (
    titular_nro, apellido_y_nombres, sexo, cuit, telefono, 
    iva_inscripto, monotributo, catagoria_monotributo, 
    monotributo_social, dgr_inscripto, dgr_convenio, mail
) 
VALUES (
    3000, 'ENCINA, GASTON', 'M', '20-46153084-0', '370-4-000000', 
    'N', 'S', 'A', 'N', 'S', 'N', 'gaston.encina@correo.com'
);






-- Paso 2: Registrar el establecimiento en Posta Zalazar
-- Nombre: "DON GASTON", Ubicación: Posta Cambio Zalazar (Dpto. Patiño)

INSERT INTO establecimientos (nro, nombre, domicilio, cod_loca, localidad, departamento, cultivo) 
VALUES (2500, 'DON GASTON', 'ZONA RURAL - POSTA ZALAZAR', 34035483, 'POSTA CAMBIO ZALAZAR', 'PATIÑO', 1);



-- Paso 3: Vincular el establecimiento con tu número de titular (3000)
INSERT INTO establecimientos_titulares (nro_esta_titu, nro_establecimiento, nro_titular) 
VALUES (1000, 2500, 3000);


-- Paso 4: Registrar las dos parcelas de 25ha (Algodón) y 8ha (Pomelo)
INSERT INTO estabelcimiento_parcela_cultivo (ESTA_PARC_NRO, ESTABLECIMIENTO, PARCELA, SUPERFICIE, CULTIVO_NRO) 
VALUES 
(4300, 2500, 1, 25, 1), 
(4301, 2500, 2, 8, 9);



--Comprobacion


SELECT 
    t.apellido_y_nombres AS 'TitularGE25', 
    t.sexo AS 'SexoGE25',
    e.nombre AS 'EstablecimientoGE25', 
    e.localidad AS 'LocalidadGE25', 
    p.SUPERFICIE AS 'HectáreasGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25'
FROM establecimientos e
JOIN establecimientos_titulares et ON e.nro = et.nro_establecimiento
JOIN titulares t ON et.nro_titular = t.titular_nro
JOIN estabelcimiento_parcela_cultivo p ON e.nro = p.ESTABLECIMIENTO
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE t.titular_nro = 3000;


----------- AHORAAA
/*
El **Prof. Leonardo Taquini (titular nro. 13)** regaló su establecimiento. Agregarle dos parcelas de 25 y 8 hectáreas. Plantar algodón (25 ha) y pomelo (8 ha). Registrar la propiedad manteniendo la integridad referencial.
*/

-- 31Registrar titularidad con ID 2358

INsert INTO `titulares` (`titular_nro`,`apellido_y_nombres`,`sexo`,`cuit`,`telefono`,`iva_inscripto`,`monotributo`,`catagoria_monotributo`,`monotributo_social`, `dgr_inscripto`,`dgr_convenio`, `mail` ) Values (2358,'ENCINA, GASTON', 'M','23-46153084-3','3704366377','N','S','B','N','N','N','gastonencinawj@gmail.com');



-- Paso 1: Transferencia de la propiedad
-- Cambiamos el titular del establecimiento 13 (era Taquini) por vos (Gaston Encina, ID 3000)
UPDATE establecimientos_titulares 
SET nro_titular = 2358
WHERE nro_establecimiento = 13;



-- Paso 2: Agregar las dos parcelas de 25 y 8 hectáreas
-- El establecimiento 13 ya tiene la Parcela 1, por lo que creamos la 2 y la 3
-- Usamos los IDs 4400 y 4401 para evitar conflictos con registros existentes
INSERT INTO estabelcimiento_parcela_cultivo (ESTA_PARC_NRO, ESTABLECIMIENTO, PARCELA, SUPERFICIE, CULTIVO_NRO) 
VALUES 
(4400, 13, 2, 25, 1), 
(4401, 13, 3, 8, 9);

--Comprobacion

SELECT 
    t.apellido_y_nombres AS 'PropietarioGE25', 
    e.nombre AS 'EstablecimientoGE25', 
    p.PARCELA AS 'Nro_Parcela', 
    p.SUPERFICIE AS 'HectáreasGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25'
FROM establecimientos e
JOIN establecimientos_titulares et ON e.nro = et.nro_establecimiento
JOIN titulares t ON et.nro_titular = t.titular_nro
JOIN estabelcimiento_parcela_cultivo p ON e.nro = p.ESTABLECIMIENTO
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE e.nro = 13;



/*
4.-Es irracional, que nadie cultive frutilla en esta provincia, o por lo menos, eso es lo que indica nuestra base de datos. Sería bueno, cargar el cultivo de la frutilla, así tenemos antes que el resto de la zona. Por lo menos, 1 hectárea a 3 productores. Y sería bueno también, agregarle 250 metros cuadrados de frutilla a 3 productores más. Elija Ud. cada uno de los 6 productores y la zona. ¡Cuidado !!! Por razones de tiempo, los profesores no tuvimos en cuenta el tema de los metros cuadrados. Haga los cambios que necesite para registrar esta información en nuestra base de datos. ¡Consideramos que Ustedes son competentes para esta tarea !!! Ayúdenos en esta parte, por favor ! Antes que nada, cree una tabla denominada unidad_de_medida, con dos campos,a)Unidad_de_medida, int de 1, y b)Descripción, varchar de 30. Inserte 2 registros en esta table, con cada de las unidades de medida que

necesite. Cree además un campo en la tabla establecimiento_parcela_cultivo, denominado unidad_de_medida, y actualice este campo a un valor de 1 a todos los registros que ya tiene.
*/


--Creacion de la tabla
-- Paso 1: Crear la tabla de unidades de medida
CREATE TABLE unidad_de_medida (
    Unidad_de_medida int(1) NOT NULL,
    Descripción varchar(30) NOT NULL,
    PRIMARY KEY (Unidad_de_medida)
);



-- Paso 2: Insertar las unidades requeridas
INSERT INTO unidad_de_medida (Unidad_de_medida, Descripción) VALUES 
(1, 'HECTÁREAS'),
(2, 'METROS CUADRADOS');


-- Paso 3: Adaptar la tabla de parcelas
ALTER TABLE estabelcimiento_parcela_cultivo ADD COLUMN unidad_de_medida int(1);


-- Paso 4: Actualizar los registros existentes al valor por defecto (1 - Hectáreas) ESTE PASO ES OPCIONAL !!!!!
UPDATE estabelcimiento_parcela_cultivo SET unidad_de_medida = 1;


--registro de frutilla
-- Paso 5: Agregar el cultivo de Frutilla
INSERT INTO cultivos (CULTIVO_NRO, CULTIVO_NOMBRE, LUGAR_CULTIVO) 
VALUES (36, 'FRUTILLA', 'TODA LA PROVINCIA');



-- Paso 6: Asignar 1 Hectárea de frutilla a 3 productores (ID Unidad: 1)
-- Establecimientos: 3 (Loma Hermosa), 4 (El Bosquecillo), 15 (Loma Hermosa)
INSERT INTO estabelcimiento_parcela_cultivo (ESTA_PARC_NRO, ESTABLECIMIENTO, PARCELA, SUPERFICIE, CULTIVO_NRO, unidad_de_medida) VALUES
(4500, 3, 2, 1, 36, 1),
(4501, 4, 2, 1, 36, 1),
(4502, 15, 10, 1, 36, 1);



-- Paso 7: Asignar 250 Metros Cuadrados a 3 productores (ID Unidad: 2)
-- Establecimientos: 45 (Las Lomitas), 95 (Puerto Pilcomayo), 212 (Formosa)
INSERT INTO estabelcimiento_parcela_cultivo (ESTA_PARC_NRO, ESTABLECIMIENTO, PARCELA, SUPERFICIE, CULTIVO_NRO, unidad_de_medida) VALUES
(4503, 45, 8, 250, 36, 2),
(4504, 95, 8, 250, 36, 2),
(4505, 212, 2, 250, 36, 2);

--Comprobacion

SELECT 
    e.nombre AS 'ProductorGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25', 
    p.SUPERFICIE AS 'CantidadGE25', 
    u.Descripción AS 'UnidadGE25', 
    e.localidad AS 'ZonaGE25'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
JOIN unidad_de_medida u ON p.unidad_de_medida = u.Unidad_de_medida
WHERE c.CULTIVO_NOMBRE = 'FRUTILLA';



/*
Determinar el **establecimiento con mayor superficie**.
*/

-- 
SELECT 
    e.nro AS 'Nro_EstablecimientoGE25', 
    e.nombre AS 'Nombre_EstablecimientoGE25', 
    e.localidad AS 'LocalidadGE25', 
    SUM(p.SUPERFICIE) AS 'Superficie_Total_HaGE25'
FROM establecimientos e
JOIN estabelcimiento_parcela_cultivo p ON e.nro = p.ESTABLECIMIENTO
WHERE p.unidad_de_medida = 1
GROUP BY e.nro, e.nombre, e.localidad
ORDER BY Superficie_Total_HaGE25 DESC
LIMIT 1;


/*
Elegir un ESTABLECIMIENTO que tenga la primer letra de su apellido. Informar la superficie cultivada de cada cultivo, cultivo , y cada parcela.
*/

--

SELECT 
    e.nombre AS 'EstablecimientoGE25', 
    p.PARCELA AS 'Nro_ParcelaGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25', 
    p.SUPERFICIE AS 'HectáreasGE25'
FROM establecimientos e
JOIN estabelcimiento_parcela_cultivo p ON e.nro = p.ESTABLECIMIENTO
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE e.nombre LIKE 'E%' 
AND e.nro = 1;



/*
 Determine la superficie total y la cantidad de parcelas de la titular: PARRA, REGINA
POMPEYA.
*/

-- Primero quiero ver los datos de la titular parra regina

SELECT 
    t.apellido_y_nombres AS 'TitularGE25', 
    e.nro AS 'Nro_EstablecimientoGE25', 
    e.nombre AS 'Nombre_EstablecimientoGE25',
    e.localidad AS 'LocalidadGE25',
    e.departamento AS 'DepartamentoGE25'
FROM titulares t
JOIN establecimientos_titulares et ON t.titular_nro = et.nro_titular
JOIN establecimientos e ON et.nro_establecimiento = e.nro
WHERE t.apellido_y_nombres = 'PARRA, REGINA POMPEYA';



-- Despues veo la cantidad de parcelas y la superficie total que ocupa
SELECT 
    t.apellido_y_nombres AS 'TitularGE25', 
    COUNT(p.PARCELA) AS 'Cantidad_ParcelasGE25', 
    SUM(p.SUPERFICIE) AS 'Superficie_Total_HaGE25'
FROM titulares t
JOIN establecimientos_titulares et ON t.titular_nro = et.nro_titular
JOIN estabelcimiento_parcela_cultivo p ON et.nro_establecimiento = p.ESTABLECIMIENTO
WHERE t.apellido_y_nombres = 'PARRA, REGINA POMPEYA'
GROUP BY t.apellido_y_nombres;



/*
Indicar los cultivos del establecimiento recibido como regalo y la superficie de cada uno. La consulta debe mostrar: nombre y apellido del titular, nombre del establecimiento, número de parcela, superficie y nombre del cultivo.
*/

-- realizaremos una consulta que unifique toda tu nueva propiedad: el establecimiento **nro 2500 ("DON GASTON")** regalado por mi familiar y el **nro 13 ("LA QUERENCIA")** transferido por el Prof. Taquini.

--paso 1
SELECT 
    t.apellido_y_nombres AS 'TitularGE25', 
    e.nombre AS 'EstablecimientoGE25', 
    p.PARCELA AS 'Parcela_NroGE25', 
    p.SUPERFICIE AS 'Superficie_HaGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25'
FROM titulares t
JOIN establecimientos_titulares et ON t.titular_nro = et.nro_titular
JOIN establecimientos e ON et.nro_establecimiento = e.nro
JOIN estabelcimiento_parcela_cultivo p ON e.nro = p.ESTABLECIMIENTO
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE t.titular_nro = 3000
ORDER BY e.nombre, p.PARCELA;
/*Explicacion 
- **t.titular_nro = 3000**: Filtra por tu número de titular (Gaston Encina), el cual centraliza ahora ambas propiedades tras los registros y transferencias realizados [Conversación previa].
- **JOIN** **múltiple**: Conecta tus datos personales con los establecimientos que posees, sus parcelas individuales y los nombres de los cultivos sembrados.
- **ORDER BY**: Organiza el resultado alfabéticamente por establecimiento y luego por número de parcela para mayor claridad.*/




/*
Elegir una localidad del centro de la provincia e indicar la superficie cultivada de cada cultivo en esa localidad. Usar la tabla localidades en la combinación.
*/


SELECT 
    l.localidad AS 'LocalidadGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25', 
    SUM(p.SUPERFICIE) AS 'Superficie_Total_HaGE25'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN localidades l ON e.cod_loca = l.cod_loca
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE l.localidad = 'IBARRETA' 
AND p.unidad_de_medida = 1
GROUP BY l.localidad, c.CULTIVO_NOMBRE;


--Comprobacion
SELECT 
    l.localidad AS 'LocalidadGE25',
    e.nombre AS 'EstablecimientoGE25', 
    p.PARCELA AS 'Nro_Parcela', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25',
    p.SUPERFICIE AS 'HectáreasGE25'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN localidades l ON e.cod_loca = l.cod_loca
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE l.localidad = 'IBARRETA'
ORDER BY c.CULTIVO_NOMBRE, e.nombre;



/*
Determinar la superficie cultivada de **algodón y pomelo por departamento**. Usar las tablas `localidades` y `departamentos`. Crear la tabla `departamentos` con los siguientes registros: BERMEJO, FORMOSA, LAISHÍ, MATACOS, PATIÑO, PILAGÁS, PILCOMAYO, PIRANÉ, RAMÓN LISTA.
*/


-- Paso 1: Crear la tabla departamentos
CREATE TABLE departamentos (
    cod_depar INT(2) NOT NULL,
    nombre_depar VARCHAR(30) NOT NULL,
    PRIMARY KEY (cod_depar)
);



-- Paso 2: Cargar los registros solicitados
INSERT INTO departamentos (cod_depar, nombre_depar) VALUES 
(1, 'BERMEJO'), 
(2, 'FORMOSA'), 
(3, 'LAISHÍ'), 
(4, 'MATACOS'), 
(5, 'PATIÑO'), 
(6, 'PILAGÁS'), 
(7, 'PILCOMAYO'), 
(8, 'PIRANÉ'), 
(9, 'RAMÓN LISTA');


--Paso 3

SELECT 
    d.nombre_depar AS 'DepartamentoGE25', 
    c.CULTIVO_NOMBRE AS 'CultivoGE25', 
    SUM(p.SUPERFICIE) AS 'Hectáreas_TotalesGE25'
FROM estabelcimiento_parcela_cultivo p
JOIN establecimientos e ON p.ESTABLECIMIENTO = e.nro
JOIN localidades l ON e.cod_loca = l.cod_loca
JOIN departamentos d ON l.cod_depar = d.cod_depar
JOIN cultivos c ON p.CULTIVO_NRO = c.CULTIVO_NRO
WHERE c.CULTIVO_NRO IN (1, 9) 
AND p.unidad_de_medida = 1
GROUP BY d.nombre_depar, c.CULTIVO_NOMBRE
ORDER BY d.nombre_depar ASC, c.CULTIVO_NOMBRE ASC;

--Consulta para comprobar si se creo la tala

SELECT * FROM departamentos WHERE nombre_depar IS NOT NULL;


```