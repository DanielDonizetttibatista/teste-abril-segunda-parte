select * from dbo.dependentes
select * from dbo.dpartamentos
select * from dbo.funcionaria_cargahoraria
select * from dbo.funcinarios
select * from dbo.Projetos
--populando dados do projeto 
select * from dbo.Projetos
insert into dbo.Projetos (numeroProj,nome,verba,codDep,tipo) values (1,'redes',200.000,1,'implementação de redes rh')
insert into dbo.Projetos (numeroProj,nome,verba,codDep,tipo) values (2,'estrutura',400.000,2,'estrutura do banco de dados')
insert into dbo.Projetos (numeroProj,nome,verba,codDep,tipo) values (3,'redes',50.000,1,'design de moda')

--populando dados carga horaria 
select * from dbo.funcionaria_cargahoraria
insert into dbo.funcionaria_cargahoraria(cpf,numproj,qntdhorastrabalhadas) values (112233,1,33)
insert into dbo.funcionaria_cargahoraria(cpf,numproj,qntdhorastrabalhadas) values (332211,2,55)
insert into dbo.funcionaria_cargahoraria(cpf,numproj,qntdhorastrabalhadas) values (331122,3,100)

--update = alterando dados da tabela
select * from dbo.dependentes
update dbo.dependentes set nome='emael' where nome='joazinho'
update dbo.dependentes set endereço='rua augusta freitas' where codigo=2
update dbo.dependentes set parentesco='cunhada' where codigo=3

select * from dbo.dpartamentos
update dbo.dpartamentos set localização='7°andar' where codigoDep=2
update dbo.dpartamentos set cpf=11223344 where codigoDep=1
update dbo.dpartamentos set cpf=332211 where codigoDep=3


select * from dbo.funcionaria_cargahoraria
update dbo.funcionaria_cargahoraria set numproj=3 where cpf=112233
update dbo.funcionaria_cargahoraria set qntdhorastrabalhadas=97 where cpf=332211
update dbo.funcionaria_cargahoraria set numproj=1 where cpf=331122


select * from dbo.funcinarios
update dbo.funcinarios set nome='Guilherme ' where cpf =112233
update dbo.funcinarios set endereco='Rua peixe pescado pequeno' where cpf=11223344
update dbo.funcinarios set DepID=2 where cpf=332211

select * from dbo.Projetos
update dbo.Projetos set verba=79897 where numeroProj=1
update dbo.Projetos set codDep=3 where numeroProj=3
update dbo.Projetos set nome='balística' where numeroProj=3
 
--delete from table where id=1 por exemplo 


select * from dbo.funcinarios
delete from dbo.funcinarios where DepID=332211


select * from dbo.dependentes
delete from dbo.dpartamentos where cpf=332211

select * from dbo.dpartamentos
delete from dbo.dpartamentos where cpf=332211

select * from dbo.funcionaria_cargahoraria


delete from dbo.funcionaria_cargahoraria where numproj=1

select * from dbo.projetos 
delete from dbo.Projetos where numeroProj=2