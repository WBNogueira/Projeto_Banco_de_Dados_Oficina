-- Entrada de dados nas tabelas do database oficina

use oficina;

insert into clients (name, cpf,cnpj,address) values
	('Silverio Fernandes',12345678998,null,'Rua Flores, 123 Vila Buarque - São Paulo'),
    ('Luiza Pereira',36985214745,null,'Rua Buenos Aires, 1254 Vila Nivi - São Paulo'),
    ('Comércio de Doces',null,23456654000122,'Av Julio Bueno, 800 Vila Gustavo - São Paulo'),
    ('Panela Velha Restaurante',null,01456852000141,'Av Ataliba, 1246 Paulicéia - São Paulo'),
    ('Roberto Santos',65478932156,null,'Rua Antonio, 589 Vila Medeiros - São Paulo'),
    ('Sandra Rosa',14785265478,null,'Av Andrade, 654 Jd Brasil - São Paulo'),
    ('Antonio Moraes',63472584598,null,'Rua de Baixo, 478 Vila An Antonieta - São Paulo'),
    ('Fernanda de Lima',33322211145,null,'Av Boschetti, 965 Vila Medeiros - São Paulo'),
    ('Pizzaria da Nona',null,01478365000156,'Av Principal, 1245 Jd Sã Paulo - São Paulo'),
    ('Rita de Cassia',96945214326,null,'Rua Maria Candida, 821 Vila Guilherme - São Paulo');
    
    select * from clients;
    
    insert into teammechanics (teamName) values
		('Time Estrela'),
        ('Time Ouro'),
        ('Time Prata'),
        ('Time Bonze'),
        ('Time Losango');
	
    select * from teammechanics;
    
insert into orders (idOrderClient, idOrderTeam, issueDate, conclusionDate, deliveryDate, serviceValue, serviceStatus) values
	(1,3,'2022-10-03','2022-10-11','2022-10-12',950,'Finalizado'),
    (2,5,'2022-10-05','2022-10-05','2022-10-05',340,'Finalizado'),
    (3,1,'2022-10-06',null,null,1050,'Em andamento'),
    (4,1,'2022-10-10',null,null,860,'Aguardando aprovação'),
    (5,2,'2022-10-10',null,null,2010,'Não aprovado'),
    (6,1,'2022-10-20','2022-10-21',null,1050,'Finalizado'),
    (7,4,'2022-10-20','2022-10-21','2022-10-21',700,'Finalizado'),
    (8,4,'2022-10-23',null,null,560,'Em andamento');

select * from orders;

insert into mechanic (idMechanicTeam, name, cpf, address, specialty) values
	(1,'José da Silva',54698721494,'Rua da Lagoa, 2100 Vila Galvão - São Paulo','Troca de óleo'),
    (1,'Paulo Rorigues',61489762432,'Rua Duarte de Azevedo, 522 Santana - São Paulo','Mecânica geral'),
    (1,'Carlos Gonzaga',78975371265,'Rua Eziquiel Freire, 356 Santana - São Paulo','Freios'),
    (1,'João Mineiro',94531422222,'Rua Pastel, 222 Vila Buarque - São Paulo','Transmissão'),
    (1,'Antonio Bambam',85412365466,'Rua Duarte de Azevedo, 522 Santana - São Paulo','Injeção eletrônica'),
    (1,'Wilson Gouvea',75315944422,'Av Japão, 741 Jd Japão - São Paulo','Suspensão'),
    (2,'José da Silva',11122233344,'Rua Batata, 321 Jd São Paulo - São Paulo','Troca de óleo'),
    (2,'Irineo Jorge',22112233211,'Rua da Esquina, 622 Vila Guilherme - São Paulo',default),
    (2,'Milton de Azevedo',77788899966,'Rua João de Oliviera, 214 Mooca - São Paulo','Freios'),
    (2,'Jaime Oshi',33322211144,'Rua Domingues, 659 Vila Constância - São Paulo','Transmissão'),
    (2,'João Carlos',55588866633,'Rua Betioga, 1233 Mooca - São Paulo','Injeção eletrônica'),
    (2,'Vilton Correa',14669452185,'Av Brasil, 789 Jardins - São Paulo','Suspensão'),
    (3,'Rafael',33322244466,'Rua Zilda, 111 Jd Aurora - São Paulo','Troca de óleo'),
    (4,'Eduardo Oliveira',77755544411,'Rua da Noiva, 855 Vila Galvão - São Paulo',default),
    (4,'José Augusto',78314966644,'Rua Tamarataca, 129 Mooca - São Paulo','Suspensão'),
    (5,'Alexandre o Grande',22166577819,'Rua Domingues, 344 Vila Constância - São Paulo','Transmissão'),
    (5,'Dirgo de Oliveira',55566699988,'Av Boschetti, 648 Vila Medeiros - São Paulo','Injeção eletrônica'),
    (3,'Wilsom Machado',61773165444,'Av Julio Buono, 712 Vila Gustavo - São Paulo','Suspensão');
    
select * from mechanic;

insert into carpart (nameCarpart, valueCarpart) values
	('Pastilha de freios',240),
    ('Suspensão VW',1000),
    ('Suspensão GM',1100),
    ('Oleo carter',60),
    ('Correa',40),
    ('Radiador',1500),
    ('Engrengem',900),
    ('Hemocinética',2500);

select * from carpart;

insert into carpartorders (idCarpart, idOrder) values
	(1,7),
    (2,1),
    (3,5),
    (4,5),
    (5,2),
    (6,3),
    (7,4),
    (8,2);
    
select * from carpartorders;

insert into servicetable (serviceType, valueService) values
	('Mecânica simples', 150),
    ('Mecânica difícil', 600),
    ('Freios', 200),
    ('Suspensão', 500),
    ('Injeção eletrônica', 200),
    ('Transmissão', 400);
    
select * from servicetable;
    
insert into ordertable (idOrder, idTable) values
	(1,1),
    (1,5),
    (2,1),
    (3,6),
    (4,4),
    (4,1),
    (5,3),
    (5,2),
    (6,6),
    (6,3),
    (7,4),
    (7,1),
    (8,1),
    (8,3);


    