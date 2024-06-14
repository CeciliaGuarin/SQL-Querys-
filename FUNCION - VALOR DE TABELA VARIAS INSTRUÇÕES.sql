CREATE FUNCTION MULTI_TABELA ()
RETURNS @Valores TABLE
	(
	Titulo_Livro VARCHAR(50),
	Data_Pub DATETIME,
	Nome_Editora VARCHAR(50),
	Preco_Livro MONEY
	)
AS 
BEGIN 
INSERT @Valores (Titulo_Livro, Data_Pub, Nome_Editora, Preco_Livro)
	SELECT L.Titulo_Livro, L.Data_Pub, E.Nome_Editora, L.Preco_Livro
	FROM TBL_LIVROS AS L
	INNER JOIN TBL_EDITORAS AS E ON L.ID_Editora = E.ID_Editora
RETURN
END

---------------------------------------------------------------------

SELECT * FROM MULTI_TABELA()