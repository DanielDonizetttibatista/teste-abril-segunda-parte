select * from Rec.Opera
select * from Rec.Telefone
select * from Rec.CompraCredito

select sum ( valor ) as result from rec.CompraCredito group by TelefoneID 

select valor from Rec.CompraCredito where formapagamentoID=1