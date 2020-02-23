use master;
drop database db3;
go


create database db3;
go

use db3;
go


create table tbl_cad_prod (
id int primary key identity (1,1),
nome nvarchar (100) not null,
cod int
);
create table tbl_cliente(
id int primary key identity (1,1),
nome nvarchar (100) not null,
cpf varchar (11),
rg varchar (9)

);

create table tbl_vda (
id int primary key identity (1,1),
data date,
id_cli int,
vlr float 
);
create table tbl_prod_vendido (
id int primary key identity (1,1),
id_vda int,
id_prod int,
qtd int 

);


go

alter table tbl_prod_vendido
add constraint FK_vda_prod_vendido
foreign key (id_vda)references tbl_vda(id),
foreign key (id_prod)references tbl_cad_prod(id)

alter table tbl_vda
add constraint FK_cli_vda
foreign key (id_cli) references tbl_cliente(id)


insert into tbl_cliente values ('Wellington','23515415485','121545235');
