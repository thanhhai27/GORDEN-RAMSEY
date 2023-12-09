-- Menu
CREATE VIEW Menu
AS
SELECT * FROM FOODANDDRINK AS F
WHERE F.TINHTRANG = 'Con ban';
GO

SELECT * FROM Menu;
GO

CREATE TRIGGER trig_update_food_and_drink ON FOODANDDRINK
INSTEAD OF UPDATE 
AS
BEGIN
	DECLARE @version INT, 
			@ten VARCHAR(100), 
			@gia BIGINT, 
			@nguyenlieu VARCHAR(100), 
			@mota VARCHAR(100), 
			@ngaythem DATE, 
			@tinhtrang VARCHAR(100)
	SELECT @ten = TEN, @gia = GIA	
	FROM inserted	
	IF UPDATE (GIA)
	BEGIN
		
	END
END