USE ONLINE_SHOP
GO
	IF OBJECT_ID('uspCau1','p') IS NOT NULL
		DROP PROC uspCau1
GO
	CREATE PROC uspCau1
		@a float,
		@b float,
		@kq float OUT
AS
	SET @kq = (@a + @b)
GO
	DECLARE @kq float = 0, @a float = 2.3, @b float = 2.2
EXEC uspCau1 @a, @b, @kq OUT
PRINT CAST(@a AS varchar) + ' + ' + CAST(@b AS varchar) + ' = ' + CAST(@kq AS varchar)

