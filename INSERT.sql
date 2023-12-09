INSERT INTO KHACHHANG
VALUES
    ('KH01', 'Nguyen Thanh Tung', 'Nam', '1994-07-05', 'thanhtung123@gmail.com', 150, '12', 'Dien Bien Phu', 'Phuong 21', 'Quan Binh Thanh', 'TP Ho Chi Minh'),
    ('KH02', 'Nguyen Thuc Thuy Tien', 'Nu', '1998-08-12', 'ldbl1208@gmail.com', 200, '44', 'Ly Nam De', 'Phuong 7', 'Quan 11', 'TP Ho Chi Minh'),
    ('KH03', 'Huynh Tran Thanh', 'Nam', '1987-02-05', 'tranthanh111@gmail.com', 500, '15', 'Cach Mang Thang 8', 'Phuong 11', 'Quan 3', 'TP Ho Chi Minh'),
    ('KH04', 'Vo Vu Truong Giang', 'Nam', '1983-04-20', 'vvtruonggiang1412@gmail.com', 50, '90', 'Ly Nam De', 'Phuong 7', 'Quan 11', 'TP Ho Chi Minh'),
    ('KH05', 'Phan Thi My Tam', 'Nu', '1981-01-16', 'mytam1001@gmail.com', 666, '10', 'Ly Thuong Kiet', 'Phuong 7', 'Quan 10', 'TP Ho Chi Minh'),
    ('KH06', 'Nguyen Thi Hoa', 'Nu', '1995-05-31', 'hoaminzy113@gmail.com', 123, '30', 'Su Van Hanh', 'Phuong 12', 'Quan 10', 'TP Ho Chi Minh'),
    ('KH07', 'Ong Cao Thang', 'Nam', '1986-01-13', 'ongthang99@gmail.com', 589, '83', 'Dien Bien Phu', 'Phuong 15', 'Quan Binh Thanh', 'TP Ho Chi Minh'),
    ('KH08', 'Nghiem Vu Hoang Long', 'Nam', '1999-03-02', 'mckakanger@gmail.com', 340, '34', 'Ly Nam De', 'Phuong Hoc Mon', 'Quan Hoc Mon', 'TP Ho Chi Minh'),
    ('KH09', 'Nguyen Khoa Toc Tien', 'Nu', '1989-05-13', 'toctienne123@gmail.com', 104, '11', 'Su Van Hanh', 'Phuong 10', 'Quan 10', 'TP Ho Chi Minh'),
    ('KH10', 'Phung Thanh Do', 'Nam', '1989-09-12', 'domiximoi100@gmail.com', 129, '99', 'Ngo Gia Tu', 'Phuong 2', 'Quan 10', 'TP Ho Chi Minh')

INSERT INTO TAIKHOAN
VALUES
    ('TK01', 'thanhtung123', 'Thanhtung@123', 'KH01'),
    ('TK02', 'thuytien109', 'Tien1208', 'KH02'),
    ('TK03', 'thanhtran111', '05021987', 'KH03'),
    ('TK04', 'giangson001', 'Son123456', 'KH04'),
    ('TK05', 'casimytam11', '19810116', 'KH05'),
    ('TK06', 'hoaminzy90', 'Hoahoahoa31', 'KH06'),
    ('TK07', 'thangcaoong1', 'Thangco123', 'KH07'),
    ('TK08', 'mckakalongnger', 'Hoanglong1999', 'KH08'),
    ('TK09', 'toctien102', 'Tiengiangtran01', 'KH09'),
    ('TK10', 'domixi888', 'Mixifood1209', 'KH10')

INSERT INTO DONHANG 
VALUES
('DH01','2021-01-01','2021-01-01','An tai nha hang',NULL),
('DH02','2021-02-01','2021-02-07','Chua giao','12, Dien Bien Phu, Phuong 21, Quan Binh Thanh, TP Ho Chi Minh'),
('DH03','2021-05-02','2021-05-03','Da giao','44, Ly Nam De, Phuong 7, Quan 11, TP Ho Chi Minh'),
('DH04','2021-06-07','2021-06-08','Da giao','15, Cach Mang Thang 8, Phuong 11, Quan 3, TP Ho Chi Minh'),
('DH05','2021-10-11','2021-10-11','An tai nha hang',NULL),
('DH06','2021-11-21','2021-11-29','Da giao','10, Ly Thuong Kiet, Phuong 7, Quan 10, TP Ho Chi Minh'),
('DH07','2022-01-01','2022-01-09','Chua giao','30, Su Van Hanh, Phuong 12, Quan 10, TP Ho Chi Minh'),
('DH08','2022-02-03','2022-02-05','Da giao','83, Dien Bien Phu, Phuong 15, Quan Binh Thanh, TP Ho Chi Minh'),
('DH09','2022-07-02','2022-07-02','An tai nha hang',NULL),
('DH10','2022-09-02','2022-09-02','An tai nha hang',NULL),
('DH11','2022-11-12','2022-11-12','An tai nha hang',NULL),
('DH12','2022-12-02','2022-12-03','Da giao','99, Ngo Gia Tu, Phuong 2, Quan 10, TP Ho Chi Minh')

INSERT INTO VOUCHER 
VALUES
('V01',NULL,NULL,100000,NULL,'2021-01-01','2021-01-07'),
('V02','Sup to yen hat sen,Xuc xich bo Kobe nuong','1 Bearbrick Bling',NULL,NULL,'2022-07-01','2022-09-10'),
('V03','Loi vai bo My nuong, Sup miso, Hau chien gion, Bap gio heo xong khoi',NULL,100000,NULL,'2021-10-10','2021-11-30'),
('V04','Xoi bo cau, 1 nuoc ep cam, 1 bia Heineken Ha Lan','2 Gau Bong',NULL,5,'2021-02-01','2021-02-10'),
('V05','Salad cac loai dau,Dua luoi','1 chai ruou vang',NULL,10,'2022-12-02','2022-12-05'),
('V06','Dui cuu nuong,Loi vai bo My luc lac',NULL,NULL,NULL,'2022-11-10','2022-11-15')

INSERT INTO HOADON 
VALUES
('HD01','2021-01-01',900000,'Chuyen khoan ngan hang','DH01'),
('HD02','2021-02-01',422750,'Tien mat','DH02'),
('HD03','2021-05-02',400000,'Tien mat','DH03'),
('HD04','2021-06-07',320000,'Chuyen khoan ngan hang','DH04'),
('HD05','2021-10-11',420000,'Chuyen khoan ngan hang','DH05'),
('HD06','2021-11-21',600000,'Chuyen khoan ngan hang','DH06'),
('HD07','2022-01-01',520000,'Tien mat','DH07'),
('HD08','2022-02-03',230000,'Tien mat','DH08'),
('HD09','2022-07-02',720000,'Chuyen khoan ngan hang','DH09'),
('HD10','2022-09-02',820000,'Tien mat','DH10'),
('HD11','2022-11-12',930000,'Chuyen khoan ngan hang','DH11'),
('HD12','2022-12-02',310500,'Tien mat','DH12')

INSERT INTO FOODANDDRINK
VALUES
    ('Sup Hai San', 1, 150000, 'Tom Alaska, cua Tuyet,rau ngo,toi,hanh tim,nam huong,ca rot,muoi,tieu,ca chua', NULL,'2020-12-29','Con ban'),
    ('Gio Heo muoi chien', 1, 300000, 'Gio heo, muoi, mam, bot ngu vi huong, duong, dau an, giam', NULL,'2020-12-29','Con ban'),
    ('Loi vai bo my nuong', 1, 200000, 'Loi vai bo My, ruou vang do, o liu, khoai tay,giam,dau an,muoi,tieu', NULL,'2020-12-29','Con ban'),
    ('Xoi bo cau', 1, 250000, 'Gao nep, Bo cau, hat sen, Hanh kho,nuoc cot dua,muoi, tieu', NULL,'2020-12-29','Con ban'),
    ('Salad ca ngu', 1,200000, 'Ca ngu, rau xa lach, ca chua, mayonnaise,bo,tuong ot,giam',NULL,'2020-12-29','Con ban'),
    ('Khoai tay rocket', 1,100000,'Khoai tay, dau an,muoi,pho mai',NULL,'2020-12-29','Con ban'),
    ('Ca hoi ap chao', 1,145000,'Ca hoi, dau hao, bo,muoi,tieu,chanh',NULL,'2020-12-29','Con ban'),
    ('Nuoc ep buoi da xanh', 1,120000,'1/2 Trai buoi da xanh, chanh, da',NULL,'2020-12-29','Con ban'),
    ('Heineken', 1,70000,'Lua mach,nuoc',NULL,'2020-12-29','Con ban'),
    ('Coca Cola', 1,30000,'Nuoc co ga,huong lieu tu nhien, duong, caffeine',NULL,'2020-12-29','Con ban')

INSERT INTO NHANVIEN
VALUES
('NV01','Nguyen Thanh Hai','Nam','2003-07-02','To dan pho Hoa Tien, Phuong Cam Nghia, TP Cam Ranh, Tinh Khanh Hoa','2020-12-12','MB:32758740','Bang Dai Hoc',10000000,NULL,NULL),
('NV02','Phan Thanh Binh','Nam','2003-10-13','62 Vo Van Tan, Phuong 6, Quan 3, TP Ho Chi Minh','2020-12-25','VCB:028374072','Chung chi IELTS 7.0',NULL,30000,'NV01'),
('NV03','Quach Trung Hao','Nam','2002-11-12','27 Tran Quoc Thao, Phuong 6, Quan 3, TP Ho Chi Minh','2020-12-25','TCB:02837013','Bang Dai Hoc',NULL,29000,'NV01'),
('NV04','Le Quang Phuc','Nam','2001-01-01','7 Nguyen Chi Thanh, TP Da Lat, Tinh Lam Dong','2020-12-25','MB:02834031','Bang Dai Hoc',8000000,NULL,'NV01'),
('NV05','Nguyen Thanh Tuan','Nam','2004-10-10','121 Xo Viet Nghe Tinh, Phuong 17, Quan Binh Thanh, TP Ho Chi Minh','2020-12-25','ACB:028740113','Bang TOEIC 650',9500000,NULL,'NV01'),
('NV06','Nguyen Thi Dao','Nu','2005-11-11','64 Nguyen Thoi Trung, Phuong 6, Quan 5, TP Ho Chi Minh','2020-12-25','VCB:01387049',NULL,NULL,27000,'NV01'),
('NV07','Cao Hoang Cam Tu','Nu','2003-04-21','To dan pho Hoa Binh, Phuong Cam Phuc Bac, TP Cam Ranh, Tinh Khanh Hoa','2020-12-25','MB:013801029','Bang Ke Toan',10000000,NULL,'NV01')


INSERT INTO PHONG
VALUES
('P1',7,'Vip'),
('P2',10,'Thuong'),
('P3',5,'Thuong')

INSERT INTO BAN
VALUES
('P1','B1','EMPTY',4),
('P1','B2','EMPTY',3),
('P2','B1','EMPTY',3),
('P2','B2','EMPTY',2),
('P2','B3','EMPTY',2),
('P2','B4','EMPTY',2),
('P3','B1','EMPTY',3),
('P3','B2','EMPTY',2)

INSERT INTO DONVIVANCHUYEN
VALUES
('DV01','Shopee','support@shopee.vn','67','Le Loi','Phuong Ben Nghe','Quan 1','TP Ho Chi Minh'),
('DV02','Grab','grab.support@gmail.com','03','Nguyen Luong Bang','Phuong Tan Phu','Quan 7','TP Ho Chi Minh')

INSERT INTO SDTKHACHHANG
VALUES
('KH01','0193981934'),
('KH02','0128378239'),
('KH03','0138798399'),
('KH04','0728191938'),
('KH05','0919382772'),
('KH06','0193837782'),
('KH07','0298392839'),
('KH08','0293093982'),
('KH09','0193928928'),
('KH10','0198239823')

INSERT INTO SDTDONVIVANCHUYEN
VALUES
('DV01','0912293120'),
('DV02','0132311212')

INSERT INTO PHUCVU
VALUES
('NV03'),
('NV04'),
('NV05'),
('NV06')

INSERT INTO DAUBEP
VALUES
('NV01'),
('NV02')

INSERT INTO THUNGAN
VALUES 
('NV07')

INSERT INTO THONGTINLIENHE
VALUES
('NV01','nthai123@gmail.com','0918293820'),
('NV02','binhph0909@gmail.com','0928938293'),
('NV03','qtrhao1412@gmail.com','0113839238'),
('NV04','phucle001@gmail.com','0192837291'),
('NV05','nttuan1212@gmail.com','0912839283'),
('NV06','daothi1@gmail.com','0567989283'),
('NV07','chctu2104@gmail.com','0193198498')

INSERT INTO MON_AN
VALUES
    ('Sup Hai San', 1, 'So che nguyen lieu, nau sup hai san', 'Chong chi dinh voi nguoi di ung tom va cua'),
    ('Gio Heo muoi chien', 1, 'Ngam gio heo rut xuong trong muoi 1 ngay, sau do lay ra chien ngap dau cung voi gia vi nem nem vua du', NULL),
    ('Loi vai bo my nuong', 1, 'Rua sach thit, ngam trong gia vi 15p sau do nuong deu 2 mat roi ap chao tam 5p', 'Chong chi dinh voi nguoi di ung voi thit bo'),
    ('Xoi bo cau', 1, 'So che nguyen lieu, ngam thit bo cau trong gia vi tam 15p, hap xoi, nau chin bo cau', 'Chong chi dinh voi nguoi di ung voi gao nep'),
    ('Salad ca ngu', 1,'Dung thia tan nho ca ngu, tron voi xa lach, them gia vi,tron deu',NULL ),
    ('Khoai tay rocket', 1,'Rua sach khoai tay, chien ngap dau sau do rac pho mai va tieu',NULL ),
    ('Ca hoi ap chao', 1,'Phi le ca roi ap chao 2 mat cua ca voi bo va dau hao',NULL )

INSERT INTO DO_UONG
VALUES
    ('Nuoc ep buoi da xanh', 1,'Tinh Ca Mau'),
    ('Heineken', 1,'Ha Lan'),
    ('Coca Cola', 1,'My')

INSERT INTO DONHANG_KHACHHANG
VALUES
('DH01','KH01'),
('DH02','KH01'),
('DH03','KH02'),
('DH04','KH03'),
('DH05','KH04'),
('DH06','KH05'),
('DH07','KH06'),
('DH08','KH07'),
('DH09','KH08'),
('DH10','KH09'),
('DH11','KH10'),
('DH12','KH10')

INSERT INTO DONHANG_PHUCVU
VALUES
('DH01','NV03'),
('DH02',NULL),
('DH03',NULL),
('DH04',NULL),
('DH05','NV04'),
('DH06',NULL),
('DH07',NULL),
('DH08',NULL),
('DH09','NV05'),
('DH10','NV06'),
('DH11','NV04'),
('DH12',NULL)

INSERT INTO DONHANG_BAN
VALUES
('DH01','P1','B1'),
('DH05','P3','B2'),
('DH09','P2','B2'),
('DH10','P2','B3'),
('DH11','P1','B2')

INSERT INTO DONHANG_VANCHUYEN
VALUES
('DH02','DV01','Nguyen Quoc Hung','0923928390','MVD1'),
('DH03','DV01','Dao Xuan Duc','0292837291','MVD2'),
('DH04','DV02','Tran Ngoc Bao','0192837281','MVD3'),
('DH06','DV01','Luu Bao Ly','0291837281','MVD4'),
('DH07','DV02','Tran Duc Thien','0129819089','MVD5'),
('DH08','DV01','Cao Thanh Nhan','0291829283','MVD6'),
('DH12','DV02','Luong Chi Thien','0298938918','MVD7')

INSERT INTO DONHANG_FD
VALUES
('DH01','Gio Heo muoi chien',1,600000,2),
('DH01','Sup Hai San',1,150000,1),
('DH01','Xoi bo cau',1,250000,1),
('DH02','Gio Heo muoi chien',1,300000,1),
('DH02','Ca hoi ap chao',1,145000,1),
('DH03','Khoai tay rocket',1,400000,4),
('DH04','Ca hoi ap chao',1,290000,2),
('DH04','Coca Cola',1,30000,1),
('DH05','Loi vai bo my nuong',1,200000,1),
('DH05','Xoi bo cau',1,250000,1),
('DH05','Heineken',1,70000,1),
('DH06','Loi vai bo my nuong',1,200000,1),
('DH06','Gio Heo muoi chien',1,300000,1),
('DH06','Salad ca ngu',1,200000,1),
('DH07','Salad ca ngu',1,400000,2),
('DH07','Nuoc ep buoi da xanh',1,120000,1),
('DH08','Salad ca ngu',1,200000,1),
('DH08','Coca Cola',1,30000,1),
('DH09','Sup Hai San',1,150000,1),
('DH09','Xoi bo cau',1,500000,2),
('DH09','Heineken',1,70000,1),
('DH10','Loi vai bo my nuong',1,200000,1),
('DH10','Xoi bo cau',1,500000,2),
('DH10','Nuoc ep buoi da xanh',1,120000,1),
('DH11','Gio Heo muoi chien',1,600000,2),
('DH11','Sup Hai San',1,300000,2),
('DH11','Coca Cola',1,30000,1),
('DH12','Ca hoi ap chao',1,145000,1),
('DH12','Salad ca ngu',1,200000,1)

INSERT INTO HOADON_THUNGAN
VALUES
('HD01','NV07'),
('HD02','NV07'),
('HD03','NV07'),
('HD04','NV07'),
('HD05','NV07'),
('HD06','NV07'),
('HD07','NV07'),
('HD08','NV07'),
('HD09','NV07'),
('HD10','NV07'),
('HD11','NV07'),
('HD12','NV07')

INSERT INTO HOADON_VOUCHER
VALUES
('HD01','V01'),
('HD02','V04'),
('HD03',NULL),
('HD04',NULL),
('HD05','V03'),
('HD06','V03'),
('HD07',NULL),
('HD08',NULL),
('HD09','V02'),
('HD10','V02'),
('HD11','V06'),
('HD12','V05')

INSERT INTO PHUCVU_PHONG
VALUES
('P1','NV03','2021-01-01'),
('P1','NV04','2022-11-12'),
('P2','NV05','2022-07-02'),
('P2','NV06','2022-09-02'),
('P3','NV04','2021-10-11')

INSERT INTO CHEBIEN_MON_AN
VALUES
('Sup Hai San',1,'NV01','Nguyen Thanh Hai'),
('Gio Heo muoi chien',1,'NV02','Phan Thanh Binh'),
('Loi vai bo my nuong',1,'NV02','Phan Thanh Binh'),
('Xoi bo cau',1,'NV02','Phan Thanh Binh'),
('Salad ca ngu',1,'NV01','Nguyen Thanh Hai'),
('Khoai tay rocket',1,'NV01','Nguyen Thanh Hai'),
('Ca hoi ap chao',1,'NV02','Phan Thanh Binh')

INSERT INTO FD_VOUCHER_APDUNG
VALUES
('Gio Heo muoi chien',1,'V01','2'),
('Xoi bo cau',1,'V02','2'),
('Loi vai bo my nuong',1,'V03','1'),
('Ca hoi ap chao',1,'V04','1'),
('Ca hoi ap chao',1,'V05','1'),
('Salad ca ngu',1,'V05','1'),
('Sup Hai San',1,'V06','2')