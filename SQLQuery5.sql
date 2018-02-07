select * from Estado
select * from Regiao

insert into Regiao (RegiaoID, nome,clima) values (1, 'Sul', 'frio')
insert into Regiao (RegiaoID, nome,clima) values (2, 'Norte', 'quente')
insert into Regiao (RegiaoID, nome,clima) values (3, 'Sudeste', 'doido')
insert into Estado (EstadoID, RegiaoID, nome, descriçao,cidade) values (1,3,'São Paulo','terra das garoa','sao áulo')
insert into Estado (EstadoID, RegiaoID, nome, descriçao,cidade) values (2,3,'São Paulo','terra das garoa','ribeirao pires')
insert into Estado (EstadoID, RegiaoID, nome, descriçao,cidade) values (3,3,'São Paulo','terra das garoa','ribeirao Preto')

update Estado set nome='paraiba' where EstadoID=1
update Estado set descriçao ='terra da seca ' where EstadoID=1  

delete from Estado where EstadoID=1   

select r.nome from Regiao as r 
inner join Estado as e on r.RegiaoID=e.RegiaoID 

