--FUNCTION

--CREATE FUNCTION REVIEW_MEDIA (@ID_Livro SMALLINT)
--RETURNS REAL
--AS BEGIN
--DECLARE @Media REAL
--SELECT @Media = (REVIEW1 + REVIEW2 + REVIEW3 + REVIEW4 + REVIEW5)/5
--FROM PDI..TBL_REVIEW
--WHERE ID_Livro = @ID_Livro
--RETURN @Media
--END

SELECT DBO.REVIEW_MEDIA (103)