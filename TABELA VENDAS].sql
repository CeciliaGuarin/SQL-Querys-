CREATE TABLE TBL_VENDA 
(
ID_Venda SMALLINT IDENTITY,
QTD_Livros INT,
ID_Livro SMALLINT
CONSTRAINT PK_ID_Venda PRIMARY KEY (ID_Venda)
)

ALTER TABLE TBL_VENDA
ADD CONSTRAINT FK_ID_LIVRO FOREIGN KEY (ID_LIVRO)
REFERENCES TBL_LIVROS (ID_LIVRO)

INSERT INTO TBL_VENDA (QTD_Livros, ID_Livro)
VALUES(5, 101),
(3, 104),
(1, 103),
(2, 102),
(5, 104),
(7, 103),
(10, 102),
(1, 101),
(1, 103),
(5, 101),
(1, 101),
(6, 103),
(4, 104)