EXECUTE LISTA_LIVROS
---------------------------------------------------
CREATE PROCEDURE LISTA_LIVROS
AS
SELECT 
Titulo_Livro,
ISBN,
CONCAT('R$', + CAST(Preco_Livro AS VARCHAR(5))) AS Preco_Livro,
CONVERT(VARCHAR(12), Data_Pub, 103) AS Data_Pub,
CONCAT(Sobrenome_Autor, + ', ', + Nome_Autor) AS Nome_Autor,
Nome_Editora,
Nome_Genero
FROM TBL_LIVROS AS LIVRO
INNER JOIN TBL_AUTORES AS AUTORES ON (LIVRO.ID_Autor = AUTORES.ID_Autor)
INNER JOIN TBL_EDITORAS AS EDITORAS ON (LIVRO.ID_Editora = EDITORAS.ID_Editora)
INNER JOIN TBL_GENEROS AS GENEROS ON (LIVRO.ID_Genero = GENEROS.ID_Genero)
