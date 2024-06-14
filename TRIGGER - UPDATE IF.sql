CREATE TRIGGER AFTER_AUTORES
ON TBL_AUTORES
AFTER INSERT, UPDATE
AS
IF UPDATE(Nome_Autor)
	BEGIN
		PRINT 'O nome do autor foi alterado'
	END
ELSE
	BEGIN
		PRINT 'Nome não modificado'
	END 


INSERT INTO TBL_AUTORES (ID_Autor, Nome_Autor, Sobrenome_Autor)
VALUES (10, 'Fulano', 'Silva')

SELECT * FROM TBL_AUTORES

UPDATE TBL_AUTORES SET Sobrenome_Autor = 'SANTOS' WHERE ID_Autor = 10