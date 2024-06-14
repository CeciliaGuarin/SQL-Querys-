--CAST PERMITE A ALTERA��O DO TIPO DE DADO 
SELECT 'O livro ' + Titulo_Livro + ' custa ' + CAST(Preco_Livro AS VARCHAR(5))
FROM PDI..TBL_LIVROS

SELECT 'O livro ' + Titulo_Livro + ' foi publicado em ' + CAST(Data_Pub AS VARCHAR(12))
FROM PDI..TBL_LIVROS 

--COVERT PERMITE AL�M DA ALTERA��O DE TIPO A ADI��O DO ESTILO DE EXIBICAO DO VALOR 
SELECT 'O livro ' + Titulo_Livro + ' custa ' + CONVERT(VARCHAR(5), Preco_Livro, 103)
FROM PDI..TBL_LIVROS

SELECT 'O livro ' + Titulo_Livro + ' foi publicado em ' + CONVERT(VARCHAR(12), Data_Pub, 103)
FROM PDI..TBL_LIVROS