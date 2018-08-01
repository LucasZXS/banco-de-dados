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
idcli int auto_increment primary key,
cpfcli varchar(15) unique,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo varchar(50) not null,
logradouro varchar(50) not null,
numero varchar(10) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf char(2) not null,
fone1 varchar(15) not null,
fone2 varchar(15),
emailcli varchar(50) not null);
show tables;
describe tb_cliente;
insert into tb_cliente values
(null,'45389717620','Lucas Soares Vieira','00587-560','Rua','Don Primeiro','20','','Jardim Silva','Mauá','SP','9898-9898','','luquinhafg@outlook.com');

insert into tb_cliente values
(null,'45389709876','Vitao','07687-560','Rua','Don Segundo','31','','Jardim SO','Capuava','SP','8989-8989','','vitaoz@outlook.com');

insert into tb_cliente values
(null,'45389712345','Brunao','02487-560','Rua','Don Terceiro','42','','Jardim Elizabeth','Santo andré','SP','1212-1212','','onlycarry@outlook.com');

insert into tb_cliente values
(null,'45389787654','fafa','06787-560','Rua','Don Quarto','53','','Jardim Itapark','Utinga','SP','2121-2121','','fafafo@outlook.com');

insert into tb_cliente values
(null,'45389745098','Victao','01287-560','Rua','Don Quinto','64','','Jardim Mauá','São Caetano','SP','4343-4343','','ichamps@outlook.com');

select * from tb_cliente;

drop table tb_cliente;

create table tb_os(
idos int auto_increment primary key,
tipo1 varchar(15) not null,
situacao varchar(20) not null,
equipamento varchar(200) not null,
defeito varchar(200) not null,
servico varchar(200),
tecnico varchar(200),
valor decimal(10,2)
);

describe tb_os;
select * from tb_os;
describe tb_cliente;
select * from tb_cliente;


insert into tb_os (tipo1,situacao,equipamento,defeito,servico,valor,idcli) values
('Conserto','Aprovado','Desktop antigo','não liga','trocar fonte',300,2);

insert into tb_os (tipo1,situacao,equipamento,defeito,servico,valor,idcli) values
('Orçamento','Aprovado','Notebook lenovo','Pouca RAM','RAM Upgrade',400,1);

insert into tb_os (tipo1,situacao,equipamento,defeito,servico,valor,idcli) values
('Conserto','Reprovado','Notebook antigo','Listras na tela','Consertar o LED',900,3);

alter table tb_os auto_increment = 10000;

alter table tb_os add idcli int; -- adicionar a coluna idcli

alter table tb_os drop column idcli; -- dropar a coluna idcli (não usa esse comando)

alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;

alter table tb_os add dataos timestamp default current_timestamp
after idos;

-- relatorio

select O.idos as OS,tipo1 as Tipo,situacao as Situação,equipamento as Equipamento,defeito as Defeito,
servico as Serviço,tecnico as Tecnico,valor as Valor,dataos as Dataos,
C.nomecli as Nome, fone1 as Fone, emailcli as Email
from tb_os as O
inner join tb_cliente as C on (O.idcli = C.idcli);




