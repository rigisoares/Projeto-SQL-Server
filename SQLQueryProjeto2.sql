USE PROJETO

/* ALTERANDO ESTRUTURA DAS TABELAS DO BANCO */

SELECT * FROM CLIENTE

SELECT NOME, CPF
FROM CLIENTE

/* ALTERA��O DA ESTRUTURA DA TABELA CLIENTE - 
  INCLUS�O DA COLUNA DATA DO CADASTRO */

  SELECT * FROM CLIENTE

ALTER TABLE CLIENTE
ADD DATACADASTRO DATETIME

/* ALTERA��O DA ESTRUTURA DA TABELA CLIENTE - 
  INSER��O DE DADOS NA COLUNA DATA DO CADASTRO */

UPDATE CLIENTE
SET DATACADASTRO = '2020/01/02'
WHERE IDCLIENTE = 1

SELECT * FROM CLIENTE

UPDATE CLIENTE
SET DATACADASTRO = '2020/03/05'
WHERE IDCLIENTE = 2

UPDATE CLIENTE
SET DATACADASTRO = '2020/04/10'
WHERE IDCLIENTE = 3

UPDATE CLIENTE
SET DATACADASTRO = '2020/04/20'
WHERE IDCLIENTE = 4

SELECT * FROM CLIENTE