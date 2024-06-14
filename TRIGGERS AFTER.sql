CREATE TRIGGER INSERCAO1
ON TBL_AUTORES
AFTER INSERT 
AS 
PRINT 'Autor(es) adicionado(s) com sucesso!'

INSERT INTO TBL_AUTORES (ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES (10, 'Fulano', 'Silva')