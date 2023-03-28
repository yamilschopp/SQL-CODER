USE control_stock_coder;

# se crea la tabla de auditoria
CREATE TABLE audits (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);

# trigger para crear una nueva marca
CREATE TRIGGER `tr_insert_marca_aud`
AFTER INSERT ON `marca`
FOR EACH ROW
INSERT INTO `audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('marca', NEW.id_marca, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

INSERT INTO marca (id_marca, descripcion)
VALUES (7, 'Hikvision');

SELECT * FROM audits;
SELECT * FROM marca;

# trigger para crear nuevo producto con movimiento mayor a 0 (1 o 2)
DELIMITER $$
CREATE TRIGGER trigger_check_mov_before_insert
BEFORE INSERT
ON producto FOR EACH ROW
BEGIN
  IF NEW.movimiento < 0 THEN
    set NEW.movimiento = 1;
  ELSEIF NEW.movimiento > 2 THEN
    set NEW.movimiento = 1;
  END IF;
END$$

SELECT * FROM producto;
DELIMITER ;
INSERT INTO producto VALUES (4, 4, 'Tablet LENOVO TB8505F 8 32 GB GRIS', 6, 48000, 4, 2,1);

CREATE TRIGGER `tr_insert_producto_aud`
AFTER INSERT ON `producto`
FOR EACH ROW
INSERT INTO `audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('producto', NEW.id_producto, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

SELECT * FROM audits;
SELECT * FROM producto;