CREATE SCHEMA control_stock_coder;
USE control_stock_coder;

CREATE TABLE pais(
	id_pais INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

CREATE TABLE ciudad(
	id_ciudad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL,
    cp VARCHAR(10) NOT NULL
);

CREATE TABLE tipo_movimiento(
	id_tipoMovimiento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
);

CREATE TABLE marca(
	id_marca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

CREATE TABLE tipo_producto(
	id_tipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

ALTER TABLE tipo_producto MODIFY COLUMN descripcion VARCHAR(40) NOT NULL;

CREATE TABLE empresa(
	id_empresa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL,
	ciudad INT NOT NULL,
    FOREIGN KEY(ciudad) REFERENCES ciudad(id_ciudad),
    pais INT NOT NULL,
    FOREIGN KEY(pais) REFERENCES pais(id_pais)
);

CREATE TABLE tipo_usuario(
	id_tipoUsuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL,
	empresa INT NOT NULL,
    FOREIGN KEY(empresa) REFERENCES empresa(id_empresa)
);

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

CREATE TABLE deposito(
	id_deposito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    direccion VARCHAR(20) NOT NULL,
	ciudad INT NOT NULL,
    FOREIGN KEY(ciudad) REFERENCES ciudad(id_ciudad),
    pais INT NOT NULL,
    FOREIGN KEY(pais) REFERENCES pais(id_pais)
);

CREATE TABLE proveedor(
	id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL,
    cuil_cuit VARCHAR(30) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
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
    FOREIGN KEY(deposito) REFERENCES deposito(id_deposito),
	movimiento INT NOT NULL,
    FOREIGN KEY(movimiento) REFERENCES tipo_Movimiento(id_tipoMovimiento)
);

ALTER TABLE producto MODIFY COLUMN descripcion VARCHAR(60) NOT NULL;

CREATE TABLE movimiento_usuario(
	id_movimiento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo_movimiento INT NOT NULL,
    FOREIGN KEY(tipo_movimiento) REFERENCES tipo_movimiento(id_tipoMovimiento),
    usuario INT NOT NULL,
    FOREIGN KEY(usuario) REFERENCES usuario(id_usuario),
	deposito INT NOT NULL,
    FOREIGN KEY(deposito) REFERENCES deposito(id_deposito)
);

CREATE TABLE movimiento_producto(
	id_movimiento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo_movimiento INT NOT NULL,
    FOREIGN KEY(tipo_movimiento) REFERENCES tipo_movimiento(id_tipoMovimiento),
    producto INT NOT NULL,
    FOREIGN KEY(producto) REFERENCES producto(id_producto),
	deposito INT NOT NULL,
    FOREIGN KEY(deposito) REFERENCES deposito(id_deposito)
);

CREATE TABLE usuario_tipo(
	id_usuarioTipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	usuario INT NOT NULL,
    FOREIGN KEY(usuario) REFERENCES usuario(id_usuario),
	tipo INT NOT NULL,
    FOREIGN KEY(tipo) REFERENCES tipo_usuario(id_tipoUsuario)
);
