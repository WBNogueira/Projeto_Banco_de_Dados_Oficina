-- Algumas consultas no Banco de Dados oficina

use oficina;

select * from clients;

-- Ver os clientes PF:
select * from clients where cpf <> 'null';

-- Ver os clientes PJ:
select * from clients where cnpj <> 'null';

-- Ordem de serviço por cliente e ordenado por nome:
select idClient, name as Nome, idOrder as num_Ordem, serviceValue as Valor, serviceStatus as Status
from clients, orders
where idClient = idOrderClient
order by name;

-- Ordem de serviço por cliente e ordenado por nome utilizando 'inner join':
select idClient, name as Nome, idOrder as num_Ordem, serviceValue as Valor, serviceStatus as Status 
from clients inner join orders on idClient = idOrderClient
order by name;

-- Ordem de serviço por cliente com nome da equipe de mecânicos e ordenado por nome:
select idClient, name as Nome, idOrder as num_Ordem, serviceValue as Valor, serviceStatus as Status, teamName as Equipe_Mecanica
from clients 
inner join orders on idClient = idOrderClient
inner join teammechanics on idTeam = idOrderTeam
order by name;

-- Quem são os mecânicos de cada time?
select name as Nome_Mecânico, specialty as Especialidade, teamName as Nome_time, address as Endereço
from mechanic
inner join teammechanics on idTeam = idMechanicTeam
order by name;

-- Quantos serviços tem cada time?
select teamName as Nome_equipe, count(idOrderTeam) as Qtde_serviço
from teammechanics
inner join orders on idOrderTeam = idTeam
group by teamName;

-- Quantos serviços tem cada time utilizando 'having?
select teamName as Nome_equipe, count(idOrderTeam) as Qtde_serviço
from teammechanics
inner join orders on idOrderTeam = idTeam
group by teamName 
having count(idOrderTeam) >= 2;

-- Quais serviços utilizados no pedido?
select o.idOrder, o.IdOrderClient, serviceType as Tipo_Serviço, valueService as Valor_Serviço
from orders o
inner join (orderTable t inner join serviceTable s on s.idTable = t.idTable) on t.idOrder = o.idOrder
group by o.IdOrderClient
order by o.idOrder;

-- Quais as peças utilizadas e em qual pedido?
select * from orders o
inner join (carpartorders c inner join carpart p on p.idCarpart = c.idCarpart) on c.idOrder = o.idOrder
order by o.IdOrderClient;



