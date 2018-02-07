select * from Estado
select * from Regiao

insert into Regiao (RegiaoID, nome,clima) values (1, 'Sul', 'frio')
insert into Regiao (RegiaoID, nome,clima) values (2, 'Norte', 'quente')
insert into Regiao (RegiaoID, nome,clima) values (3, 'Sudeste', 'doido')
insert into Estado (EstadoID, RegiaoID, nome, descri�ao,cidade) values (1,3,'S�o Paulo','terra das garoa','sao �ulo')
insert into Estado (EstadoID, RegiaoID, nome, descri�ao,cidade) values (2,3,'S�o Paulo','terra das garoa','ribeirao pires')
insert into Estado (EstadoID, RegiaoID, nome, descri�ao,cidade) values (3,3,'S�o Paulo','terra das garoa','ribeirao Preto')

update Estado set nome='paraiba' where EstadoID=1
update Estado set descri�ao ='terra da seca ' where EstadoID=1  

delete from Estado where EstadoID=1   

select r.nome from Regiao as r 
inner join Estado as e on r.RegiaoID=e.RegiaoID 

