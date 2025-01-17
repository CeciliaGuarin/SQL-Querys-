--CREATE DATABASE PDI
/*
USE PDI
CREATE TABLE TBL_AUTORES
(
ID_Autor SMALLINT,
Nome_Autor VARCHAR(50) NOT NULL,
Sobrenome_Autor VARCHAR(60)
CONSTRAINT PK_ID_Autor PRIMARY KEY (ID_Autor)
)
*/
/*
USE PDI
CREATE TABLE TBL_EDITORAS 
(
ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR(50) NOT NULL
)
*/
/*
USE PDI
CREATE TABLE TBL_LIVROS
(
ID_Livro SMALLINT IDENTITY(100, 1),
Nome_Livro VARCHAR(50) NOT NULL,
ISBN VARCHAR(30) NOT NULL UNIQUE,
ID_Autor SMALLINT NOT NULL,
Data_Pub DATE NOT NULL,
Preco_Livro MONEY NOT NULL
CONSTRAINT PK_ID_Livro PRIMARY KEY (ID_Livro)
CONSTRAINT FK_ID_Autor FOREIGN KEY (ID_Autor)
REFERENCES TBL_AUTORES (ID_Autor) ON DELETE CASCADE
)
*/
--SP_HELP TBL_AUTORES;
--SP_HELP TBL_EDITORAS;
--SP_HELP TBL_LIVROS;