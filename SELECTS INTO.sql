USE PDI

SELECT 
Titulo_Livro,
ISBN
INTO Teste1
FROM TBL_LIVROS

SELECT * FROM Teste1

SELECT 
Titulo_Livro,
ISBN,
ID_Livro
INTO Teste2
FROM TBL_LIVROS
WHERE ID_Livro = 101 OR ID_Livro = 104

SELECT * FROM Teste2