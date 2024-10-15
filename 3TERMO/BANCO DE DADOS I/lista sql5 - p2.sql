use fabrica;

select * from veiculo
where dat_ano_fabric_veic not in (2014)
order by des_fabric_veic;

select * from veiculo
where dat_ano_fabric_veic not in (2014 and 2017)
and (des_valor_veic <= 60000);

select des_fabric_veic, dat_ano_fabric_veic from veiculo
where des_fabric_veic LIKE ("H%");

select distinct des_fabric_veic from veiculo
order by des_fabric_veic DESC;

select avg(des_valor_veic) as Media_Fabricante from veiculo
where des_fabric_veic LIKE ("Hyundai");

select distinct count(cod_veic) as Total_Registro from veiculo;

select sum(des_valor_veic) as Soma_SP from veiculo
where des_cidade_veic like ("São Paulo");

select max(des_valor_veic) as maior_valor_veiculo from veiculo;

select min(dat_ano_fabric_veic) as menor_ano_fabricacao from veiculo;