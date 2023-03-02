CREATE SCHEMA control_stock;
USE control_stock;

CREATE TABLE pais(
	id_pais INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

CREATE TABLE usuarios(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    dni INT NOT NULL,
    pais INT NOT NULL,
    FOREIGN KEY(pais) REFERENCES pais(id_pais)
);

CREATE TABLE ciudad(
	id_ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

CREATE TABLE marca(
	id_marca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

CREATE TABLE tipo_producto(
	id_tipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

CREATE TABLE deposito(
	id_deposito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(20) NOT NULL,
    cp VARCHAR(10) NOT NULL,
	ciudad INT NOT NULL,
    FOREIGN KEY(ciudad) REFERENCES ciudad(id_ciudad),
    pais INT NOT NULL,
    FOREIGN KEY(pais) REFERENCES pais(id_pais)
);

CREATE TABLE producto(
	id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo_producto INT NOT NULL,
    FOREIGN KEY(tipo_producto) REFERENCES tipo_producto(id_tipo),
    descripcion VARCHAR(40) NOT NULL,
	marca INT NOT NULL,
    FOREIGN KEY(marca) REFERENCES marca(id_marca),
    precio INT NOT NULL,
    cantidad INT NOT NULL,
    deposito INT NOT NULL,
    FOREIGN KEY(deposito) REFERENCES deposito(id_deposito)
);

