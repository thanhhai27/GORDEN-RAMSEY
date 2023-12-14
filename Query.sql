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
    -- Neu xuat hien update o cot GIA -> Tao version moi
    IF UPDATE(GIA)
    BEGIN
        DECLARE @ten VARCHAR(100),
                @version VARCHAR(100),
                @gia BIGINT,
                @nguyenlieu VARCHAR(100),
                @mota VARCHAR(100),
                @ngaythem DATE,
                @tinhtrang VARCHAR(100),

        SELECT  @ten = TEN,
                @version = VERSION,
                @gia = GIA,
                @nguyenlieu = NGUYENLIEU,
                @mota = MOTA,
                @ngaythem = NGAYTHEM,
                @tinhtrang = TINHTRANG
        FROM inserted

        ROLLBACK TRAN


    END
    IF UPDATE(NGUYENLIEU)
END

-- Tinh doanh thu theo ngay, theo thang hoac theo nam
CRETAE FUNCTION func_revenue (@ngay INT, @thang INT, @nam INT)
RETURN BIGINT
AS
BEGIN
    DECLARE @doanhthu BIGINT

    IF (@ngay IS NOT NULL)
    BEGIN
        -- Kiem tra loi
        IF (@thang IS NULL)
        BEGIN
            PRINT('Ban chua nhap thang')
            RETURN
        END
        IF (@nam IS NULL)
        BEGIN
            PRINT('Ban chua nhap nam')
            RETURN
        END

        -- Tinh doanh thu theo ngay
        SELECT @doanhthu = SUM(TONGTIEN)
        FROM HOADON
        WHERE DATE(NGAYTAOHDON) = @ngay
            AND MONTH(NGAYTAOHDON) = @thang
            AND YEAR(NGAYTAOHDON) = @nam
    END
    ELSE
    BEGIN
        IF (@ngay IS NOT NULL)
        BEGIN
            -- Kiem tra loi
            IF (@nam IS NULL)
            BEGIN
                PRINT('Ban chua nhap nam')
                RETURN
            END

            -- Tinh doanh thu theo thang
            SELECT @doanhthu = SUM(TONGTIEN)
            FROM HOADON
            WHERE MONTH(NGAYTAOHDON) = @thang
                AND YEAR(NGAYTAOHDON) = @year
        END
        ELSE
        BEGIN
            -- Tinh doanh thu theo nam
            SELECT @doanhthu = SUM(TONGTIEN)
            FROM HOADON
            WHERE YEAR(NGAYTAOHDON) = @nam
        END
    END

    RETURN @doanhthu
END