-- � a c�difica��o de caracteres em uma ordem padr�o 

--Op��es de agrupamento disponiveis
Select * from fn_helpcollations()

--esquema de cola��o utilizado
Select SERVERPROPERTY('collation') as Colacao
Select DATABASEPROPERTYEX('PDI','collation') 
--Alterar o esquema de agrupamento 
Select DATABASEPROPERTYEX('Teste','collation') 

Alter database Teste
Collate Icelandic_CI_AI

--Select utilizando um agrupamento diferente 

Select * from PDI..TBL_Livros
Order by Titulo_livro
Collate Icelandic_CI_AI