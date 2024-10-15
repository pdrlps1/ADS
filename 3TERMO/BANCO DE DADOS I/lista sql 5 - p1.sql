create database FABRICA;

use FABRICA;

CREATE TABLE VEICULO (
    cod_veic INT PRIMARY KEY,
    des_veic VARCHAR(40),
    des_fabric_veic VARCHAR(40),
    des_valor_veic DECIMAL(10, 2),
    dat_ano_fabric_veic INT,
    dat_cadast_veic DATE,
    des_cidade_veic VARCHAR(40),
    sta_ativ_desat_veic CHAR(1)
);

INSERT INTO VEICULO (cod_veic, des_veic, des_fabric_veic, des_valor_veic, dat_ano_fabric_veic, dat_cadast_veic, des_cidade_veic, sta_ativ_desat_veic) VALUES
(1, 'Civic', 'Honda', 87000.00, 2017, '2017-09-14', 'Ubatuba', 'A'),
(2, 'Corolla', 'Toyota', 99000.00, 2007, '2010-03-27', 'Ribeirão Preto', 'A'),
(4, 'Captur', 'Renault', 87000.00, 2017, '2017-10-24', 'Florianópolis', 'A'),
(5, 'Hilux', 'Toyota', 72000.00, 2000, '2016-02-10', 'São Paulo', 'A'),
(6, 'CRV', 'Honda', 65000.00, 2012, '2017-02-15', 'Fortaleza', 'A'),
(9, 'C3', 'Citroen', 40000.00, 2014, '2015-11-19', 'Sertãozinho', 'A'),
(10, 'Fox', 'Wolksvagem', 19000.00, 2001, '2001-09-11', 'Rio de Janeiro', 'D'),
(11, 'HB20', 'Hyundai', 41000.00, 2014, '2017-01-13', 'Ubatuba', 'A'),
(12, 'Fusion', 'Ford', 49000.00, 2007, '2016-04-25', 'Vitória', 'A'),
(14, 'Elantra', 'Hyundai', 35000.00, 2010, '2011-06-09', 'Ribeirão Preto', 'A'),
(27, 'City', 'Honda', 48000.00, 2014, '2015-11-27', 'Fortaleza', 'A'),
(28, 'ix35', 'Hyundai', 51000.00, 2013, '2016-07-08', 'Campinas', 'A'),
(29, 'Fiesta', 'Ford', 17000.00, 2009, '2010-08-30', 'Ribeirão Preto', 'D'),
(30, 'Celta', 'Chevrolet', 14000.00, 2010, '2016-04-21', 'Jundiaí', 'D'),
(51, 'Cruze', 'Chevrolet', 53000.00, 2015, '2017-05-05', 'São Paulo', 'A');

select * from VEICULO
where dat_ano_fabric_veic BETWEEN 2014 AND 2016;

select des_veic, des_fabric_veic, dat_ano_fabric_veic, des_cidade_veic, sta_ativ_desat_veic
from VEICULO
where (des_cidade_veic = "Ribeirão Preto" AND sta_ativ_desat_veic = "A");

select * from VEICULO
where dat_cadast_veic > "2015-11-19";

select cod_veic, des_veic, des_fabric_veic, dat_ano_fabric_veic, sta_ativ_desat_veic from VEICULO
where des_fabric_veic = "Honda" and dat_cadast_veic > "2016-01-01" and dat_ano_fabric_veic between 2015 and 2017;

select cod_veic, des_veic, des_fabric_veic, dat_ano_fabric_veic, des_valor_veic from VEICULO
where dat_ano_fabric_veic = 2017 and des_valor_veic > 80000.00 and sta_ativ_desat_veic NOT LIKE "D";

select des_veic, des_cidade_veic, dat_ano_fabric_veic from VEICULO
where des_fabric_veic = "Hyundai" OR des_fabric_veic = "Toyota" and dat_ano_fabric_veic NOT between 2014 AND 2017;
