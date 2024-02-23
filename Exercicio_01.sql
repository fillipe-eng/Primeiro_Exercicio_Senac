CREATE DATABASE Livraria;

CREATE TABLE Livros(
		Nome_Livro VARCHAR(100) NOT NULL,
        Nome_Autor VARCHAR(100) NOT NULL,
        Sexo_Autor CHAR(1) NOT NULL,
        Qtd_Paginas INT(4) NOT NULL,
        Editora VARCHAR(30) NOT NULL,
        Preco FLOAT(4,1) NOT NULL,
        UF_Autor CHAR(2) NOT NULL
);
drop table lIVROS;
INSERT INTO Livros(Nome_Livro, Nome_Autor, Sexo_Autor, Qtd_Paginas, Editora, Preco, UF_Autor)
VALUES	('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ'),
		('SQL para leigos','João Nunes','M',450,'Addison',98,'SP' ),
		('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ'),
		('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ'),
		('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ'),
		('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG'),
		('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES'),
		('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES'),
		('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS'),
		('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP');

-- Retornar todos os dados em uma pesquisa
SELECT 
    *
FROM
    Livros;
    
-- Retornar nome do livro e nome da editora
SELECT 
    Nome_Livro, 
    Editora
FROM
    Livros;
    
-- Retornar nome do livro e UF dos livros publicados por autores do sexo masculino
SELECT 
    Nome_Livro, 
    UF_Autor
FROM
    Livros
WHERE
    Sexo_Autor = 'M';
    
-- Retornar nome do livro e o número de páginas dos livros publicados por autores do sexo feminino
SELECT 
    Nome_Livro, 
    Qtd_paginas
FROM
    Livros
WHERE
    Sexo_Autor = 'F';
    
-- Retornar os valores dos livros das editoras de São Paulo
SELECT 
    *
FROM
    Livros
WHERE
	UF_Autor = 'SP';
    
-- Retornar nome do livro que o valor for maior que 100.00
SELECT 
    Nome_Livro
FROM
    Livros
WHERE
    Preco > 100;
    
-- Retornar autor e nome do livro dos livros com mais de 500 paginas
SELECT 
    Nome_Autor, 
    Nome_Livro
FROM
    Livros
WHERE
    Qtd_Paginas > 500;
    
-- Retornar os dados dos autores do sexo masculino que tiveram livros publicos por São Paulo ou Rio de Janeiro (dica: utilize o operador lógico OR no filtro)
SELECT 
    Nome_Autor, 
    Sexo_Autor
FROM
    Livros
WHERE
    Sexo_Autor = 'M' AND (UF_Autor ='SP' OR UF_Autor ='RJ');