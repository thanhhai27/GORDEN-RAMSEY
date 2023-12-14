CREATE TRIGGER trig_insert_employee ON NHANVIEN
FOR INSERT
AS
BEGIN
    DECLARE @manhanvien VARCHAR(100)

    SELECT @manhanvien = MANHANVIEN
    FROM inserted

    IF (LEFT(@manhanvien, 2) = 'PV')
    BEGIN
        INSERT INTO PHUCVU
        VALUES (@manhanvien)
    END
    ELSE IF (LEFT(@manhanvien, 2) = 'DB')
    BEGIN
        INSERT INTO DAUBEP
        VALUES (@manhanvien)
    END
    ELSE IF (LEFT(@manhanvien, 2) = 'TN')
    BEGIN
        INSERT INTO THUNGAN
        VALUES (@manhanvien)
    END
END

-- Tinh doanh thu theo ngay, theo thang hoac theo nam
CREATE FUNCTION func_revenue (@ngay INT, @thang INT, @nam INT)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @doanhthu BIGINT

    IF (@ngay IS NOT NULL)
    BEGIN
        -- Kiem tra loi
        IF (@thang IS NULL)
        BEGIN
            RETURN 'Ban chua nhap thang'
        END
        IF (@nam IS NULL)
        BEGIN
           RETURN 'Ban chua nhap nam'
        END

        -- Tinh doanh thu theo ngay
        SELECT @doanhthu = SUM(TONGTIEN)
        FROM HOADON
        WHERE DAY(NGAYTAOHDON) = @ngay
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
                RETURN 'Ban chua nhap nam'
            END

            -- Tinh doanh thu theo thang
            SELECT @doanhthu = SUM(TONGTIEN)
            FROM HOADON
            WHERE MONTH(NGAYTAOHDON) = @thang
                AND YEAR(NGAYTAOHDON) = @nam
        END
        ELSE
        BEGIN
            -- Tinh doanh thu theo nam
            SELECT @doanhthu = SUM(TONGTIEN)
            FROM HOADON
            WHERE YEAR(NGAYTAOHDON) = @nam
        END
    END

    RETURN CAST(@doanhthu AS VARCHAR(100))
END