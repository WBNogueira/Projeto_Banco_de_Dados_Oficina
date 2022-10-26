-- Criação do Banco de Dados e tabelas para Oficina Mecânica

create database oficina;

use oficina;

create table clients(
	idClient int auto_increment primary key,
    name varchar(45) not null,
    cpf char(11),
    cnpj char(14),
    address varchar(255),
    constraint unique_cpf_client unique (cpf),
    constraint unique_cnpj_client unique (cnpj)
);

create table teamMechanics(
	idTeam int auto_increment primary key,
    teamName varchar(45) not null
);

create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    idOrderTeam int,
    issueDate date,
    conclusionDate date,
    deliveryDate date,
    serviceValue float,
    serviceStatus enum('Em analise', 'Aguardando aprovação', 'Não aprovado', 'Em andamento', 'Finalizado') default 'Em analise',
    constraint fk_order_client foreign key (idOrderClient) references Clients(idClient),
    constraint fk_order_team foreign key (idOrderTeam) references teamMechanics(idTeam)
);

create table mechanic(
	idMechanic int auto_increment primary key,
    idMechanicTeam int,
    name varchar(45) not null,
    cpf char(11) not null,
    address varchar(255),
    specialty ENUM('Mecânica geral', 'Troca de óleo', 'Freios', 'Suspensão', 'Transmissão', 'Injeção eletrônica') default 'Mecânica geral',
    constraint unique_cpf_mechanic unique (cpf),
    constraint fk_mechanic_team foreign key (idMechanicTeam) references teamMechanics (idTeam)
);

create table carpart(
	idCarpart int auto_increment primary key,
    nameCarpart varchar(45) not null,
    valueCarpart float not null
);

create table carpartorders(
	idCarpart int,
    idOrder int,
    constraint fk_carpartorders_carpart foreign key (idCarpart) references carpart (idCarpart),
    constraint fk_carpartorders_orders foreign key (idOrder) references orders (idOrder)
);

create table servicetable(
	idTable int auto_increment primary key,
    serviceType ENUM('Mecânica simples', 'Mecânica difícil', 'Freios', 'Suspensão', 'Injeção eletrônica', 'Transmissão') default 'Mecânica simples',
    valueService float not null
);

create table ordertable(
	idOrder int,
    idTable int,
    constraint fk_ordertable_orders foreign key (idOrder) references orders (idOrder),
    constraint fk_ordertable_servicetable foreign key (idTable) references servicetable (idTable)
);


