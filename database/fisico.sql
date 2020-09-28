

CREATE DATABASE hola_viajens;

USE hola_viajens;

CREATE TABLE cliente (
    id_cliente VARCHAR(13) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    nome_completo VARCHAR(40) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    email VARCHAR(40) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    lgin VARCHAR(30) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    senha VARCHAR(30) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    foto BLOB NULL,
    data_de_nascimento DATE NULL,
    CONSTRAINT pkid_usuario PRIMARY KEY(id_cliente));

CREATE TABLE venda (
    id_venda VARCHAR(13) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    data_da_venda DATE NOT NULL,
    nome_do_vendedor VARCHAR(40) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    cliente VARCHAR(13) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI NOT NULL,
    CONSTRAINT pkid_venda PRIMARY KEY(id_venda),
    CONSTRAINT fkcliente FOREIGN KEY(cliente) REFERENCES cliente(id_cliente));