USE mysql;
SHOW tables;
SELECT * FROM user;

# Se crea el usuario prueba1
CREATE USER prueba1@localhost IDENTIFIED BY 'Prueba1*';

# Se crea el usuario prueba1
CREATE USER prueba2@localhost IDENTIFIED BY 'Prueba2*';

# Se le asigna el permiso de lectura de toda la tabla al usuario prueba1
GRANT SELECT ON control_stock_coder.* TO prueba1@localhost;

# Se le asigna el permiso de lectura, inserción y modificación de toda la tabla al usuario prueba2
GRANT SELECT, INSERT, UPDATE ON control_stock_coder.* TO prueba2@localhost;




