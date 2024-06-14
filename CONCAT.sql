Select Nome_Autor + ' ' + Sobrenome_Autor as Nome_Completo From PDI..TBL_AUTORES 

Select 'O autor de '+ Titulo_Livro + ' é ' + Nome_Autor + ' ' + Sobrenome_Autor as Nome_Completo 
From PDI..TBL_LIVROS as L
Join PDI..TBL_AUTORES as A on (L.ID_Autor = A.ID_Autor)