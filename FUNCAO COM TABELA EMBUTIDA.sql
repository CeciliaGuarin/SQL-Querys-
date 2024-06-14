CREATE FUNCTION RETORNA_ITENS (@Valor Real)
RETURNS TABLE
AS RETURN(
SELECT 
Titulo_Livro,
Nome_Autor,
Nome_Editora
FROM TBL_LIVROS AS LIVRO
INNER JOIN TBL_AUTORES AS AUTORES ON (LIVRO.ID_Autor = AUTORES.ID_Autor)
INNER JOIN TBL_EDITORAS AS EDITORAS ON (LIVRO.ID_Editora = EDITORAS.ID_Editora)
WHERE LIVRO.Preco_Livro > @Valor
)

------------------------------------------------------------------------------
SELECT * FROM RETORNA_ITENS (30.00)