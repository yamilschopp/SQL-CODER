USE control_stock_coder;

DELIMITER $$

CREATE FUNCTION `get_producto` (id INT) 

RETURNS varchar(70)

NOT DETERMINISTIC

READS SQL DATA

BEGIN

 DECLARE resultado VARCHAR(70);

 SET resultado = (SELECT descripcion FROM producto WHERE id_producto=id);

 RETURN resultado;

END$$

SELECT get_producto(3);


DELIMITER $$

CREATE FUNCTION `count_product` (id_tipo INT) 

RETURNS INT UNSIGNED

DETERMINISTIC

READS SQL DATA

BEGIN

 DECLARE resultado INT UNSIGNED;

 SET resultado = (SELECT cantidad FROM producto p JOIN tipo_producto tp ON (p.tipo_producto=tp.id_tipo) WHERE tp.id_tipo=id_tipo);

 RETURN resultado;

END$$

SELECT count_product(1);