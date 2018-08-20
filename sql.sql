CREATE DATABASE C:\cruddb.fdb USER 'sysdba' password 'masterkey';
CREATE TABLE funcionario (wCod int not null primary key, wNome varchar(50) not null, wCodDepto int not null, wDataAdmissao varchar(25) not null);
