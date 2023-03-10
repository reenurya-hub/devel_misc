SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='tipos_vehiculo' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `tipos_vehiculo` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='tipos_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='tipos_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`tipos_vehiculo`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='tipos_vehiculo' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Error de SQL (1146): Table 'automoviles.alumnos' doesn't exist */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 35 consultas: 0,000 seg. */
INSERT INTO marcas (id,nombre)
VALUES
(NULL, 'Renault'),
(NULL, 'Chevrolet'),
(NULL, 'Mazda'),
(NULL, 'BMW'),
(NULL, 'Ferrari'),
(NULL, 'Bajaj'),
(NULL, 'Suzuki'),
(NULL, 'Kia');
/* Error de SQL (1146): Table 'automoviles.marcas' doesn't exist */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='marca' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `marca` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='marca'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='marca'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`marca`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='marca' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
RENAME TABLE `marca` TO `marcas`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='marcas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `marcas` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`marcas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='marcas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO marcas (id,nombre)
VALUES
(NULL, 'Renault'),
(NULL, 'Chevrolet'),
(NULL, 'Mazda'),
(NULL, 'BMW'),
(NULL, 'Ferrari'),
(NULL, 'Bajaj'),
(NULL, 'Suzuki'),
(NULL, 'Kia');
/* Error de SQL (1054): Unknown column 'id' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
ALTER TABLE `marcas`
	CHANGE COLUMN `marca_id` `id` INT(10) NOT NULL AUTO_INCREMENT FIRST,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='marcas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `marcas` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`marcas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='marcas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO marcas (id,nombre)
VALUES
(NULL, 'Renault'),
(NULL, 'Chevrolet'),
(NULL, 'Mazda'),
(NULL, 'BMW'),
(NULL, 'Ferrari'),
(NULL, 'Bajaj'),
(NULL, 'Suzuki'),
(NULL, 'Kia');
/* Filas afectadas: 8  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM marcas;
/* Filas afectadas: 0  Filas encontradas: 8  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='tipos_vehiculo' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `tipos_vehiculo` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='tipos_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='tipos_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`tipos_vehiculo`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='tipos_vehiculo' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
ALTER TABLE `tipos_vehiculo`
	CHANGE COLUMN `tipo_vehiculo_id` `id` INT(10) NOT NULL AUTO_INCREMENT FIRST,
	DROP PRIMARY KEY,
	ADD PRIMARY KEY (`id`) USING BTREE;
RENAME TABLE `tipos_vehiculo` TO `tipo_vehiculo`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='tipo_vehiculo' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `tipo_vehiculo` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='tipo_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='tipo_vehiculo'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`tipo_vehiculo`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='tipo_vehiculo' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO tipo_vehiculo(id, nombre)
VALUES
(NULL,'Moto'),
(NULL,'Automovil'),
(NULL,'Camioneta'),
(NULL,'Cuatrimoto'),
(NULL,'Camion'),
(NULL,'Tractomula'),
(NULL,'Bicicleta');
/* Filas afectadas: 7  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='vehiculos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `vehiculos` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='vehiculos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='marcas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `marcas` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='marcas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`marcas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='marcas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CHARSET;
SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT * FROM tipo_vehiculo;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `automoviles`.`tipo_vehiculo`;
SELECT CURRENT_USER();
SHOW CREATE TABLE `automoviles`.`vehiculos`;
INSERT INTO vehiculos(id, marca_id, nombre, placa, modelo, tipo_vehiculo_id, estado, valor, cantidad)
VALUES 
(NULL, 1, 'Generico 1', 'ASF002', 2020, 1, 'Nuevo', 30000000, 1);
/* Filas afectadas: 1  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
ALTER TABLE `vehiculos`
	DROP COLUMN `cantidad`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='vehiculos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `vehiculos` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='vehiculos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO vehiculos(id, marca_id, nombre, placa, modelo, tipo_vehiculo_id, estado, valor, cantidad)
VALUES 
(NULL, 1, 'Extreme', 'PPK023', 2022, 2, 'Usado', 20000000),
(NULL, 2, 'Unlimited', 'BBF002', 2024, 3, 'Nuevo', 50000000),
(NULL, 3, 'Excite', 'FRA001', 2010, 5, 'Usado', 33000000),
(NULL, 4, 'Viajero', 'TPE032', 2015, 3, 'Nuevo', 15000000),
(NULL, 5, 'Camry', 'HUK034', 2023, 7, 'Usado', 20000000),
(NULL, 6, 'Trochera', 'MNF035', 2013, 1, 'Nuevo', 40000000),
(NULL, 7, 'Lineal', 'OWW344', 2018, 1, 'Usado', 35000000),
(NULL, 8, 'Familiar', 'SSU455', 2019, 3, 'Nuevo', 15000000),
(NULL, 1, 'Generico1', 'TTG789', 2010, 3, 'Usado', 65000000),
(NULL, 2, 'Generico2', 'ABC023', 2022, 2, 'Nuevo', 99000000),
(NULL, 3, 'Generico3', 'DEF045', 2022, 2, 'Usado', 32000000),
(NULL, 4, 'Generico4', 'LLF001', 2022, 4, 'Nuevo', 25000000),
(NULL, 5, 'Generico5', 'PPD021', 2022, 4, 'Usado', 40000000),
(NULL, 6, 'Especial', 'PMN024', 2022, 5, 'Nuevo', 32000000),
(NULL, 7, 'Volador', 'UDV324', 2022, 6, 'Usado', 28000000),
(NULL, 8, 'Indiana', 'RFT231', 2022, 7, 'Nuevo', 27500000),
(NULL, 1, 'Especial edition', 'HJK112', 2022, 7, 'Nuevo', 18500000),
(NULL, 2, 'Enjoy', 'LLM254', 2022, 2, 'Nuevo', 21500000),
(NULL, 3, 'Castor', 'MU302F', 2022, 5, 'Usado', 23800000),
(NULL, 4, 'Primater', 'GH45G', 2022, 6, 'Usado', 27900000);
/* Error de SQL (1054): Unknown column 'cantidad' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO vehiculos(id, marca_id, nombre, placa, modelo, tipo_vehiculo_id, estado, valor)
VALUES 
(NULL, 1, 'Extreme', 'PPK023', 2022, 2, 'Usado', 20000000),
(NULL, 2, 'Unlimited', 'BBF002', 2024, 3, 'Nuevo', 50000000),
(NULL, 3, 'Excite', 'FRA001', 2010, 5, 'Usado', 33000000),
(NULL, 4, 'Viajero', 'TPE032', 2015, 3, 'Nuevo', 15000000),
(NULL, 5, 'Camry', 'HUK034', 2023, 7, 'Usado', 20000000),
(NULL, 6, 'Trochera', 'MNF035', 2013, 1, 'Nuevo', 40000000),
(NULL, 7, 'Lineal', 'OWW344', 2018, 1, 'Usado', 35000000),
(NULL, 8, 'Familiar', 'SSU455', 2019, 3, 'Nuevo', 15000000),
(NULL, 1, 'Generico1', 'TTG789', 2010, 3, 'Usado', 65000000),
(NULL, 2, 'Generico2', 'ABC023', 2022, 2, 'Nuevo', 99000000),
(NULL, 3, 'Generico3', 'DEF045', 2022, 2, 'Usado', 32000000),
(NULL, 4, 'Generico4', 'LLF001', 2022, 4, 'Nuevo', 25000000),
(NULL, 5, 'Generico5', 'PPD021', 2022, 4, 'Usado', 40000000),
(NULL, 6, 'Especial', 'PMN024', 2022, 5, 'Nuevo', 32000000),
(NULL, 7, 'Volador', 'UDV324', 2022, 6, 'Usado', 28000000),
(NULL, 8, 'Indiana', 'RFT231', 2022, 7, 'Nuevo', 27500000),
(NULL, 1, 'Especial edition', 'HJK112', 2022, 7, 'Nuevo', 18500000),
(NULL, 2, 'Enjoy', 'LLM254', 2022, 2, 'Nuevo', 21500000),
(NULL, 3, 'Castor', 'MU302F', 2022, 5, 'Usado', 23800000),
(NULL, 4, 'Primater', 'GH45G', 2022, 6, 'Usado', 27900000);
/* Filas afectadas: 20  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,016 seg. */
SELECT * FROM vehiculos;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='marcas' ORDER BY ORDINAL_POSITION;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='tipo_vehiculo' ORDER BY ORDINAL_POSITION;
SELECT m.marca, v.nombre, v.placa, tv.nombre, v.valor 
FROM vehiculos v, marcas m, tipo_vehiculo tv
WHERE v.marca_id = m.id
AND v.tipo_vehiculo_id = tv.id;
/* Error de SQL (1054): Unknown column 'm.marca' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT m.nombre, v.nombre, v.placa, tv.nombre, v.valor 
FROM vehiculos v, marcas m, tipo_vehiculo tv
WHERE v.marca_id = m.id
AND v.tipo_vehiculo_id = tv.id;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.id, m.nombre, v.nombre, v.placa, tv.nombre, v.valor 
FROM vehiculos v, marcas m, tipo_vehiculo tv
WHERE v.marca_id = m.id
AND v.tipo_vehiculo_id = tv.id;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.id, m.nombre, v.nombre, v.placa, tv.nombre, v.valor 
FROM vehiculos v, marcas m, tipo_vehiculo tv
WHERE v.marca_id = m.id
AND v.tipo_vehiculo_id = tv.id
ORDER BY valor desc;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `automoviles`.`marcas`;SHOW CREATE TABLE `automoviles`.`tipo_vehiculo`;SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT m.nombre AS Marca_Vehiculo, v.nombre AS Vehiculo, v.placa AS Placa, tv.nombre AS Tipo_vehiculo, v.valor AS valor
FROM vehiculos v, marcas m, tipo_vehiculo tv
WHERE v.marca_id = m.id
AND v.tipo_vehiculo_id = tv.id
ORDER BY valor desc;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	m.nombre AS Marca_Vehiculo, 
			v.nombre AS Vehiculo, 
			v.placa AS Placa, 
			tv.nombre AS Tipo_vehiculo, 
			v.valor AS valor
  FROM 	vehiculos v, 
			marcas m, 
			tipo_vehiculo tv
 WHERE   v.marca_id = m.id
   AND v.tipo_vehiculo_id = tv.id
 ORDER BY valor desc;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,125 seg. */
/* #62: Abstract Error Message CharCode:0 Msg:514 */
/* #41: Abstract Error Message CharCode:0 Msg:514 */
/* #23: Abstract Error Message CharCode:0 Msg:514 */
CREATE TABLE `inventario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`vehiculo_id` INT NULL DEFAULT '0',
	`fecha_venta` DATE NULL,
	`costo` DECIMAL(10,6) NULL DEFAULT NULL,
	`cantidad` INT NULL DEFAULT NULL,
	`valor` DECIMAL(10,6) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='inventario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `inventario` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='inventario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='inventario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`inventario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='inventario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='vehiculos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `vehiculos` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='vehiculos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO inventario (id,vehiculo,fecha_venta,costo,cantidad,valor)
VALUES
(NULL','1','2020-01-01'','20000000','2','40000000'),
(NULL','2','2019-01-01'','10000000','5','50000000'),
(NULL','3','2021-01-01'','30000000','7','210000000'),
(NULL','4','2023-01-01'','20000000','2','40000000'),
(NULL','5','2014-01-01'','15000000','4','60000000'),
(NULL','6','2016-01-01'','20000000','6','120000000'),
(NULL','7','2018-01-01'','32000000','9','288000000'),
(NULL','8','2019-01-01'','20000000','11','220000000'),
(NULL','9','2021-01-01'','10000000','3','30000000'),
(NULL','10','2010-01-01'','30000000','3','90000000'),
(NULL','11','2020-01-01'','20000000','4','80000000'),
(NULL','12','2019-01-01'','15000000','6','90000000'),
(NULL','13','2021-01-01'','20000000','8','160000000'),
(NULL','14','2023-01-01'','32000000','9','288000000'),
(NULL','15','2014-01-01'','20000000','2','40000000'),
(NULL','16','2016-01-01'','10000000','3','30000000'),
(NULL','17','2018-01-01'','30000000','7','210000000'),
(NULL','18','2019-01-01'','20000000','9','180000000'),
(NULL','19','2021-01-01'','15000000','2','30000000'),
(NULL','20','2010-01-01'','20000000','3','60000000'),
(NULL','1','2020-01-01'','32000000','5','160000000'),
(NULL','2','2019-01-01'','20000000','6','120000000'),
(NULL','3','2021-01-01'','10000000','5','50000000'),
(NULL','4','2023-01-01'','30000000','7','210000000'),
(NULL','5','2014-01-01'','20000000','3','60000000'),
(NULL','6','2016-01-01'','15000000','3','45000000'),
(NULL','7','2018-01-01'','20000000','4','80000000'),
(NULL','8','2019-01-01'','32000000','4','128000000'),
(NULL','9','2021-01-01'','20000000','7','140000000'),
(NULL','10','2010-01-01'','10000000','9','90000000'),
(NULL','11','2020-01-01'','30000000','2','60000000'),
(NULL','12','2019-01-01'','20000000','3','60000000'),
(NULL','13','2021-01-01'','15000000','4','60000000'),
(NULL','14','2023-01-01'','20000000','6','120000000'),
(NULL','15','2014-01-01'','32000000','7','224000000'),/* gran consulta SQL (2,8 KiB), recortada a los 2.000 caracteres */
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '','1','2020-01-01'','20000000','2','40000000'),
(NULL','2','2019-01-01'','10000' at line 3 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO inventario (id,vehiculo,fecha_venta,costo,cantidad,valor)
VALUES
(NULL,'1','2020-01-01','20000000','2','40000000'),
(NULL,'2','2019-01-01','10000000','5','50000000'),
(NULL,'3','2021-01-01','30000000','7','210000000'),
(NULL,'4','2023-01-01','20000000','2','40000000'),
(NULL,'5','2014-01-01','15000000','4','60000000'),
(NULL,'6','2016-01-01','20000000','6','120000000'),
(NULL,'7','2018-01-01','32000000','9','288000000'),
(NULL,'8','2019-01-01','20000000','11','220000000'),
(NULL,'9','2021-01-01','10000000','3','30000000'),
(NULL,'10','2010-01-01','30000000','3','90000000'),
(NULL,'11','2020-01-01','20000000','4','80000000'),
(NULL,'12','2019-01-01','15000000','6','90000000'),
(NULL,'13','2021-01-01','20000000','8','160000000'),
(NULL,'14','2023-01-01','32000000','9','288000000'),
(NULL,'15','2014-01-01','20000000','2','40000000'),
(NULL,'16','2016-01-01','10000000','3','30000000'),
(NULL,'17','2018-01-01','30000000','7','210000000'),
(NULL,'18','2019-01-01','20000000','9','180000000'),
(NULL,'19','2021-01-01','15000000','2','30000000'),
(NULL,'20','2010-01-01','20000000','3','60000000'),
(NULL,'1','2020-01-01','32000000','5','160000000'),
(NULL,'2','2019-01-01','20000000','6','120000000'),
(NULL,'3','2021-01-01','10000000','5','50000000'),
(NULL,'4','2023-01-01','30000000','7','210000000'),
(NULL,'5','2014-01-01','20000000','3','60000000'),
(NULL,'6','2016-01-01','15000000','3','45000000'),
(NULL,'7','2018-01-01','20000000','4','80000000'),
(NULL,'8','2019-01-01','32000000','4','128000000'),
(NULL,'9','2021-01-01','20000000','7','140000000'),
(NULL,'10','2010-01-01','10000000','9','90000000'),
(NULL,'11','2020-01-01','30000000','2','60000000'),
(NULL,'12','2019-01-01','20000000','3','60000000'),
(NULL,'13','2021-01-01','15000000','4','60000000'),
(NULL,'14','2023-01-01','20000000','6','120000000'),
(NULL,'15','2014-01-01','32000000','7','224000000'),
(NULL,'16','2016-01-01','20000000','8','160000000'),
(NULL,'17','20/* gran consulta SQL (2,7 KiB), recortada a los 2.000 caracteres */
/* Error de SQL (1054): Unknown column 'vehiculo' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `automoviles`.`inventario`;
INSERT INTO inventario (id,vehiculo_id,fecha_venta,costo,cantidad,valor)
VALUES
(NULL,'1','2020-01-01','20000000','2','40000000'),
(NULL,'2','2019-01-01','10000000','5','50000000'),
(NULL,'3','2021-01-01','30000000','7','210000000'),
(NULL,'4','2023-01-01','20000000','2','40000000'),
(NULL,'5','2014-01-01','15000000','4','60000000'),
(NULL,'6','2016-01-01','20000000','6','120000000'),
(NULL,'7','2018-01-01','32000000','9','288000000'),
(NULL,'8','2019-01-01','20000000','11','220000000'),
(NULL,'9','2021-01-01','10000000','3','30000000'),
(NULL,'10','2010-01-01','30000000','3','90000000'),
(NULL,'11','2020-01-01','20000000','4','80000000'),
(NULL,'12','2019-01-01','15000000','6','90000000'),
(NULL,'13','2021-01-01','20000000','8','160000000'),
(NULL,'14','2023-01-01','32000000','9','288000000'),
(NULL,'15','2014-01-01','20000000','2','40000000'),
(NULL,'16','2016-01-01','10000000','3','30000000'),
(NULL,'17','2018-01-01','30000000','7','210000000'),
(NULL,'18','2019-01-01','20000000','9','180000000'),
(NULL,'19','2021-01-01','15000000','2','30000000'),
(NULL,'20','2010-01-01','20000000','3','60000000'),
(NULL,'1','2020-01-01','32000000','5','160000000'),
(NULL,'2','2019-01-01','20000000','6','120000000'),
(NULL,'3','2021-01-01','10000000','5','50000000'),
(NULL,'4','2023-01-01','30000000','7','210000000'),
(NULL,'5','2014-01-01','20000000','3','60000000'),
(NULL,'6','2016-01-01','15000000','3','45000000'),
(NULL,'7','2018-01-01','20000000','4','80000000'),
(NULL,'8','2019-01-01','32000000','4','128000000'),
(NULL,'9','2021-01-01','20000000','7','140000000'),
(NULL,'10','2010-01-01','10000000','9','90000000'),
(NULL,'11','2020-01-01','30000000','2','60000000'),
(NULL,'12','2019-01-01','20000000','3','60000000'),
(NULL,'13','2021-01-01','15000000','4','60000000'),
(NULL,'14','2023-01-01','20000000','6','120000000'),
(NULL,'15','2014-01-01','32000000','7','224000000'),
(NULL,'16','2016-01-01','20000000','8','160000000'),
(NULL,'17',/* gran consulta SQL (2,7 KiB), recortada a los 2.000 caracteres */
/* Error de SQL (1264): Out of range value for column 'costo' at row 1 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO inventario (id,vehiculo_id,fecha_venta,costo,cantidad,valor)
VALUES
(NULL,'1','2020-01-01',20000000,'2','40000000'),
(NULL,'2','2019-01-01','10000000','5','50000000'),
(NULL,'3','2021-01-01','30000000','7','210000000'),
(NULL,'4','2023-01-01','20000000','2','40000000'),
(NULL,'5','2014-01-01','15000000','4','60000000'),
(NULL,'6','2016-01-01','20000000','6','120000000'),
(NULL,'7','2018-01-01','32000000','9','288000000'),
(NULL,'8','2019-01-01','20000000','11','220000000'),
(NULL,'9','2021-01-01','10000000','3','30000000'),
(NULL,'10','2010-01-01','30000000','3','90000000'),
(NULL,'11','2020-01-01','20000000','4','80000000'),
(NULL,'12','2019-01-01','15000000','6','90000000'),
(NULL,'13','2021-01-01','20000000','8','160000000'),
(NULL,'14','2023-01-01','32000000','9','288000000'),
(NULL,'15','2014-01-01','20000000','2','40000000'),
(NULL,'16','2016-01-01','10000000','3','30000000'),
(NULL,'17','2018-01-01','30000000','7','210000000'),
(NULL,'18','2019-01-01','20000000','9','180000000'),
(NULL,'19','2021-01-01','15000000','2','30000000'),
(NULL,'20','2010-01-01','20000000','3','60000000'),
(NULL,'1','2020-01-01','32000000','5','160000000'),
(NULL,'2','2019-01-01','20000000','6','120000000'),
(NULL,'3','2021-01-01','10000000','5','50000000'),
(NULL,'4','2023-01-01','30000000','7','210000000'),
(NULL,'5','2014-01-01','20000000','3','60000000'),
(NULL,'6','2016-01-01','15000000','3','45000000'),
(NULL,'7','2018-01-01','20000000','4','80000000'),
(NULL,'8','2019-01-01','32000000','4','128000000'),
(NULL,'9','2021-01-01','20000000','7','140000000'),
(NULL,'10','2010-01-01','10000000','9','90000000'),
(NULL,'11','2020-01-01','30000000','2','60000000'),
(NULL,'12','2019-01-01','20000000','3','60000000'),
(NULL,'13','2021-01-01','15000000','4','60000000'),
(NULL,'14','2023-01-01','20000000','6','120000000'),
(NULL,'15','2014-01-01','32000000','7','224000000'),
(NULL,'16','2016-01-01','20000000','8','160000000'),
(NULL,'17','2/* gran consulta SQL (2,7 KiB), recortada a los 2.000 caracteres */
/* Error de SQL (1264): Out of range value for column 'costo' at row 1 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
ALTER TABLE `inventario`
	CHANGE COLUMN `costo` `costo` DECIMAL(20,6) NULL DEFAULT NULL AFTER `fecha_venta`,
	CHANGE COLUMN `valor` `valor` DECIMAL(20,6) NULL DEFAULT NULL AFTER `cantidad`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='automoviles';
SHOW TABLE STATUS FROM `automoviles`;
SHOW FUNCTION STATUS WHERE `Db`='automoviles';
SHOW PROCEDURE STATUS WHERE `Db`='automoviles';
SHOW TRIGGERS FROM `automoviles`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='automoviles';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='inventario' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `inventario` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='inventario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='inventario'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `automoviles`.`inventario`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='inventario' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO inventario (id,vehiculo_id,fecha_venta,costo,cantidad,valor)
VALUES
(NULL,'1','2020-01-01',20000000,'2','40000000'),
(NULL,'2','2019-01-01','10000000','5','50000000'),
(NULL,'3','2021-01-01','30000000','7','210000000'),
(NULL,'4','2023-01-01','20000000','2','40000000'),
(NULL,'5','2014-01-01','15000000','4','60000000'),
(NULL,'6','2016-01-01','20000000','6','120000000'),
(NULL,'7','2018-01-01','32000000','9','288000000'),
(NULL,'8','2019-01-01','20000000','11','220000000'),
(NULL,'9','2021-01-01','10000000','3','30000000'),
(NULL,'10','2010-01-01','30000000','3','90000000'),
(NULL,'11','2020-01-01','20000000','4','80000000'),
(NULL,'12','2019-01-01','15000000','6','90000000'),
(NULL,'13','2021-01-01','20000000','8','160000000'),
(NULL,'14','2023-01-01','32000000','9','288000000'),
(NULL,'15','2014-01-01','20000000','2','40000000'),
(NULL,'16','2016-01-01','10000000','3','30000000'),
(NULL,'17','2018-01-01','30000000','7','210000000'),
(NULL,'18','2019-01-01','20000000','9','180000000'),
(NULL,'19','2021-01-01','15000000','2','30000000'),
(NULL,'20','2010-01-01','20000000','3','60000000'),
(NULL,'1','2020-01-01','32000000','5','160000000'),
(NULL,'2','2019-01-01','20000000','6','120000000'),
(NULL,'3','2021-01-01','10000000','5','50000000'),
(NULL,'4','2023-01-01','30000000','7','210000000'),
(NULL,'5','2014-01-01','20000000','3','60000000'),
(NULL,'6','2016-01-01','15000000','3','45000000'),
(NULL,'7','2018-01-01','20000000','4','80000000'),
(NULL,'8','2019-01-01','32000000','4','128000000'),
(NULL,'9','2021-01-01','20000000','7','140000000'),
(NULL,'10','2010-01-01','10000000','9','90000000'),
(NULL,'11','2020-01-01','30000000','2','60000000'),
(NULL,'12','2019-01-01','20000000','3','60000000'),
(NULL,'13','2021-01-01','15000000','4','60000000'),
(NULL,'14','2023-01-01','20000000','6','120000000'),
(NULL,'15','2014-01-01','32000000','7','224000000'),
(NULL,'16','2016-01-01','20000000','8','160000000'),
(NULL,'17','2/* gran consulta SQL (2,7 KiB), recortada a los 2.000 caracteres */
/* Filas afectadas: 50  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,015 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,063 seg. */
SELECT SUM(valor) FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 1,609 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,078 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='automoviles' AND TABLE_NAME='vehiculos' ORDER BY ORDINAL_POSITION;
SELECT SUM(i.valor) FROM
inventario i
GROUP BY i.valor;
/* Filas afectadas: 0  Filas encontradas: 22  Advertencias: 0  Duración para 1 consulta: 0,016 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW INDEXES FROM `vehiculos` FROM `automoviles`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='automoviles'   AND TABLE_NAME='vehiculos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `automoviles`.`vehiculos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='automoviles' AND tc.TABLE_NAME='vehiculos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT v.nombre SUM(i.valor) FROM
inventario i, vehiculos v
WHERE i.vehiculo_id = v.id
GROUP BY i.valor;
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(i.valor) FROM
inventario i, vehiculos v
WHERE i.vehiculo_id = v.id
GROUP ' at line 1 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.nombre, SUM(i.valor) FROM
inventario i, vehiculos v
WHERE i.vehiculo_id = v.id
GROUP BY i.valor;
/* Error de SQL (1055): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'automoviles.v.nombre' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.nombre, SUM(i.valor) FROM
inventario i, vehiculos v
WHERE i.vehiculo_id = v.id
GROUP BY v.nombre, i.valor;
/* Filas afectadas: 0  Filas encontradas: 48  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,125 seg. */
SELECT COUNT(*) FROM inventario
WHERE month(fecha_venta) = 1 ;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,032 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT COUNT(*) FROM inventario
WHERE month(fecha_venta) = 1 ;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,016 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT SUM(i.cantidad) FROM inventario i
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31';
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,125 seg. */
SELECT * FROM tipo_vehiculo;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0,079 seg. */
SELECT * FROM inventario;
/* Filas afectadas: 0  Filas encontradas: 50  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id;
/* Error de SQL (1054): Unknown column 'v.tipo_vehiculo' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id;
/* Error de SQL (1054): Unknown column 'v.tipo_vehiculo' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id;
/* Error de SQL (1054): Unknown column 'v.tipo_vehiculo' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id;
/* Error de SQL (1054): Unknown column 'v.tipo_vehiculo' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo_id, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id;
/* Error de SQL (1140): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'automoviles.v.tipo_vehiculo_id'; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo_id, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id
GROUP BY v.tipo_vehiculo_id, SUM(i.cantidad);
/* Error de SQL (1056): Can't group on 'SUM(i.cantidad)' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo_id, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id
GROUP BY v.tipo_vehiculo_id, SUM(i.cantidad);
/* Error de SQL (1056): Can't group on 'SUM(i.cantidad)' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.tipo_vehiculo_id, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id
GROUP BY v.tipo_vehiculo_id;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,016 seg. */
SELECT v.nombre, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id
GROUP BY v.tipo_vehiculo_id;
/* Error de SQL (1055): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'automoviles.v.nombre' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.nombre, SUM(i.cantidad) FROM inventario i, vehiculos v
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
AND i.vehiculo_id = v.id
GROUP BY v.nombre;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.nombre, SUM(i.cantidad) 
  FROM inventario i
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
   INNER JOIN vehiculos v on i.vehiculo_id = v.id
 GROUP BY v.nombre;
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INNER JOIN vehiculos v on i.vehiculo_id = v.id
 GROUP BY v.nombre' at line 4 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.nombre, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY v.nombre;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT t.nombre as tipovehiculo SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY v.nombre;
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id' at line 1 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT t.nombre as tipovehiculo, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY v.nombre;
/* Error de SQL (1055): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'automoviles.t.nombre' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT t.nombre as tipovehiculo, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY t.nombre;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT t.nombre as tipovehiculo, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY t.nombre;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT t.nombre as tipovehiculo, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2020-01-01' AND '2023-01-31'
 GROUP BY t.nombre;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM vehiculos;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM vehiculos WHERE substring(placa,1,2) ;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,015 seg. */
SELECT * FROM vehiculos WHERE substring(placa,1,2) = 'A';
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM vehiculos WHERE substring(placa,1,1) = 'A';
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.placa 
  FROM vehiculos v 
 WHERE substring(placa,1,1) = 'A';
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `automoviles`.`inventario`;
SELECT v.placa, SUM(i.cantidad) 
  FROM vehiculos v 
  INNER JOIN inventarios i ON v.id = i.vehiculo_id
 WHERE substring(placa,1,1) = 'A'
 GROUP BY v.placa;
/* Error de SQL (1146): Table 'automoviles.inventarios' doesn't exist */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT v.placa, SUM(i.cantidad) 
  FROM vehiculos v 
  INNER JOIN inventario i ON v.id = i.vehiculo_id
 WHERE substring(placa,1,1) = 'A'
 GROUP BY v.placa;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.placa 
  FROM vehiculos v 
 WHERE substring(placa,1,1) = 'A';
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM vehiculos;
/* Filas afectadas: 0  Filas encontradas: 21  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.placa, SUM(i.cantidad) 
  FROM vehiculos v 
  INNER JOIN inventario i ON v.id = i.vehiculo_id
 WHERE substring(placa,1,1) = 'A'
 GROUP BY v.placa;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT v.placa, SUM(i.valor) 
  FROM vehiculos v 
  INNER JOIN inventario i ON v.id = i.vehiculo_id
 WHERE substring(placa,1,1) = 'A'
 GROUP BY v.placa;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
