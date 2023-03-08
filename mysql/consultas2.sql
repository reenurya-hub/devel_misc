/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `seminario`.`notas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='notas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='alumnos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `alumnos` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `seminario`.`alumnos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='alumnos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
ALTER TABLE `alumnos`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL DEFAULT NULL FIRST,
	ADD PRIMARY KEY (`id`);
/* Error de SQL (1067): Invalid default value for 'id' */
ALTER TABLE `alumnos`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL DEFAULT NULL FIRST,
	ADD PRIMARY KEY (`id`);
/* Error de SQL (1067): Invalid default value for 'id' */
ALTER TABLE `alumnos`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL FIRST,
	ADD PRIMARY KEY (`id`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='seminario';
SHOW TABLE STATUS FROM `seminario`;
SHOW FUNCTION STATUS WHERE `Db`='seminario';
SHOW PROCEDURE STATUS WHERE `Db`='seminario';
SHOW TRIGGERS FROM `seminario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='seminario';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='alumnos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `alumnos` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `seminario`.`alumnos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='alumnos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1, 'luigi', 'OsoQui', '1978-11-14');
/* Filas afectadas: 1  Filas encontradas: 0  Advertencias: 0  Duración para 2 consultas: 0,016 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1, 'luigi', 'OsoQui', '1978-11-14');
/* Error de SQL (1062): Duplicate entry '1' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 de 3 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1, 'luigi', 'OsoQui', '1978-11-14');
/* Error de SQL (1062): Duplicate entry '1' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 de 5 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1, 'luigi', 'OsoQui', '1978-11-14');
/* Error de SQL (1062): Duplicate entry '1' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 de 5 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1, 'luigi', 'OsoQui', '1978-11-14');
/* Error de SQL (1062): Duplicate entry '1' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 de 5 consultas: 0,000 seg. */
ALTER TABLE `alumnos`
	DROP PRIMARY KEY;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='seminario';
SHOW TABLE STATUS FROM `seminario`;
SHOW FUNCTION STATUS WHERE `Db`='seminario';
SHOW PROCEDURE STATUS WHERE `Db`='seminario';
SHOW TRIGGERS FROM `seminario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='seminario';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='alumnos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `alumnos` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `seminario`.`alumnos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='alumnos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
ALTER TABLE `alumnos`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL AUTO_INCREMENT FIRST;
/* Error de SQL (1075): Incorrect table definition; there can be only one auto column and it must be defined as a key */
ALTER TABLE `alumnos`
	CHANGE COLUMN `id` `id` INT(10) NOT NULL AUTO_INCREMENT FIRST,
	ADD PRIMARY KEY (`id`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='seminario';
SHOW TABLE STATUS FROM `seminario`;
SHOW FUNCTION STATUS WHERE `Db`='seminario';
SHOW PROCEDURE STATUS WHERE `Db`='seminario';
SHOW TRIGGERS FROM `seminario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='seminario';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='alumnos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `alumnos` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `seminario`.`alumnos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='alumnos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(1alumnosalumnos, 'luigi', 'OsoQui', '1978-11-14');
/* Error de SQL (1054): Unknown column '1alumnosalumnos' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 de 5 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(2, 'Henry', 'Caceres', '1987-08-06');
/* Filas afectadas: 1  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
COMMIT;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(3, 'Luisa', 'Lopez', '1998-10-05');
COMMIT;
/* Filas afectadas: 1  Filas encontradas: 0  Advertencias: 0  Duración para 2 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 3  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 3  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(4, 'Pedro', 'Perez', '1998-10-05')
(5, 'Pedro', 'Perez', '1998-10-05');
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(5, 'Pedro', 'Perez', '1998-10-05')' at line 5 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO alumnos
VALUES
(4, 'Pedro', 'Perez', '1998-10-05')
(5, 'Pedro', 'Perez', '1998-10-05');
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(5, 'Pedro', 'Perez', '1998-10-05')' at line 4 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO alumnos
VALUES
(4, 'Pedro', 'Perez', '1998-10-05'),
(5, 'Pedro', 'Perez', '1998-10-05');
/* Filas afectadas: 2  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
UPDATE `seminario`.`alumnos` SET `nombre`='Juan' WHERE  `id`=5;
SELECT `id`, `nombre`, `apellido`, `fecha_nacimiento` FROM `seminario`.`alumnos` WHERE  `id`=5;
INSERT INTO alumnos
VALUES
(NULL,'Janier', 'Marin', '1976-12-30'),
(NULL, 'Carlos', 'Lara', '1999-09-24');
/* Filas afectadas: 2  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
UPDATE `seminario`.`alumnos` SET `fecha_nacimiento`='1982-10-05' WHERE  `id`=4;
SELECT `id`, `nombre`, `apellido`, `fecha_nacimiento` FROM `seminario`.`alumnos` WHERE  `id`=4;
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(2, 'Henry', 'Caceres', '1987-08-06');
/* Error de SQL (1062): Duplicate entry '2' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 de 4 consultas: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 7  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT nombre 
FROM alumnos WHERE id > 5
ORDER BY nombre DESC;
/* Filas afectadas: 0  Filas encontradas: 2  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO alumnos
VALUES
(NULL,'Jose', 'Lopera', '1996-08-22'),
(NULL,'Diego', 'Mendez', '1984-09-30'),
(NULL, 'Ana', 'Marin', '2000-04-20');
/* Filas afectadas: 3  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT nombre 
FROM alumnos WHERE id > 5
ORDER BY nombre DESC;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 10  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='materias' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `materias` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='materias'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='materias'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `seminario`.`materias`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='materias' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CREATE TABLE `seminario`.`alumnos`;
SHOW CREATE TABLE `seminario`.`materias`;
SHOW CREATE TABLE `seminario`.`alumnos`;
UPDATE alumnos SET nombre = 'lionel' WHERE id = 8;
UPDATE alumnos SET apellido = 'ronaldo' WHERE id = 9;
UPDATE alumnos SET fecha_nacimiento = '2004-11-29' WHERE id = 10;
/* Filas afectadas: 3  Filas encontradas: 0  Advertencias: 0  Duración para 3 consultas: 0,000 seg. */
SELECT * FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 10  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
UPDATE alumnos SET nombre = 'Lionel' WHERE id = 8;
UPDATE alumnos SET apellido = 'Ronaldo' WHERE id = 9;
UPDATE alumnos SET fecha_nacimiento = '2004-11-29' WHERE id = 10;
/* Filas afectadas: 2  Filas encontradas: 0  Advertencias: 0  Duración para 3 consultas: 0,000 seg. */
SELECT * FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 10  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='notas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `notas` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='notas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='notas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `seminario`.`notas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='notas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO materias (id,nombre)
VALUES
(NULL, 'Matematicas'),
(NULL, 'Logica de Programacion'),
(NULL, 'Backend en Laravel'),
(NULL, 'Frontend en React'),
(NULL, 'Postman al 100%');
/* Error de SQL (1406): Data too long for column 'nombre' at row 2 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `seminario`.`materias`;
ALTER TABLE `materias`
	CHANGE COLUMN `nombre` `nombre` VARCHAR(25) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci' AFTER `id`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='seminario';
SHOW TABLE STATUS FROM `seminario`;
SHOW FUNCTION STATUS WHERE `Db`='seminario';
SHOW PROCEDURE STATUS WHERE `Db`='seminario';
SHOW TRIGGERS FROM `seminario`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='seminario';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='materias' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `materias` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='materias'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='materias'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando a la sesión "seminario" */
SHOW CREATE TABLE `seminario`.`materias`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='materias' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO materias (id,nombre)
VALUES
(NULL, 'Matematicas'),materias
(NULL, 'Logica de Programacion'),
(NULL, 'Backend en Laravel'),
(NULL, 'Frontend en React'),
(NULL, 'Postman al 100%');
/* Error de SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'materias
(NULL, 'Logica de Programacion'),
(NULL, 'Backend en Laravel'),
(NUL' at line 3 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
INSERT INTO materias (id,nombre)
VALUES
(NULL, 'Matematicas'),
(NULL, 'Logica de Programacion'),
(NULL, 'Backend en Laravel'),
(NULL, 'Frontend en React'),
(NULL, 'Postman al 100%');
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM materias;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM notas;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM materias ORDER BY nombre desc;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM notas;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM materias ORDER BY nombre desc;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='notas' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `notas` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='notas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='notas'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `seminario`.`notas`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='notas' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SHOW CREATE TABLE `seminario`.`materias`;
SHOW CREATE TABLE `seminario`.`notas`;
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='seminario' AND TABLE_NAME='alumnos' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `alumnos` FROM `seminario`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='seminario'   AND TABLE_NAME='alumnos'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `seminario`.`alumnos`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='seminario' AND tc.TABLE_NAME='alumnos' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO notas (materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,1,50,70,90,23),
(NULL,7,1,70,80,90,80),
(NULL,8,1,50,40,60,50),
(NULL,9,1,100,100,100,100),
(NULL,10,1,70,100,100,90);
/* Error de SQL (1136): Column count doesn't match value count at row 1 */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT * FROM notas;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,1,50,70,90,23),
(NULL,7,1,70,80,90,80),
(NULL,8,1,50,40,60,50),
(NULL,9,1,100,100,100,100),
(NULL,10,1,70,100,100,90);
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM notas;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `seminario`.`materias`;
SELECT * FROM `seminario`.`materias` LIMIT 1000;
SHOW CREATE TABLE `seminario`.`notas`;
SELECT * FROM `seminario`.`notas` LIMIT 1000;
SELECT * FROM alumnos;
/* Filas afectadas: 0  Filas encontradas: 10  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT * FROM notas INNER JOIN alumnos ON notas.alumno_id = alumnos.id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT alumnos.nombre, notas.nota_final FROM notas INNER JOIN alumnos ON notas.alumno_id = alumnos.id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT alumnos.nombre, notas.nota_final 
FROM notas n
INNER JOIN alumnos a ON notas.alumno_id = alumnos.id;
/* Error de SQL (1054): Unknown column 'alumnos.nombre' in 'field list' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT a.nombre, n.nota_final 
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `seminario`.`materias`;
SHOW CREATE TABLE `seminario`.`notas`;
SELECT a.nombre, m.nombre, n.nota_final 
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT a.nombre, m.nombre, n.nota1, n.nota2, n.nota3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,015 seg. */
SHOW CREATE TABLE `seminario`.`materias`;
SELECT a.id, a.nombre, a.apellido, b.nombre
FROM alumnos a, materias b, notas c
WHERE b.alumno_id = a.id
AND b.id = c.materia_id;
/* Error de SQL (1054): Unknown column 'b.alumno_id' in 'where clause' */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT a.id, a.nombre, a.apellido, b.nombre
FROM alumnos a, materias b, notas c
WHERE b.id = a.id
AND b.id = c.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT a.id, a.nombre, a.apellido, m.nombre
FROM alumnos a, materias m, notas n
WHERE m.id = a.id
AND m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT a.id, a.nombre, a.apellido, m.nombre, n.nota1, n.nota2, n.nota3, n.nota_final
FROM alumnos a, materias m, notas n
WHERE m.id = a.id
AND m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT a.id, a.nombre, a.apellido, m.nombre, n.nota1, n.nota2, n.nota3, n.nota_final
FROM alumnos a, materias m, notas n
WHERE m.id = a.id
AND m.id = n.materia_id
AND a.id = 1;
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SHOW CREATE TABLE `seminario`.`notas`;
SELECT a.id, a.nombre, a.apellido, m.nombre, n.nota1, n.nota2, n.nota3, n.nota_final
FROM alumnos a, materias m, notas n
WHERE n.alumno_id = a.id
AND m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT concat(a.nombre,' ',a.apellido), m.nombre, n.nota1, n.nota2, n.nota3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	CONCAT(a.nombre,' ',a.apellido)AS Nombre_Alumno, 
			m.nombre AS Nombre_Materia, 
			n.nota1 	AS Nota_1, 
			n.nota2 	AS Nota_2, 
			n.nota3 	AS Nota_3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	CONCAT(a.nombre,' ',a.apellido)AS Nombre_Alumno, 
			m.nombre AS Materia, 
			n.nota1 	AS Nota_1, 
			n.nota2 	AS Nota_2, 
			n.nota3 	AS Nota_3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,2,60,70,90,23),
(NULL,7,2,75,80,90,80),
(NULL,8,2,50,45,60,50),
(NULL,9,2,70,80,100,90),
(NULL,10,2,70,100,100,90);
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,3,40,70,70,50),
(NULL,7,3,80,90,60,70),
(NULL,8,3,90,90,90,90),
(NULL,9,3,70,80,70,75),
(NULL,10,3,80,80,80,85);
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,4,40,75,75,60),
(NULL,7,4,75,90,60,75),
(NULL,8,4,80,80,90,85),
(NULL,9,4,60,70,70,75),
(NULL,10,4,80,90,80,85);
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,5,40,75,55,60),
(NULL,7,5,45,60,60,55),
(NULL,8,5,40,50,70,65),
(NULL,9,5,40,60,70,55),
(NULL,10,5,40,70,70,65);
/* Filas afectadas: 5  Filas encontradas: 0  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;
INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(2, 'Henry', 'Caceres', '1987-08-06');
/* Error de SQL (1062): Duplicate entry '2' for key 'alumnos.PRIMARY' */
/* Filas afectadas: 0  Filas encontradas: 10  Advertencias: 0  Duración para 1 de 27 consultas: 0,000 seg. */
SELECT 	CONCAT(a.nombre,' ',a.apellido)AS Nombre_Alumno, 
			m.nombre AS Materia, 
			n.nota1 	AS Nota_1, 
			n.nota2 	AS Nota_2, 
			n.nota3 	AS Nota_3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;
/* Filas afectadas: 0  Filas encontradas: 25  Advertencias: 0  Duración para 1 consulta: 0,016 seg. */
SHOW CREATE TABLE `seminario`.`materias`;
SELECT * FROM notas;
/* Filas afectadas: 0  Filas encontradas: 25  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT materia_id, COUNT(materia_id) FROM notas;
/* Error de SQL (1140): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'seminario.notas.materia_id'; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT COUNT(materia_id) FROM notas;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT materia_id, COUNT(*) FROM notas;
/* Error de SQL (1140): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'seminario.notas.materia_id'; this is incompatible with sql_mode=only_full_group_by */
/* Filas afectadas: 0  Filas encontradas: 0  Advertencias: 0  Duración para 0 de 1 consulta: 0,000 seg. */
SELECT materia_id, COUNT(*) FROM notas
GROUP BY materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	materia_id, 
			COUNT(*) 
FROM notas a
INNER JOIN materias b ON a.materia_id = b.id
GROUP BY materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	materia_id, 
			COUNT(*) 
FROM notas a
left JOIN materias b ON a.materia_id = b.id
GROUP BY materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	materia_id, 
			COUNT(*) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY materia_id;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			COUNT(*) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			max(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
ORDER BY 2;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,015 seg. */
SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
ORDER BY 2 desc;
/* Filas afectadas: 0  Filas encontradas: 5  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
ORDER BY 2 DESC LIMIT 1;
/* Filas afectadas: 0  Filas encontradas: 1  Advertencias: 0  Duración para 1 consulta: 0,000 seg. */
