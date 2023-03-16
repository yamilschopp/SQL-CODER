USE control_stock_coder;

INSERT INTO ciudad VALUES 
(NULL, 'Sunchales', '2322'),
(NULL, 'Rafaela', '2300');

INSERT INTO ciudad VALUES 
(NULL, 'Santa Fe', '3000');

INSERT INTO pais VALUES 
(NULL, 'Argentina'),
(NULL, 'Paraguay'),
(NULL, 'Uruguay');

INSERT INTO tipo_movimiento VALUES 
(NULL, 'Ingreso'),
(NULL, 'Egreso');

INSERT INTO marca VALUES 
(NULL, 'Hanwa'),
(NULL, 'Sony'),
(NULL, 'Spec'),
(NULL, 'Hp'),
(NULL, 'Dell'),
(NULL, 'Lenovo');

INSERT INTO tipo_producto VALUES 
(NULL, 'Camara bullet'),
(NULL, 'Camara domo'),
(NULL, 'Notebook intel i7'),
(NULL, 'Notebook intel i5'),
(NULL, 'Control horario'),
(NULL, 'Control de acceso'),
(NULL, 'Lector de acceso');

UPDATE tipo_producto SET descripcion = "Notebook" WHERE id_tipo = 3;
UPDATE tipo_producto SET descripcion = "Tablet" WHERE id_tipo = 4;

INSERT INTO empresa VALUES 
(NULL, 'Compuct SA', 1, 1);

INSERT INTO empresa VALUES
(NULL, 'GBR SA', 3, 1),
(NULL, 'MUNDO ELECTRONICA', 2, 1),
(NULL, 'CABL', 1, 1);

INSERT INTO tipo_usuario VALUES
(NULL, 'Analista de tecnologia', 4),
(NULL, 'Supervisor de seguridad', 2),
(NULL, 'jefe de telecomunicaciones', 2),
(NULL, 'Gerente de tecnología', 1),
(NULL, 'Secretaria', 3);

INSERT INTO usuario VALUES
(NULL, 'Jose', 'Martinez', 33789653, 1, 2),
(NULL, 'Alberto', 'Colazzo', 25789712, 2, 4),
(NULL, 'Mario', 'Dobler', 30485691, 1, 3);

INSERT INTO deposito VALUES
(NULL, 'Ameghino 35', 1, 1),
(NULL, 'Carabobo 567', 2, 1),
(NULL, 'Lapachos 89', 3, 1);

INSERT INTO proveedor VALUES
(NULL, 'Dell SA', '30-70719842-3', 'Las lajitas 450', 3, 1),
(NULL, 'SPEC SA', '30-70743839-4', 'General Belgrano 67', 2, 1),
(NULL, 'Importaciones America', '30-704675832-3', 'Los Aromos', 3, 1);

INSERT INTO producto VALUES
(NULL, 3, 'Notebook HP core i5 256 gb sd 8 gb ram serie 5466845', 4, 178000, 2, 1, 1),
(NULL, 3, 'Camara bullet sony 4 mpx fullhd serie 897112', 2, 45000, 8, 3, 1),
(NULL, 3, 'Lector de tarjetas SPEC serie 89666532', 3, 80000, 15, 2, 1);

INSERT INTO movimiento_producto VALUES
(NULL, 1, 3, 1),
(NULL, 1, 1, 3),
(NULL, 1, 7, 2);