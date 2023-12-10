-- Menu
CREATE VIEW Menu
AS
SELECT * FROM FOODANDDRINK AS F
WHERE F.TINHTRANG = 'Con ban';
GO

SELECT * FROM Menu;
GO

CREATE TRIGGER trig_update_food_and_drink ON FOODANDDRINK
FOR UPDATE
AS
BEGIN
    IF UPDATE(GIA)
    BEGIN
        DECLARE @version INT,
                @ten VARCHAR(100),
                @gia BIGINT,
                @loai VARCHAR(100),
                @nguyenlieu VARCHAR(100),
                @mota VARCHAR(100),
                @ngaythem DATE,
                @tinhtrang VARCHAR(100),
                @xuatxu VARCHAR(100),
                @cachchebien VARCHAR(100),
                @canhbaodiung VARCHAR(100)

        SELECT  @ten = TEN
        FROM inserted

        -- Xac dinh loai
        IF (@ten IN 
                    (
                        SELECT TEN
                        FROM MON_AN
                    )
            )
        BEGIN
            SET @loai = 'DO AN'
        END
        ELSE
        BEGIN
            SET @loai = 'DO UONG'
        END

        -- Lay du lieu gia va ngay them cu
        SELECT  @gia = GIA
                @ngaythem = NGAYTHEM
        FROM deleted

        -- Lay du lieu them moi
        SELECT  @nguyenlieu = NGUYENLIEU,
                @mota = MOTA
        FROM inserted

        -- Tinh version
        SET @version = (
                            SELECT MAX(VERSION)
                            FROM FOODANDDRINK
                            WHERE TEN = @ten
                        ) + 1

        -- Thiet lap tinh trang
        SET @tinhtrang = 'Khong ban'

        -- Thiet lap ngay them moi
        UPDATE TABLE FOODANDDRINK
        SET NGAYTHEM = CONVERT(datetime, GETDATE(), 111)
        WHERE TEN = @ten AND TINHTRANG = 'Con ban'

        -- Chen du lieu moi
        INSERT INTO FOODANDDRINK
        VALUES (@ten, @version, @gia, @nguyenlieu, @mota, @ngaythem, @tinhtrang)
        END
    END
END