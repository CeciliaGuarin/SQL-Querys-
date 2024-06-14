--SUBSELECT
SELECT SUM(SUB.Preco_Livro) AS Total_Venda, A.Nome_Autor
FROM PDI..TBL_AUTORES AS A 
INNER JOIN (SELECT (L.Preco_Livro * V.QTD_Livros) AS Preco_Livro, L.ID_Autor
			FROM TBL_VENDA AS V 
			JOIN TBL_LIVROS AS L ON (V.ID_Livro = L.ID_Livro)
			) AS SUB ON (A.ID_Autor = SUB.ID_Autor)
GROUP BY A.Nome_Autor