INSERT INTO KHACHHANG
VALUES
    ('056434565432', 'Nguyen Thanh Tung', 'Nam', '1994-07-05', 'thanhtung123@gmail.com', 150, 12, 'Dien Bien Phu', 'Phuong 21', 'Quan Binh Thanh', 'TP Ho Chi Minh'),
    ('032435434231', 'Nguyen Thuc Thuy Tien', 'Nu', '1998-08-12', 'ldbl1208@gmail.com', 200, 44, 'Ly Nam De', 'Phuong 7', 'Quan 11', 'TP Ho Chi Minh'),
    ('046454234645', 'Huynh Tran Thanh', 'Nam', '1987-02-05', 'tranthanh111@gmail.com', 500, 15, 'Cach Mang Thang 8', 'Phuong 11', 'Quan 3', 'TP Ho Chi Minh'),
    ('098762345687', 'Vo Vu Truong Giang', 'Nam', '1983-04-20', 'vvtruonggiang1412@gmail.com', 50, 90, 'Ly Nam De', 'Phuong 7', 'Quan 11', 'TP Ho Chi Minh'),
    ('045646756343', 'Phan Thi My Tam', 'Nu', '1981-01-16', 'mytam1001@gmail.com', 666, 10, 'Ly Thuong Kiet', 'Phuong 7', 'Quan 10', 'TP Ho Chi Minh'),
    ('023453562453', 'Nguyen Thi Hoa', 'Nu', '1995-05-31', 'hoaminzy113@gmail.com', 123, 30, 'Su Van Hanh', 'Phuong 12', 'Quan 10', 'TP Ho Chi Minh'),
    ('023453142545', 'Ong Cao Thang', 'Nam', '1986-01-13', 'ongthang99@gmail.com', 589, 83, 'Dien Bien Phu', 'Phuong 15', 'Quan Binh Thanh', 'TP Ho Chi Minh'),
    ('019384583921', 'Nghiem Vu Hoang Long', 'Nam', '1999-03-02', 'mckakanger@gmail.com', 340, 34, 'Ly Nam De', 'Phuong Hoc Mon', 'Quan Hoc Mon', 'TP Ho Chi Minh'),
    ('023929452342', 'Nguyen Khoa Toc Tien', 'Nu', '1989-05-13', 'toctienne123@gmail.com', 104, 11, 'Su Van Hanh', 'Phuong 10', 'Quan 10', 'TP Ho Chi Minh'),
    ('020425929592', 'Phung Thanh Do', 'Nam', '1989-09-12', 'domiximoi100@gmail.com', 129, 99, 'Ngo Gia Tu', 'Phuong 2', 'Quan 10', 'TP Ho Chi Minh')

INSERT INTO TAIKHOAN
VALUES
    ('134135', 'thanhtung123', 'Thanhtung@123', '056434565432'),
    ('235346', 'thuytien109', 'Tien1208', '032435434231'),
    ('314325', 'thanhtran111', '05021987', '046454234645'),
    ('429310', 'giangson001', 'Son123456', '098762345687'),
    ('523634', 'casimytam11', '19810116', '045646756343'),
    ('636241', 'hoaminzy90', 'Hoahoahoa31', '023453562453'),
    ('745634', 'thangcaoong1', 'Thangco123', '023453142545'),
    ('845432', 'mckakalongnger', 'Hoanglong1999', '019384583921'),
    ('913042', 'toctien102', 'Tiengiangtran01', '023929452342'),
    ('103030', 'domixi888', 'Mixifood1209', '020425929592')

INSERT INTO SDTKHACHHANG
VALUES
('056434565432','0193981934'),
('032435434231','0128378239'),
('046454234645','0138798399'),
('098762345687','0728191938'),
('045646756343','0919382772'),
('023453562453','0193837782'),
('023453142545','0298392839'),
('019384583921','0293093982'),
('023929452342','0193928928'),
('020425929592','0198239823')
-- INSERT INTO VOUCHER VALUES
-- ('NH1000K',NULL,NULL,NULL,'1000000','2023-10-20','2023-12-29'),
-- ('NH200XYZ','Sup to yen hat sen,Xuc xich bo Kobe nuong','5 lon bia Heineken',NULL,NULL,'2023-01-02','2023-02-02'),
-- ('NHANTHAGA','Loi vai bo My nuong, Sup miso, Hau chien gion, Bap gio heo xong khoi',NULL,'Giam 500000(Hoa don tren 3)',NULL,'2023-04-10','2023-04-17'),
-- ('NHANUONG','Xoi bo cau, 1 nuoc ep cam, 1 bia Heineken Ha Lan','2 Gau Bong',NULL,'5%',NULL,'2023-11-30','2023-12-5'),
-- ('NHABCDEF',,,,,'2023-12-30','2024-01-01'),
-- ('NH2000K',,,,,'2023-07-09','2023-10-01')

INSERT INTO FOODANDDRINK
VALUES
    ('Sup Hai San', 'Version 1', 150000, 'Tom Alaska, cua Tuyet,rau ngo,toi,hanh tim,nam huong,ca rot,muoi,tieu,ca chua', NULL, NULL),
    ('Gio Heo muoi chien', 'Version 1', 300000, 'Gio heo, muoi, mam, bot ngu vi huong, duong, dau an, giam', NULL, NULL),
    ('Loi vai bo my nuong', 'Version 1', 200000, 'Loi vai bo My, ruou vang do, o liu, khoai tay,giam,dau an,muoi,tieu', NULL, NULL),
    ('Xoi bo cau', 'Version 1', 250000, 'Gao nep, Bo cau, hat sen, Hanh kho,nuoc cot dua,muoi, tieu', NULL, NULL),
    ('Salad ca ngu', 'Version 1',200000, 'Ca ngu, rau xa lach, ca chua, mayonnaise,bo,tuong ot,giam',NULL,NULL),
    ('Khoai tay rocket', 'Version 1',100000,'Khoai tay, dau an,muoi,pho mai',NULL,NULL),
    ('Ca hoi ap chao', 'Version 1',145000,'Ca hoi, dau hao, bo,muoi,tieu,chanh',NULL,NULL ),
    ('Nuoc ep buoi da xanh', 'Version 1',120000,'1/2 Trai buoi da xanh, chanh, da',NULL,NULL ),
    ('Heineken Ha Lan', 'Version 1',70000,'Lua mach,nuoc',NULL,NULL),
    ('Coca Cola', 'Version 1',30000,'Nuoc co ga,huong lieu tu nhien, duong, caffeine',NULL,NULL)
INSERT INTO MONAN
VALUES
    ('Sup Hai San', 'Version 1', 'So che nguyen lieu, nau sup hai san', 'Chong chi dinh voi nguoi di ung tom va cua'),
    ('Gio Heo muoi chien', 'Version 1', 'Ngam gio heo rut xuong trong muoi 1 ngay, sau do lay ra chien ngap dau cung voi gia vi nem nem vua du', NULL),
    ('Loi vai bo my nuong', 'Version 1', 'Rua sach thit, ngam trong gia vi 15p sau do nuong deu 2 mat roi ap chao tam 5p', 'Chong chi dinh voi nguoi di ung voi thit bo'),
    ('Xoi bo cau', 'Version 1', 'So che nguyen lieu, ngam thit bo cau trong gia vi tam 15p, hap xoi, nau chin bo cau', 'Chong chi dinh voi nguoi di ung voi gao nep'),
    ('Salad ca ngu', 'Version 1','Dung thia tan nho ca ngu, tron voi xa lach, them gia vi,tron deu',NULL ),
    ('Khoai tay rocket', 'Version 1','Rua sach khoai tay, chien ngap dau sau do rac pho mai va tieu',NULL ),
    ('Ca hoi ap chao', 'Version 1','Phi le ca roi ap chao 2 mat cua ca voi bo va dau hao',NULL )
INSERT INTO DOUONG
VALUES
    ('Nuoc ep buoi da xanh', 'Version 1','Tinh Ca Mai'),
    ('Heineken Ha Lan', 'Version 1','Ha Lan'),
    ('Coca Cola', 'Version 1','My')

INSERT INTO NHANVIEN
VALUES
('2110152','Nguyen Thanh Hai','Nam','2003-07-02','To dan pho Hoa Tien, Phuong Cam Nghia, TP Cam Ranh, Tinh Khanh Hoa','2019-12-12','MB:32758740','Bang Dai Hoc',NULL,10000000,NULL),
('2110826','Phan Thanh Binh','Nam','2003-10-13','62 Vo Van Tan, Phuong 6, Quan 3, TP Ho Chi Minh','2019-01-01','VCB:028374072','Chung chi IELTS 7.0',30000,NULL,'2110152'),
('2113290','Quach Trung Hao','Nam','2002-11-12','27 Tran Quoc Thao, Phuong 6, Quan 3, TP Ho Chi Minh','2019-10-01','TCB:02837013','Bang Dai Hoc',29,NULL,'2110152'),
('2011867','Le Quang Phuc','Nam','2001-01-01','7 Nguyen Chi Thanh, TP Da Lat, Tinh Lam Dong','2023-02-27','MB:02834031','Bang Dai Hoc',NULL,8000000,'2110152'),
('2115181','Nguyen Thanh Tuan','Nam','2004-10-10','121 Xo Viet Nghe Tinh, Phuong 17, Quan Binh Thanh, TP Ho Chi Minh','2022-11-11','ACB:028740113','Bang TOEIC 650',NULL,9500000,'2110152'),
('2111011','Nguyen Thi Dao','Nu','2005-11-11','64 Nguyen Thoi Trung, Phuong 6, Quan 5, TP Ho Chi Minh','2023-10-10','VCB:01387049',NULL,27000,NULL,'2110152'),
('2091228','Cao Hoang Cam Tu','Nu','2003-04-21','To dan pho Hoa Binh, Phuong Cam Phuc Bac, TP Cam Ranh, Tinh Khanh Hoa','2017-01-09','MB:013801029','Bang Ke Toan',NULL,10000000,'2110152')
INSERT INTO PHUCVU
VALUES
('2113290'),
('2011867'),
('2115181'),
('2111011')
INSERT INTO DAUBEP
VALUES
('2110152'),
('2110826')
INSERT INTO THUNGAN
VALUES 
('2091228')
INSERT INTO TTLIENHE
VALUES
('2110152','nthai123@gmail.com','0918293820'),
('2110826','binhph0909@gmail.com','0928938293'),
('2113290','qtrhao1412@gmail.com','0113839238'),
('2011867','phucle001@gmail.com','0192837291'),
('2115181','nttuan1212@gmail.com','0912839283'),
('2111011','daothi1@gmail.com','0567989283'),
('2091228','chctu2104@gmail.com','0193198498')
INSERT INTO PHONG
VALUES
(101,'Trong',7,'Vip'),
(102,'Trong',10,'Thuong'),
(103,'Trong',5,'Thuong')
INSERT INTO BAN
VALUES
(101,1010,'EMPTY',4),
(101,1011,'EMPTY',3),
(102,1020,'EMPTY',3),
(102,1021,'EMPTY',2),
(102,1022,'EMPTY',2),
(102,1023,'EMPTY',2),
(103,1030,'EMPTY',3),
(103,1031,'EMPTY',2)
INSERT INTO DHHD
VALUES
('DE1029','056434565432','Hoan thanh','2023-11-10','2023-11-10','12 Dien Bien Phu, Phuong 21, Quan Binh Thanh, TP Ho Chi Minh',101,1010,'XY0918',NULL,'2091228','The ngan hang','2023-11-10'),
('KA0292',''