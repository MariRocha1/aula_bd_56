#Criando uma nova tabela
Create table departamentos(
id int,
nome varchar(60),
primary key(id)

);

#Inserindo informações
insert into departamentos 
values
(1, 'financeiro'),
(2, 'vendas'),
(3,'desenvolvimento de produtos'),
(4, ' ti'),
(5,'juridico'),
(6,' qualidade'),
(7,'administracao'),
(8,'atendimento ao cliente'),
(9,'recursos humanos'),
(10,'markenting'),
(11,'producao'),
(12,'executivo'),
(13, 'gerente financeiro'),
(14,'gerente de markenting'),
(15,'gerente de producao');    

#Alterando a tabela de funcionarios
#adicionando a coluna id_departamento como chave estrangeira
#fazendo referencia a tabela departamentos
alter table funcionarios
add column id_departamentos INT,
add constraint fk_funcionarios_depatarmentos
foreign key(id_departamentos) references departamentos(id);

#Selecionando os funcionarios com id=1
select * from funcionarios where id=1;

#Atualizando os funcionarios do departamento financeiro
update funcionarios
set id_departamentos=1 where id=2 or id=3 or id=4 or id=5;

#Atualizando os funcionarios para o departamento de TI
update funcionarios
set id_departamentos=4 
where id=6 or id=7 or id=8 or id=9;

#Atualizando os funcionarios para o departamento juridico
update funcionarios
set id_departamentos=5 
where id= 10 or id=11 or id=12 or id=13;

#Atualizando os funcionarios para o departamento de Recursos Humanos
update funcionarios
set id_departamentos=9  
where id=14 or id=15 or id=16 or id=17;

#Descobrindo id do funcionario com maior salario
select *from funcionarios order by salario desc;

#Atualiza o funcionario com maior salario para departamento Executivo
update funcionarios 
set id_departamentos=12 
where id=44;

#Atualiza o funcionario com segundo maior salario para departamento de gerente financeiro
update funcionarios
set id_departamentos=13
where id=413