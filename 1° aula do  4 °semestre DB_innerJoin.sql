--revisão do 3°semestre

SELECT * FROM Rec.Opera
select * from rec.CompraCredito
select * from rec.Telefone
insert into rec.CompraCredito(compracredID,TelefoneID,formapagamentoID,valor,DataCompra)values(5,3,2,70,01/02/2018)
insert into rec.CompraCredito(compracredID,TelefoneID,formapagamentoID,valor,DataCompra)values(6,2,1,90,01/02/2018)

insert into rec.Opera (OperadoraID,descricao)values (9,'OI')
delete  from rec.Opera where OperadoraID=9

insert into  rec.Telefone(TelefoneID,OperadoraID,numero)values (4,9,949878889)

select max(valor) as valormaior from rec.CompraCredito as cp

inner join rec.Telefone as tel  on OperadoraID=compracredID


 select op.OperadoraID,op.descricao,cp.valor from rec.CompraCredito as cp
  inner join rec.Telefone as tel on tel.TelefoneID=cp.TelefoneID
  inner join rec.Opera as op on op.OperadoraID= tel.OperadoraID
  inner join rec.FormaPagamento as fp on cp.formapagamentoID=fp.FormaPagamentoID
  --   quem vendeu mais?

  
 select op.descricao,sum(cp.valor)as somatotal,max(cp.valor)as valmax
  from rec.CompraCredito as cp
  inner join rec.Telefone as tel on tel.TelefoneID=cp.TelefoneID
  inner join rec.Opera as op on op.OperadoraID= tel.OperadoraID
  inner join rec.FormaPagamento as fp on cp.formapagamentoID=fp.FormaPagamentoID
  group by op.descricao

  having sum(cp.valor)>100

  --toda vez que for group by eu uso having 

