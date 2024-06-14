CREATE PROCEDURE sp_LivroValor (
  @Quantidade SMALLINT, @Cod SMALLINT = -10,
  @ID SMALLINT)
AS
  SET NOCOUNT ON
  IF @ID >= 100
    BEGIN
      SELECT Titulo_Livro as Livro, Preco_Livro * @Quantidade AS Preço
      FROM tbl_Livros
      WHERE ID_Livro = @ID
      RETURN 1
    END
  ELSE
RETURN @Cod

-------------------------------------------------------

DECLARE @Codigo INT
EXEC @Codigo = sp_LivroValor @ID = 101, @Quantidade = 10
PRINT @Codigo