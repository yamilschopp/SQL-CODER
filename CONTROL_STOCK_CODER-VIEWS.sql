USE control_stock_coder;

CREATE OR REPLACE VIEW productos AS
(SELECT p.descripcion,marca FROM producto p JOIN marca m ON(p.marca = m.id_marca));

SELECT * FROM productos;

CREATE OR REPLACE VIEW productos_SPEC AS
(SELECT p.descripcion,marca FROM producto p JOIN marca m ON(p.marca = m.id_marca) WHERE m.descripcion= "SPEC");

SELECT * FROM productos_SPEC;

CREATE OR REPLACE VIEW movimientos_usuarios AS
(SELECT usuario,deposito FROM movimiento_usuario mu JOIN usuario u ON(mu.usuario = u.id_usuario) WHERE mu.tipo_movimiento='1');

SELECT * FROM movimientos_usuarios;

CREATE OR REPLACE VIEW proveedores AS
(SELECT DISTINCT descripcion, cuil_cuit FROM proveedor);

SELECT * FROM proveedores;