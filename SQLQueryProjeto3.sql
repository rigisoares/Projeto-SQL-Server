USE PROJETO

/* REALIZANDO EXTRA��O DE DADOS DO BANCO */

SELECT NOME, SEXO
FROM CLIENTE

SELECT NOME AS NOME_CLIENTE, SEXO AS SEXO_CLIENTE, GETDATE() AS DATE_HOJE
FROM CLIENTE

SELECT COUNT(*) AS QUANTIDADE
FROM CLIENTE

SELECT COUNT(*) AS QTD_TELEFONE
FROM TELEFONE

/* UTILIZA��O DE PROJE��ES COM AGRUPAMENTO */

SELECT SEXO, COUNT(*) AS QTD
FROM CLIENTE
GROUP BY SEXO

SELECT * FROM CLIENTE

/* INSERIR DADO SUPLEMENTAR NO BANCO CLIENTE, ENDERE�O E TELEFONE */

USE PROJETO

INSERT INTO CLIENTE VALUES('CARLOS MAGNO','M','carlosm@yahoo.com.br','487149526','2020/03/08')

INSERT INTO ENDERECO VALUES('RUA ANTONIO, 180','JD PIRAPOR','S�O PAULO','SP',5)

INSERT INTO TELEFONE VALUES('CEL','9971495082','5')
INSERT INTO TELEFONE VALUES('CEL','995821142','5')

SELECT * FROM CLIENTE

SELECT * FROM ENDERECO

SELECT * FROM TELEFONE

/* PROJE��O E JUN��O DE 2 TABELAS */

SELECT NOME, SEXO, CIDADE, GETDATE() AS DATA_HOJE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE

SELECT NOME, SEXO, BAIRRO, CIDADE, GETDATE() AS DATA_HOJE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE

SELECT NOME, SEXO, CIDADE, GETDATE() AS DATA_HOJE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'

SELECT * FROM CLIENTE


