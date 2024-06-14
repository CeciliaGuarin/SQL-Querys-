CREATE TRIGGER INSERCAO
ON TBL_EDITORAS
AFTER INSERT 
AS 
PRINT 'Editora(s) adicionada(s) com sucesso!'

CREATE TRIGGER INSERCAO1
ON TBL_AUTORES
AFTER INSERT 
AS 
PRINT 'Autor(es) adicionado(s) com sucesso!'

CREATE TRIGGER INSERCAO2
ON TBL_GENEROS
AFTER INSERT 
AS 
PRINT 'Genero(s) adicionado(s) com sucesso!'

CREATE TRIGGER INSERCAO3
ON TBL_LIVROS
AFTER INSERT 
AS 
PRINT 'Livro(s) adicionado(s) com sucesso!'