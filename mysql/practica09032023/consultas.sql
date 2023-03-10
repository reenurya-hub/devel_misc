SELECT id,nombre,apellido,fecha_nacimiento
FROM alumnos;

INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(2, 'Henry', 'Caceres', '1987-08-06');


INSERT INTO alumnos
(id, nombre, apellido, fecha_nacimiento)
VALUES
(3, 'Luisa', 'Lopez', '1998-10-05');


INSERT INTO alumnos
VALUES
(NULL,'Janier', 'Marin', '1976-12-30'),
(NULL, 'Carlos', 'Lara', '1999-09-24');


INSERT INTO alumnos
VALUES
(NULL,'Jose', 'Lopera', '1996-08-22'),
(NULL,'Diego', 'Mendez', '1984-09-30'),
(NULL, 'Ana', 'Marin', '2000-04-20');



SELECT nombre 
FROM alumnos WHERE id > 5
ORDER BY nombre DESC;

SELECT * FROM alumnos;

UPDATE alumnos SET nombre = 'Lionel' WHERE id = 8;
UPDATE alumnos SET apellido = 'Ronaldo' WHERE id = 9;notas
UPDATE alumnos SET fecha_nacimiento = '2004-11-29' WHERE id = 10;

INSERT INTO materias (id,nombre)
VALUES
(NULL, 'Matematicas'),
(NULL, 'Logica de Programacion'),
(NULL, 'Backend en Laravel'),
(NULL, 'Frontend en React'),
(NULL, 'Postman al 100%');

SELECT * FROM materias ORDER BY nombre desc;

SELECT * FROM notas;

INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,1,50,70,90,23),
(NULL,7,1,70,80,90,80),
(NULL,8,1,50,40,60,50),
(NULL,9,1,100,100,100,100),
(NULL,10,1,70,100,100,90);

SELECT * FROM alumnos;

SELECT a.id, a.nombre, a.apellido, b.materia_id
FROM alumnos a, materias b, notas c
WHERE b.alumno_id = a.id;

SELECT * FROM notas INNER JOIN alumnos ON notas.alumno_id = alumnos.id;

SELECT alumnos.nombre, notas.nota_final FROM notas INNER JOIN alumnos ON notas.alumno_id = alumnos.id;

SELECT a.nombre, n.nota_final 
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id;

SELECT a.nombre, m.nombre, n.nota_final 
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;

/*
sentencia sql que muestre las materias de la tabla notas y las notas 1,2 y 3
*/
SELECT a.nombre, m.nombre, n.nota1, n.nota2, n.nota3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;


SELECT a.id, a.nombre, a.apellido, m.nombre, n.nota1, n.nota2, n.nota3, n.nota_final
FROM alumnos a, materias m, notas n
WHERE n.alumno_id = a.id
AND m.id = n.materia_id;

SELECT 	CONCAT(a.nombre,' ',a.apellido)AS Nombre_Alumno, 
			m.nombre AS Materia, 
			n.nota1 	AS Nota_1, 
			n.nota2 	AS Nota_2, 
			n.nota3 	AS Nota_3
FROM notas n
INNER JOIN alumnos a ON n.alumno_id = a.id
INNER JOIN materias m ON m.id = n.materia_id;


INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,2,60,70,90,23),
(NULL,7,2,75,80,90,80),
(NULL,8,2,50,45,60,50),
(NULL,9,2,70,80,100,90),
(NULL,10,2,70,100,100,90);


INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,3,40,70,70,50),
(NULL,7,3,80,90,60,70),
(NULL,8,3,90,90,90,90),
(NULL,9,3,70,80,70,75),
(NULL,10,3,80,80,80,85);


INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,4,40,75,75,60),
(NULL,7,4,75,90,60,75),
(NULL,8,4,80,80,90,85),
(NULL,9,4,60,70,70,75),
(NULL,10,4,80,90,80,85);


INSERT INTO notas (id,materia_id,alumno_id,nota1,nota2,nota3,nota_final)
VALUES
(NULL,6,5,40,75,55,60),
(NULL,7,5,45,60,60,55),
(NULL,8,5,40,50,70,65),
(NULL,9,5,40,60,70,55),
(NULL,10,5,40,70,70,);


SELECT * FROM notas;

SELECT 	materia_id, 
			COUNT(*) 
FROM notas
GROUP BY materia_id;

SELECT 	materia_id, 
			COUNT(*) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY materia_id;


SELECT 	b.nombre, 
			COUNT(*) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre;


SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
ORDER BY 2 desc;

SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
ORDER BY 2 DESC LIMIT 1;


SELECT 	b.nombre, 
			sum(nota_final) 
FROM notas a
inner JOIN materias b ON a.materia_id = b.id
GROUP BY b.nombre
HAVING SUM(a.nota3) > 300
ORDER BY 2 DESC 
LIMIT 1;

/******************************************************/

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

SELECT * FROM marcas;

INSERT INTO tipo_vehiculo(id, nombre)
VALUES
(NULL,'Moto'),
(NULL,'Automovil'),
(NULL,'Camioneta'),
(NULL,'Cuatrimoto'),
(NULL,'Camion'),
(NULL,'Tractomula'),
(NULL,'Bicicleta');


SELECT * FROM tipo_vehiculo;

id int
marca_id int
nombre varchar
placa varchar
modelo int
tipo_vehiculo_id
estado varchar
valor decimal
cantidad int

INSERT INTO vehiculos(id, marca_id, nombre, placa, modelo, tipo_vehiculo_id, estado, valor, cantidad)
VALUES 
(NULL, 1, 'Generico 1', 'ASF002', 2020, 1, 'Nuevo', 30000000, 1);


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


marca, nombre, placa, tipo_de_vehiculo y valor

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




UPDATE vehiculos SET placa = 'AS345C',  WHERE id = 1;
UPDATE vehiculos SET placa = 'OW212D' WHERE id = 8;
SELECT * FROM inventario;


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
(NULL,'17','2018-01-01','10000000','6','60000000'),
(NULL,'18','2019-01-01','30000000','5','150000000'),
(NULL,'19','2021-01-01','20000000','3','60000000'),
(NULL,'20','2010-01-01','15000000','2','30000000'),
(NULL,'1','2020-01-01','20000000','5','100000000'),
(NULL,'2','2019-01-01','32000000','6','192000000'),
(NULL,'3','2021-01-01','20000000','6','120000000'),
(NULL,'4','2023-01-01','10000000','7','70000000'),
(NULL,'5','2014-01-01','30000000','8','240000000'),
(NULL,'6','2016-01-01','20000000','9','180000000'),
(NULL,'7','2018-01-01','15000000','4','60000000'),
(NULL,'8','2019-01-01','20000000','3','60000000'),
(NULL,'9','2021-01-01','32000000','3','96000000'),
(NULL,'10','2010-01-01','20000000','3','60000000');


SELECT * FROM inventario;

SELECT SUM(valor) FROM inventario;

cuanto se vendió por cada vehículo

SELECT v.nombre, SUM(i.valor) FROM
inventario i, vehiculos v
WHERE i.vehiculo_id = v.id
GROUP BY v.nombre, i.valor;

cuantas unidades de vehiculos se vendieron en el mes de enero?

SELECT * FROM inventario;

SELECT SUM(i.cantidad) FROM inventario i
WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31';

SELECT v.nombre, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2022-01-01' AND '2023-01-31'
 GROUP BY v.nombre;

SELECT t.nombre as tipovehiculo, SUM(i.cantidad) 
  FROM inventario i
  INNER JOIN vehiculos v on i.vehiculo_id = v.id
  INNER JOIN tipo_vehiculo t ON v.tipo_vehiculo_id = v.id
 WHERE i.fecha_venta BETWEEN '2020-01-01' AND '2023-01-31'
 GROUP BY t.nombre;



SELECT * FROM tipo_vehiculo;

SELECT * FROM vehiculos;

SELECT v.placa 
  FROM vehiculos v 
 WHERE substring(placa,1,1) = 'A';
 
SELECT v.placa, SUM(i.valor) 
  FROM vehiculos v 
  INNER JOIN inventario i ON v.id = i.vehiculo_id
 WHERE substring(placa,1,1) = 'A'
 GROUP BY v.placa;

