--Inserindo dados na tabela empresa
insert INTO tb_empresa VALUES
(1,'Resilia','Rio de Janeiro','123456789'),
(2,'Senac_Cursos','Nova Iguaçu','123456779'),
(3,'Descomplica','Rio de Janeiro','123456775'),
(4,'Uva','Nilopolis','123456777');

--Inserindo dados na tabela tecnologia
insert into tb_tecnologia VALUES
(1,'python','dados'),
(2,'sql','dados'),
(3,'Java','Front end'),
(4,'Java','Back End');

--Inserindo dados na tabela relatorio
insert into tb_relatorio VALUES
(1,'2022-01-15',1,1),
(2,'2022-07-25',2,2);

-- Inserindo dados na tabela relatorio_tecnologia
insert into tb_relatorio_tecnologia values
(1,1),
(2,2);

--Visualização das tabelas
select * from tb_tecnologia
select * from tb_empresa
select * from tb_relatorio
select * from tb_relatorio_tecnologia
