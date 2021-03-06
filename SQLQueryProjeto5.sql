/* DELETANDO UM BANCO DE DADOS */

DROP DATABASE CADASTROS

/* CONTINUANDO ELABORA��O DE QUERYS COMPLEXAS */

USE PROJETO

/* QUERY COM MUITOS DADOS DE V�RIAS TABELAS, POR�M SEM FILTRO */

SELECT C.NOME, C.EMAIL, E.RUA, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

SELECT NOME, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE

SELECT * FROM TELEFONE

/* QUERY COM MUITOS DADOS DE V�RIAS TABELAS, COM FILTROS E PONTEIRAMENTO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'

/* QUERY COM MUITOS DADOS DE V�RIAS TABELAS, COM FILTROS E PONTEIRAMENTO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F' AND CIDADE = 'S�O PAULO'

/* TOMAR CUIDADE COM QUERYS QUE USAM TABELA VERDADE, PORQUE FICA BEM CONFUSO QUANDO
SE USA TABELA VERDADE COM V�RIAS CONDI��ES */

/* FUN��O IFNULL 
FUN��O - BLOCO DE PROGRAMA��OP EM SQL - UMA FUN��O PODE TER PAR�METROS OU N�O -
RESUME-SE A UM BLOCO DE C�DIGO QUE RETORNA ALGUMA COISA, CONFORME DEFINIDO NA
PROPRIA FUN��O
*/

SELECT	C.NOME, 
		ISNULL(C.EMAIL,'N�O DECLARADO') AS EMAIL
FROM	CLIENTE C
		INNER JOIN ENDERECO E
ON		C.IDCLIENTE = E.ID_CLIENTE


SELECT * FROM CLIENTE

/* QUERY COM MUITOS DADOS DE V�RIAS TABELAS, COM FILTROS E PONTEIRAMENTO - CRIANDO VIEWS */

CREATE VIEW RELATORIO AS
SELECT C.NOME, C.EMAIL, E.RUA, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

/* EXIBINDO A VIEW */

SELECT * FROM RELATORIO

/* DELETANDO A VIEW */

DROP VIEW RELATORIO

/* CRIANDO NOVAMENTE A VIEW */

CREATE VIEW RELATORIO AS
SELECT	C.NOME,
		ISNULL(C.EMAIL,'N�O DECLARADO') AS "E-MAIL", 
		E.RUA, 
		E.BAIRRO, 
		E.CIDADE, 
		T.TIPO, 
		T.NUMERO
FROM	CLIENTE C
INNER JOIN ENDERECO E
ON		C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON		C.IDCLIENTE = T.ID_CLIENTE

/* EXIBINDO A VIEW */

SELECT * FROM RELATORIO

/* EXIBINDO A VIEW COM FILTRO*/

SELECT * FROM RELATORIO
WHERE TIPO = 'CEL'