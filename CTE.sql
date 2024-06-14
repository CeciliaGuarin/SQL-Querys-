--CTE
WITH ConsultaCTE (Preco_Livro, Nome_Autor)
AS 
(
SELECT L.Preco_Livro * V.QTD_Livros AS Preco_Livro, A.Nome_Autor
	FROM PDI..TBL_VENDA AS V 
	JOIN PDI..TBL_LIVROS AS L ON V.ID_Livro = L.ID_Livro
	JOIN PDI..TBL_AUTORES AS A ON L.ID_Autor = A.ID_Autor
)


SELECT SUM(Preco_Livro) AS Total_Venda, Nome_Autor
FROM ConsultaCTE
GROUP BY Nome_Autor