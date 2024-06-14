/*
ALTER DATABASE PDI
SET RECURSIVE_TRIGGERS ON

CREATE TABLE TBL_TRIGGER_RECURSIVO
(
CODIGO INT PRIMARY KEY
)

SELECT * FROM TBL_TRIGGER_RECURSIVO

*/

CREATE TRIGGER TRIGGER_REC ON TBL_TRIGGER_RECURSIVO 
AFTER INSERT
AS 
DECLARE @COD INT
SELECT
@COD = MAX(CODIGO)
FROM TBL_TRIGGER_RECURSIVO
IF @COD < 10
	BEGIN
		INSERT INTO TBL_TRIGGER_RECURSIVO 
		SELECT MAX(CODIGO)+1 
		FROM TBL_TRIGGER_RECURSIVO
	END
ELSE
	BEGIN
		PRINT 'TRIGGER RECURSIVO FINALIZADO'
	END
	
--------------------------------------------------------------

INSERT INTO TBL_TRIGGER_RECURSIVO (CODIGO)
VALUES (1)