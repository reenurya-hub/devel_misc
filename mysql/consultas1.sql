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

