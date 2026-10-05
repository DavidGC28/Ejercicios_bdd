-- Eliminar tabla (por si ya existe y quieres recrearla limpia)
DROP TABLE IF EXISTS clientes;

-- Crear Tabla
CREATE TABLE clientes (
    cedula CHAR(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT,
    CONSTRAINT clientes_pk PRIMARY KEY (cedula)
);

-- INSERTAR DATOS
INSERT INTO clientes VALUES ('1722532361', 'David', 'Guamanzara', 27);
INSERT INTO clientes VALUES ('1712532363', 'Patricio', 'Guamanzara', 29);
INSERT INTO clientes VALUES ('1710234561', 'Mateo', 'Pérez', 22);
INSERT INTO clientes VALUES ('1723456782', 'Sofía', 'Benítez', 25);
INSERT INTO clientes VALUES ('1734567893', 'Alejandro', 'López', 20);
INSERT INTO clientes VALUES ('1745678904', 'Valentina', 'Rodríguez', 28);
INSERT INTO clientes VALUES ('1756789015', 'Daniel', 'Gómez', 24);
INSERT INTO clientes VALUES ('1767890126', 'Camila', 'Fernández', 21);
INSERT INTO clientes VALUES ('1778901237', 'Lucas', 'Torres', 30);
INSERT INTO clientes VALUES ('1789012348', 'Lucía', 'Ramírez', 26);
INSERT INTO clientes VALUES ('1790123459', 'Gabriel', 'Flores', 23);
INSERT INTO clientes VALUES ('1711234560', 'Martina', 'Acosta', 29);
INSERT INTO clientes VALUES ('1722345671', 'Joaquín', 'Silva', 27);
INSERT INTO clientes VALUES ('1733456782', 'Victoria', 'Morales', 22);
INSERT INTO clientes VALUES ('1744567893', 'Santiago', 'Herrera', 25);
INSERT INTO clientes VALUES ('1755678904', 'Isabella', 'Medina', 20);
INSERT INTO clientes VALUES ('1766789015', 'Thiago', 'Castro', 28);
INSERT INTO clientes VALUES ('1777890126', 'Antonella', 'Rojas', 24);
INSERT INTO clientes VALUES ('1788901237', 'Emiliano', 'Vargas', 21);
INSERT INTO clientes VALUES ('1799012348', 'Renata', 'Mendoza', 30);
INSERT INTO clientes VALUES ('1710123459', 'Agustín', 'Paredes', 26);
INSERT INTO clientes VALUES ('1721234560', 'Catalina', 'Iglesias', 23);

-- SELECT O RECUPERAR DATOS
SELECT * FROM clientes;
SELECT * FROM clientes WHERE edad > 25;
SELECT * FROM clientes WHERE edad BETWEEN 18 AND 25;
SELECT * FROM clientes WHERE edad > 25 AND edad < 30;
SELECT * FROM clientes WHERE edad = 22 OR edad = 28;

-- update

UPDATE clientes SET edad = 28 WHERE apellido = 'Guamanzara'

-- DELETE
DELETE FROM clientes WHERE cedula ='1710234561' ;
