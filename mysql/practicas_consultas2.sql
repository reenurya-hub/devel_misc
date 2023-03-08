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

