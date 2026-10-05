-- Eliminar tabla (por si ya existe y quieres recrearla limpia)
DROP TABLE IF EXISTS estudiantes;

-- Crear Tabla
CREATE TABLE estudiantes (

    id_estudiante INT(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT,
	curso VARCHAR(50),
	fecha_registro VARCHAR(10),
    CONSTRAINT estudiantes_pk PRIMARY KEY (id_estudiante)
);

-- INSERTAR DATOS
INSERT INTO estudiantes VALUES ('1824668282', 'David', 'Guamanzara', 27, 'Base de Datos', '2026-05-11');
INSERT INTO estudiantes VALUES ('1710234561', 'Mateo', 'Pérez', 22, 'IA', '2026-06-01');
INSERT INTO estudiantes VALUES ('1723456782', 'Sofía', 'Benítez', 25, 'POO', '2026-06-03');
INSERT INTO estudiantes VALUES ('1734567893', 'Alejandro', 'López', 20, 'Sistemas', '2026-06-05');
INSERT INTO estudiantes VALUES ('1745678904', 'Valentina', 'Rodríguez', 28, 'Base de Datos', '2026-06-10');
INSERT INTO estudiantes VALUES ('1756789015', 'Daniel', 'Gómez', 24, 'IA', '2026-06-12');
INSERT INTO estudiantes VALUES ('1767890126', 'Camila', 'Fernández', 21, 'POO', '2026-06-15');
INSERT INTO estudiantes VALUES ('1778901237', 'Lucas', 'Torres', 30, 'Sistemas', '2026-06-18');
INSERT INTO estudiantes VALUES ('1789012348', 'Lucía', 'Ramírez', 26, 'Base de Datos', '2026-06-20');
INSERT INTO estudiantes VALUES ('1790123459', 'Gabriel', 'Flores', 23, 'IA', '2026-06-22');
INSERT INTO estudiantes VALUES ('1711234560', 'Martina', 'Acosta', 29, 'POO', '2026-06-25');
INSERT INTO estudiantes VALUES ('1722345671', 'Joaquín', 'Silva', 27, 'Sistemas', '2026-06-28');
INSERT INTO estudiantes VALUES ('1733456782', 'Victoria', 'Morales', 22, 'Base de Datos', '2026-07-02');
INSERT INTO estudiantes VALUES ('1744567893', 'Santiago', 'Herrera', 25, 'IA', '2026-07-05');
INSERT INTO estudiantes VALUES ('1755678904', 'Isabella', 'Medina', 20, 'POO', '2026-07-08');
INSERT INTO estudiantes VALUES ('1766789015', 'Thiago', 'Castro', 28, 'Sistemas', '2026-07-10');
INSERT INTO estudiantes VALUES ('1777890126', 'Antonella', 'Rojas', 24, 'Base de Datos', '2026-07-12');
INSERT INTO estudiantes VALUES ('1788901237', 'Emiliano', 'Vargas', 21, 'IA', '2026-07-15');
INSERT INTO estudiantes VALUES ('1799012348', 'Renata', 'Mendoza', 30, 'POO', '2026-07-18');
INSERT INTO estudiantes VALUES ('1710123459', 'Agustín', 'Paredes', 26, 'Sistemas', '2026-07-20');


--Mostrar todos los registros
SELECT * FROM estudiantes;

--Mostrar únicamente nombres y curso
SELECT nombre, curso FROM estudiantes;

--Mostrar estudiantes mayores de 18 años
SELECT * FROM estudiantes WHERE edad > 18;

--Mostrar estudiantes entre 18 y 25 años
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

--Mostrar estudiantes del curso “Base de Datos”
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

--Mostrar estudiantes registrados después de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_inscripcion > '2026-03-01';

--Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_inscripcion BETWEEN '2026-01-01' AND '2026-04-30';

-- update

UPDATE estudiantes SET edad = 30  WHERE apellido = 'Paredes'
UPDATE estudiantes SET curso = 'IA' WHERE apellido = 'Guamanzara'
UPDATE estudiantes SET fecha_registro = '2026-01-01' WHERE apellido = 'Acosta'
UPDATE estudiantes SET edad = 28 WHERE edad = 20
UPDATE estudiantes SET curso = 'Base de Datos' WHERE curso = 'Sistemas'
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = '1824668282';
-- DELETE
DELETE FROM estudiantes WHERE id_estudiante ='1710234561' ;
DELETE FROM estudiantes WHERE curso ='Sistemas' ;
DELETE FROM estudiantes WHERE edad ='30' ;
