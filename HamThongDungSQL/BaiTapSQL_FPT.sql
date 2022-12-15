CREATE DATABASE fpt;
use fpt;

CREATE TABLE nhacungcap(
maNhaCC VARCHAR(10) PRIMARY KEY,
tenNhaCC VARCHAR(20),
diaChi VARCHAR(20),
soDT VARCHAR(20),
maSoThue VARCHAR(20)
);

CREATE TABLE loaidichvu(
maloaiDV VARCHAR(10) PRIMARY KEY,
tenLoaiDV VARCHAR(20)
);

CREATE TABLE mucphi(
maMP VARCHAR(10) PRIMARY KEY,
donGia INT,
moTa LONGTEXT
);

CREATE TABLE dongxe(
dongXe VARCHAR(10) PRIMARY KEY,
hangXe VARCHAR(10),
soChoNgoi INT
);

CREATE TABLE dangkycungcap(
maDKCC VARCHAR(10) PRIMARY KEY,
maNhaCC VARCHAR(10),
maLoaiDV VARCHAR(10),
dongXe VARCHAR(10),
maMP VARCHAR(10),
ngayBatDauCungCap DATE,
ngayKetThucCungCap DATE,
soLuongXeDangKy INT,
FOREIGN KEY (maNhaCC) REFERENCES nhacungcap(maNhaCC),
FOREIGN KEY (maLoaiDV) REFERENCES loaidichvu(maLoaiDV),
FOREIGN KEY (dongXe) REFERENCES dongxe(dongXe),
FOREIGN KEY (maMP) REFERENCES mucphi(maMP)
);

DROP TABLE nhacungcap;
DROP TABLE loaidichvu;
DROP TABLE mucphi;
DROP TABLE dongxe;
DROP TABLE dangkycungcap;

INSERT INTO forum.dongxe VALUES ('Cerato', 'KIA', '4');
INSERT INTO forum.dongxe VALUES ('Hiace', 'Toyota', '6');
INSERT INTO forum.dongxe VALUES ('KIA2022', 'KIA', '8');
INSERT INTO forum.dongxe  VALUES ('Toyota2022', 'Toyota', '8');
INSERT INTO forum.dongxe  VALUES ('Toyota2008', 'Toyota', '4');
INSERT INTO forum.dongxe VALUES ('KIA2007', 'KIA', '5');

INSERT INTO forum.mucPhi  VALUES ('MP01', 15000, 'Dòng xe đi với mức giá 15.000VNĐ/km');
INSERT INTO forum.mucPhi  VALUES ('MP02', 20000, 'Dòng xe đi với mức giá 20.000VNĐ/km');
INSERT INTO forum.mucPhi  VALUES ('MP03', 25000, 'Dòng xe đi với mức giá 25.000VNĐ/km');
INSERT INTO forum.mucPhi  VALUES ('MP04', 30000, 'Dòng xe đi với mức giá 30.000VNĐ/km');

INSERT INTO forum.loaidichvu  VALUES ('DV01', 'Rửa xe');
INSERT INTO forum.loaidichvu  VALUES ('DV02', 'Bảo dưỡng');

INSERT INTO forum.nhacungcap  VALUES ('NCC01', 'My Car','Hà Nội','0923184756','MST0001');
INSERT INTO forum.nhacungcap  VALUES ('NCC02', 'That Car','HCM','0926664756','MST0002');
INSERT INTO forum.nhacungcap  VALUES ('NCC03', 'This Car','Đà Nẵng','0926688756','MST0003');
INSERT INTO forum.nhacungcap  VALUES ('NCC04', 'That Car','HCM','0926664756','MST0004');

INSERT INTO forum.dangkycungcap  VALUES ('DKCC01', 'NCC01','DV02','KIA2022','MP02','2022/1/1','2023/1/1',100);
INSERT INTO forum.dangkycungcap  VALUES ('DKCC02', 'NCC03','DV01','Cerato','MP01','2021/1/1','2022/1/1',50);
INSERT INTO forum.dangkycungcap  VALUES ('DKCC03', 'NCC02','DV01','Hiace','MP04','2021/1/1','2022/1/1',80);
INSERT INTO forum.dangkycungcap  VALUES ('DKCC04', 'NCC02','DV01','Toyota2008','MP03','2008/1/1','2009/1/1',60);
INSERT INTO forum.dangkycungcap  VALUES ('DKCC05', 'NCC01','DV01','KIA2007','MP01','2007/1/1','2007/1/1',90);

SELECT*FROM nhacungcap;
SELECT*FROM loaidichvu;
SELECT*FROM mucphi;
SELECT*FROM dongxe;
SELECT*FROM dangkycungcap;

-- Câu 3:  Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ
SELECT * FROM dongxe
WHERE soChoNgoi>=5; 

-- Câu 4: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
-- thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe
-- thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km
SELECT*FROM nhacungcap as ncc
	JOIN dangkycungcap as dkcc on ncc.maNhaCC=dkcc.maNhaCC
	JOIN dongxe as dx on dkcc.dongXe=dx.dongXe
	JOIN mucphi as mp on dkcc.maMP=mp.maMP
	WHERE (hangxe = 'Toyota' and dongia = 15000) OR (hangxe = 'KIA' and dongia = 20000);
    
-- Câu 5: Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung
-- cấp và giảm dần theo mã số thuế
SELECT * FROM nhacungcap 
ORDER BY tenNhaCC ASC,maSoThue DESC;

-- Câu 6: Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với
-- yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu
-- cung cấp là “2021/1/1”
SELECT nhacungcap.*,count(maDKCC)
	FROM nhacungcap
    JOIN dangkycungcap  on nhacungcap.maNhaCC=dangkycungcap.maNhaCC
    WHERE ngayBatDauCungCap='2021/1/1'
    GROUP BY nhacungcap.maNhaCC;

-- Câu 7: Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe
-- chỉ được liệt kê một lần
SELECT hangxe 
FROM dongxe
GROUP BY hangXe;

-- Câu 8: Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
-- HangXe, NgayBatDauCC, NgayKetThucCC của tất cả các lần đăng ký cung cấp phương
-- tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương
-- tiện thì cũng liệt kê thông tin những nhà cung cấp đó ra
select dangkycungcap.MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia, HangXe, NgayBatDauCungCap, NgayKetThucCungCap
from dangkycungcap join dongxe on dangkycungcap.Dongxe = dongxe.DongXe
	join loaidichvu on loaidichvu.MaloaiDV = dangkycungcap.MaLoaiDV
    join mucphi on mucphi.MaMP = dangkycungcap.MaMP
    join nhacungcap on nhacungcap.MaNhaCC = dangkycungcap.MaNhaCC;

-- Câu 9: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện
-- thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”
select *
from nhacungcap join dangkycungcap on nhacungcap.MaNhaCC = dangkycungcap.MaNhaCC
where dongxe = 'Hiace' or dongxe = 'Cerato';

-- Câu 10: Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp
-- phương tiện lần nào cả.
select MaNhaCC
from nhacungcap
where MaNhaCC not in (select distinct nhacungcap.MaNhaCC
from dangkycungcap join nhacungcap on dangkycungcap.MaNhaCC = nhacungcap.MaNhaCC);

    

    



