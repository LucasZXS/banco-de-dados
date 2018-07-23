use dbinfox;
show tables;
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15) not null,
login varchar(50) not null unique,
senha varchar(50) not null,
perfil varchar(50) not null);
show tables;
describe tb_usuarios;
insert into tb_usuarios values(1,'Vitor','1111-1111','vitorz','123456','Aluno');
insert into tb_usuarios values(2,'Lucas Soares Vieira','2222-2222','Lucas','123456','Gerente');
insert into tb_usuarios values(3,'Bruninho High Ground','3333-3333','Bruno','123456','Aluno');
select * from tb_usuarios;

use dbinfox;
show tables;
create table tb_cliente(
idcli int primary key,
cpfcli varchar(15) unique,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo varchar(50) not null,
logradouro varchar(50) not null,
numero varchar(10) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf varchar(50) not null,
fone1 varchar(15) not null,
fone2 varchar(15),
emailcli varchar(50) not null);
show tables;
describe tb_cliente;
insert into tb_cliente values
(6,'45389717620','Lucas','09987-560','Rua','Don Primeiro','20','','Jardim Silva','Mauá','SP','9898-9898','','luquinhafg@outlook.com');

select * from tb_cliente;

drop table tb_cliente;


