CREATE database LIVRARIA;
USE LIVRARIA;

drop table livros;
CREATE TABLE LIVROS(
	NOME VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(10),
    EDITORA VARCHAR(30),
    VALOR_LIVRO FLOAT(5,2),
    UF CHAR(2),
    ANO VARCHAR(4)
);

INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('CAVALEIRO REAL','ANA CLAUDIA','F',465,'ATLAS',49.9,'RJ','2009');
INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('SQL PARA LEIGOS','JOAO NUNES','M',450,'ADDISON',98,'SP','2018');
INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('RECEITAS CASEIRAS','CELIA TAVARES','F',210,'ATLAS',45,'RJ','2008');
INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('PESSOAS EFETIVAS','EDUARDO SANTOS','M',390,'BETA',78.99,'RJ','2018');
INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('HABITOS SAUDAVEIS','EDUARDO SANTOS','M',630,'BETA',150.98,'RJ','2019');
INSERT INTO LIVROS(NOME,AUTOR,SEXO,PAGINAS,EDITORA,VALOR_LIVRO,UF,ANO) VALUES('CASA MARROM','HERMES MACEDO','M',250,'BUBBA',60,'MG','2016');

SELECT*FROM LIVROS;
SELECT NOME,EDITORA FROM LIVROS;
SELECT NOME, UF FROM LIVROS WHERE SEXO = 'M';
SELECT NOME,PAGINAS FROM LIVROS WHERE SEXO = 'F';
SELECT VALOR_LIVRO, EDITORA, UF AS ESTADO FROM LIVROS WHERE UF = 'SP';
SELECT AUTOR,ANO, UF AS ESTADO FROM LIVROS WHERE SEXO = 'M' AND UF = 'SP' OR UF = 'RJ';