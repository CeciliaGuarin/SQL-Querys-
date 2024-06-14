USE PDI
SELECT 
Titulo_Livro,
ISBN,
Preco_Livro,
Data_Pub,
Sobrenome_Autor,
Nome_Autor,
Nome_Editora,
Nome_Genero
FROM TBL_LIVROS AS LIVRO
INNER JOIN TBL_AUTORES AS AUTORES ON (LIVRO.ID_Autor = AUTORES.ID_Autor)
INNER JOIN TBL_EDITORAS AS EDITORAS ON (LIVRO.ID_Editora = EDITORAS.ID_Editora)
INNER JOIN TBL_GENEROS AS GENEROS ON (LIVRO.ID_Genero = GENEROS.ID_Genero)