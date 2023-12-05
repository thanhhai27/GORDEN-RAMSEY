CREATE DATABASE BTL2
GO
USE BTL2
GO

CREATE TABLE KHACHHANG
(
    CCCD VARCHAR(100) PRIMARY KEY,
    HOTEN VARCHAR(100) NOT NULL ,
    GIOITINH VARCHAR(100) NOT NULL,
    NGAYSINH DATE NOT NULL,
    SODIENTHOAI VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    DIEMTICHLUY INT NOT NULL,
    SONHA INT NOT NULL ,
    DUONG VARCHAR(100) NOT NULL,
    XAPHUONG VARCHAR(100) NOT NULL,
    QUANHUYEN VARCHAR(100) NOT NULL,
    TINHTHANHPHO VARCHAR(100) NOT NULL
)
CREATE TABLE SDTKHACHHANG
(
    CCCDKH VARCHAR(100) PRIMARY KEY,
    SDT VARCHAR(100) NOT NULL,
    CONSTRAINT FK_SDTKHACHHANG FOREIGN KEY(CCCDKH) REFERENCES KHACHHANG(CCCD)
)

CREATE TABLE TAIKHOAN
(
    MATAIKHOAN VARCHAR(100) PRIMARY KEY,
    TENDANGNHAP VARCHAR(100) NOT NULL,
    MATKHAU VARCHAR(100) NOT NULL,
    CCCD VARCHAR(100),
    CONSTRAINT FK_TAIKHOAN FOREIGN KEY (CCCD) REFERENCES KHACHHANG(CCCD)
)

CREATE TABLE VOUCHER
(
    MAVOUCHER VARCHAR(100) PRIMARY KEY ,
    TANGMON VARCHAR(100),
    QUATANG VARCHAR(100),
    GIAMGIATHEOTIEN VARCHAR(100),
    GIAMGIATHEOPHANTRAM VARCHAR(100),
    NGAYBATDAU DATETIME NOT NULL,
    NGAYHETHAN DATETIME NOT NULL,
)

CREATE TABLE FOODANDDRINK
(
    TEN VARCHAR(100),
    VERSION VARCHAR(100),
    GIA VARCHAR(100) NOT NULL,
    NGUYENLIEU VARCHAR(100) NOT NULL,
    MOTA VARCHAR(100) NOT NULL,
    NGAYTHEM DATE,
    TINHTRANG VARCHAR(100),
    YEUTHICH VARCHAR(100),
    CONSTRAINT PK_FOODANDDRINK PRIMARY KEY (TEN,VERSION)
)

CREATE TABLE NHANVIEN
(
    MANHANVIEN VARCHAR(100) PRIMARY KEY,
    HOTEN VARCHAR(100) NOT NULL,
    GIOITINH VARCHAR(100) NOT NULL,
    NGAYSINH DATE NOT NULL,
    DIACHI VARCHAR(1000) NOT NULL,
    NGAYBATDAULAM DATE NOT NULL,
    TKNGANHANG VARCHAR(100) NOT NULL,
    BANGCAP VARCHAR(100),
    LUONGTHEOTHANG BIGINT,
    LUONGTHEOGIO BIGINT ,
    MANVQUANLY VARCHAR(100),
    CONSTRAINT FK_NHANVIEN FOREIGN KEY (MANVQUANLY) REFERENCES NHANVIEN(MANHANVIEN)
)

CREATE TABLE PHUCVU
(
    MANHANVIEN VARCHAR(100) PRIMARY KEY,
    CONSTRAINT FK_PHUCVU FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
)


CREATE TABLE DAUBEP
(
    MANHANVIEN VARCHAR(100) PRIMARY KEY,
    CONSTRAINT FK_DAUBEP FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
)


CREATE TABLE THUNGAN
(
    MANHANVIEN VARCHAR(100) PRIMARY KEY,
    CONSTRAINT FK_THNGAN FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
)


CREATE TABLE TTLIENHE
(
    MANHANVIEN VARCHAR(100),
    EMAIL VARCHAR(100) NOT NULL,
    SDT VARCHAR(100) NOT NULL,
    CONSTRAINT PK_TTLIENHENV PRIMARY KEY(MANHANVIEN),
    CONSTRAINT FK_TTLIENHE FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
)

CREATE TABLE MONAN
(
    TEN VARCHAR(100),
    VERSION VARCHAR(100),
    CACHCHEBIEN VARCHAR(1000) NOT NULL,
    CANHBAODIUNG VARCHAR(100),
    CONSTRAINT PK_MONAN PRIMARY KEY(TEN,VERSION)
    CONSTRAINT FK_MONAN2 FOREIGN KEY (TEN,VERSION) REFERENCES FOODANDDRINK(TEN,VERSION)
)


CREATE TABLE DOUONG
(
    TEN VARCHAR(100) ,
    VERSION VARCHAR(100) ,
    XUATXU VARCHAR (100) NOT NULL,
    CONSTRAINT PK_DOUONG PRIMARY KEY(TEN,VERSION)
    CONSTRAINT FK_DOUONG2 FOREIGN KEY (TEN,VERSION) REFERENCES FOODANDDRINK(TEN,VERSION)
)

CREATE TABLE PHONG
(
    SOPHONG INT PRIMARY KEY,
    TINHTRANG VARCHAR(100) NOT NULL,
    SUCCHUA INT NOT NULL,
    LOAI VARCHAR(100) NOT NULL
)


CREATE TABLE BAN
(
    SOBAN INT,
    SOPHONG INT,
    TINHTRANG VARCHAR(100) NOT NULL,
    SUCCHUA VARCHAR(100) NOT NULL,
    CONSTRAINT PK_BAN PRIMARY KEY(SOBAN,SOPHONG)
)


CREATE TABLE DONHANG
(
    MADONHANG VARCHAR(100) PRIMARY KEY,
    SOBAN INT NOT NULL,
    SOPHONG INT NOT NULL,
    CCCD_KH VARCHAR(100) NOT NULL,
    TRANGTHAI VARCHAR(100),
    NGAYDAT DATE ,
    NGAYGIAO DATE,
    DIACHI VARCHAR(100),
    CONSTRAINT FK_DH1 FOREIGN KEY(CCCD_KH) REFERENCES KHACHHANG(CCCD),
    CONSTRAINT FK_DH2 FOREIGN KEY(SOBAN,SOPHONG) REFERENCES BAN(SOBAN,SOPHONG)
)

CREATE TABLE HOADON
(
    MAHOADON VARCHAR(100) PRIMARY KEY,
    NGAYTAOHDON DATE,
    TONGTIEN BIGINT,
    MAVOUCHER VARCHAR(100),
    PTTHANHTOAN VARCHAR(100),
    MADONHANG VARCHAR(100),
    CONSTRAINT FK_HOADON1 FOREIGN KEY(MAVOUCHER) REFERENCES VOUCHER(MAVOUCHER),
    CONSTRAINT FK_HOADON2 FOREIGN KEY(MADONHANG) REFERENCES DONHANG(MADONHANG)
)

CREATE TABLE DONVIVANCHUYEN
(
    MADONVI VARCHAR(100)  PRIMARY KEY,
    TENDONVI VARCHAR(100) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    SONHA INT NOT NULL,
    DUONG VARCHAR(100) NOT NULL,
    XAPHUONG VARCHAR(100) NOT NULL,
    QUANHUYEN VARCHAR(100) NOT NULL,
    TINHTHANHPHO VARCHAR(100) NOT NULL,
)


CREATE TABLE PHUCVU_PHONG
(
    MANVPHUCVU VARCHAR(100),
    SOPHONG INT NOT NULL,
    THOIGIAN INT NOT NULL,
    CONSTRAINT PK_PHUCVU_PHONG PRIMARY KEY(MANVPHUCVU,SOPHONG),
    CONSTRAINT FK_MANVPHUCVU FOREIGN KEY(MANVPHUCVU) REFERENCES PHUCVU(MANHANVIEN),
    CONSTRAINT FK_SOPHONG FOREIGN KEY(SOPHONG) REFERENCES PHONG(SOPHONG)
)


CREATE TABLE CHEBIEN
(
    TEN VARCHAR(100),
    VERSION VARCHAR(100),
    MANVDAUBEP VARCHAR(100) ,
    TENDAUBEP VARCHAR(100) NOT NULL,
    CONSTRAINT PK_CHEBIEN PRIMARY KEY (TEN,VERSION,MANVDAUBEP),
    CONSTRAINT FK_TENMON FOREIGN KEY (TEN,VERSION) REFERENCES MONAN(TEN,VERSION),
    CONSTRAINT FK_MANVDAUBEP FOREIGN KEY (MANVDAUBEP) REFERENCES DAUBEP(MANHANVIEN)
)

CREATE TABLE VANCHUYEN
(
    MDH VARCHAR(100),
    MADVVANCHUYEN VARCHAR(100) NOT NULL,
    SHIPPERNAME VARCHAR(100) NOT NULL,
    SDT VARCHAR(100) NOT NULL,
    MAVANDON VARCHAR(100) NOT NULL,
    CONSTRAINT PK_VANCHUYEN PRIMARY KEY(MDH,MADVVANCHUYEN),
    CONSTRAINT FK_VANCHUYEN_MDH FOREIGN KEY(MDH) REFERENCES DONHANG(MADONHANG),
    CONSTRAINT FK_DVVANCHUYEN FOREIGN KEY(MADVVANCHUYEN) REFERENCES DONVIVANCHUYEN(MADONVI)
)


CREATE TABLE SDTDVVC
(
    MADONVI VARCHAR(100),
    SDT VARCHAR(100) NOT NULL,
    CONSTRAINT PK PRIMARY KEY (MADONVI),
    CONSTRAINT FK FOREIGN KEY (MADONVI) REFERENCES DONVIVANCHUYEN(MADONVI)
)

CREATE TABLE FD_DH
(
    TEN VARCHAR(100) ,
    VERSION VARCHAR(100) ,
    MDH VARCHAR(100) ,
    GIA BIGINT NOT NULL,
    SOLUONG INT NOT NULL,
    CONSTRAINT PK_FD_DH PRIMARY KEY (TEN,VERSION,MDH),
    CONSTRAINT FK_FD_DH_TENMON FOREIGN KEY(TEN,VERSION) REFERENCES MONAN(TEN,VERSION),
    CONSTRAINT FK_FD_DH_MDH FOREIGN KEY(MDH) REFERENCES DONHANG(MADONHANG)
)


CREATE TABLE FD_VOUCHER_APDUNG
(
    TEN VARCHAR(100),
    VERSION VARCHAR(100),
    MAVOUCHER VARCHAR(100),
    SOLUONG INT NOT NULL,
    CONSTRAINT PK_FD_VOUVHER_APDUNG PRIMARY KEY (TEN,VERSION,MAVOUCHER),
    CONSTRAINT FK_FD_VOUCHER_APDUNG_TENMON FOREIGN KEY (TEN,VERSION) REFERENCES MONAN(TEN,VERSION),
    CONSTRAINT FK_FD_VOUCHER_APDUNG_MAVOUCHER FOREIGN KEY (MAVOUCHER) REFERENCES VOUCHER(MAVOUCHER)
)


CREATE TABLE FD_VOUCHER_TANG
(
    TEN VARCHAR(100),
    VERSION VARCHAR(100),
    MAVOUCHER VARCHAR(100),
    SOLUONG INT NOT NULL ,
    CONSTRAINT PK_FD_VOUCHER_TANG PRIMARY KEY(TEN,VERSION,MAVOUCHER),
    CONSTRAINT FK_FD_VOUVHER_TANG_TENMON FOREIGN KEY(TEN,VERSION) REFERENCES MONAN(TEN,VERSION),
    CONSTRAINT FK_FD_VOUVHER_TANG_MAVOUCHER FOREIGN KEY(MAVOUCHER) REFERENCES VOUCHER(MAVOUCHER)
)
