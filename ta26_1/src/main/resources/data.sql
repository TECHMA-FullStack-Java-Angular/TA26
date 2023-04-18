
CREATE DATABASE IF NOT EXISTS db_ud26;
USE db_ud26;

CREATE TABLE IF NOT EXISTS piezas (
    codigo INT auto_increment,
    nombre VARCHAR(100),
    CONSTRAINT PK_piezas PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS proveedores (
    id VARCHAR(4)not null,
    nombre VARCHAR(100),
    CONSTRAINT PK_proveedores PRIMARY KEY (id)   
);

CREATE TABLE IF NOT EXISTS suministra (
    codigo_pieza INT,
    id_proveedor VARCHAR(4),
    precio INT,
    CONSTRAINT PK_suministra PRIMARY KEY (codigo_pieza, id_proveedor),
    CONSTRAINT FK_suministra_piezas FOREIGN KEY (codigo_pieza) REFERENCES piezas(codigo),
    CONSTRAINT FK_suministra_proveedores FOREIGN KEY (id_proveedor) REFERENCES proveedores(id)
);

insert into piezas (codigo,nombre)values(1,'Pieza1');
insert into piezas (codigo,nombre)values(2,'Pieza2');
insert into proveedores (id,nombre)values('1A','Proveedor1');
insert into proveedores (id,nombre)values('2B','Proveedor2');
insert into suministra (codigo_pieza, id_proveedor, precio)values(1,'2B',200);
insert into suministra (codigo_pieza, id_proveedor, precio)values(2,'1A',100);