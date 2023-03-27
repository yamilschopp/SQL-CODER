USE control_stock_coder;

/* PS #1 permitir indicar a través de un parámetros el campo de ordenamiento de una tabla y 
mediante un segundo parámetro, si el orden es ascendente o descendete. 
*/
DELIMITER $$
CREATE PROCEDURE `ordenar_tabla_marcas`(IN campo CHAR(30), IN orden CHAR(20))
BEGIN
		IF orden <> '' THEN
			SET @ventas_orden = CONCAT('ORDER BY ', campo, ' ', orden);
		ELSE
			SET @ventas_orden = '';
		END IF;
		
    SET @clausula = CONCAT('SELECT * FROM marca ', @ventas_orden);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

CALL ordenar_tabla_marcas('descripcion', 'asc');

/* PS #2: insertar registros en una tabla o eliminar algún registro específico */ 

DELIMITER $$
CREATE PROCEDURE `insertar_ciudad` (IN nombre VARCHAR (20), IN codigo_postal VARCHAR (10), OUT output VARCHAR(50))
BEGIN
	IF nombre <> '' THEN
		INSERT INTO ciudad(descripcion, cp)
        VALUES (nombre, codigo_postal);
        SET output = 'Inserción exitosa';
	ELSE
		SET output = 'ERROR: debe ingresarse al menos 1 ciudad';
	END IF;
    
    SET @clausula = 'SELECT * FROM ciudad ORDER BY cp DESC ';
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

CALL insertar_ciudad ('Cañada Rosquin', '2454', @result);
SELECT @result as resultado_insertar_ciudad

SELECT * FROM ciudad;
        
/* PS #3: eliminar una ciudad*/
DELIMITER $$
CREATE PROCEDURE `eliminar_ciudad` (IN nro_ciudad INT, OUT output VARCHAR(30))
BEGIN
    SET @clausula = CONCAT ('DELETE FROM ciudad WHERE id_ciudad = ', nro_ciudad);
    SET output = 'Eliminación exitosa';
    PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END
$$

CALL eliminar_ciudad ('4', @result);
SELECT @result as resultado_eliminar_ciudad;
SELECT * from ciudad;
