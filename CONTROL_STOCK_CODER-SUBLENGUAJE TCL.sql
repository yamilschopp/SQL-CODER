USE control_stock_coder;

SELECT @@autocommit;

SET autocommit = 0;

/* eliminar registros de la tabla producto. 
Eliminamos los registros donde los movimientos correspondan al deposito con id = 1*/
SELECT * FROM ciudad;
SELECT * FROM ciudad WHERE descripcion = 'Rosario';

SET SQL_SAFE_UPDATES = 0;
START TRANSACTION;

DELETE FROM ciudad WHERE descripcion = 'Rosario';

SELECT * FROM ciudad;

-- ROLLBACK;
-- COMMIT;

CREATE TABLE usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    dni INT NOT NULL,
    pais INT NOT NULL,
    FOREIGN KEY(pais) REFERENCES pais(id_pais),
	tipo INT NOT NULL,
    FOREIGN KEY(tipo) REFERENCES tipo_usuario(id_tipoUsuario)
);

/* insertar 8 registros con dos savepoints: */
START TRANSACTION;
INSERT INTO ciudad VALUES
(NULL, 'Buenos Aires', 1000),
(NULL, 'Córdoba', 5000),
(NULL, 'Rosario', 2000),
(NULL, 'La Plata', 1900),
(NULL, 'Mendoza', 5500);
savepoint lote_1;
INSERT INTO ciudad VALUES
(NULL, 'Salta', 4400),
(NULL, 'San Miguel de Tucumán', 4000),
(NULL, 'Mar del Plata', 7600),
(NULL, 'Neuquén', 8300),
(NULL, 'Bariloche', 8400);
savepoint lote_2;

SELECT * FROM ciudad; -- resultado: 14 rows (4 + 10).

ROLLBACK TO lote_1; 

SELECT * FROM ciudad; -- resultado: 9 rows (4 + 5).
