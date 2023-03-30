--Criação do DataBase
CREATE DATABASE ResiliaData;

USE ResiliaData;

--Criação tabelas


--Criação da tabela empresa
CREATE TABLE tb_empresa
(id_empresa INT not null,
nome_empresa VARCHAR (50),
Endereco VARCHAR (50),
CNPJ INT,
CONSTRAINT pk_id_empresa PRIMARY KEY (id_empresa),
);

--Criação da tabela tecnologia

 CREATE TABLE tb_tecnologia(
 id_tecnologia int not null,
 nome_tecnologia varchar (50),
 area varchar (50),
 constraint pk_id_tecnologia primary key (id_tecnologia)
);

--Criação da tabela relatorio
CREATE TABLE tb_relatorio
(id_relatorio INT not null,
data_relatorio date,
id_empresa int,
id_relatorio_tecnologia int,
CONSTRAINT pk_id_relatorio PRIMARY KEY (id_relatorio),
);

-- Criação da tabelo do relacionamento Relatorio e Empresa

CREATE TABLE tb_relatorio_tecnologia
(id_relatorio INT not null,
id_tecnologia int not null,
PRIMARY KEY(id_relatorio,id_tecnologia),
foreign key (id_relatorio) References tb_relatorio(id_relatorio),
foreign key (id_tecnologia) References tb_tecnologia(id_tecnologia),
);