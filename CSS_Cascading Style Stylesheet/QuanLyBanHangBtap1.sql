CREATE DATABASE BT1CSDL; 
USE BT1CSDL; 
CREATE TABLE tChiTietHDB(
	SoHDB NVARCHAR(10) NOT NULL,
	MaSach NVARCHAR(10) NOT NULL,
	SLBan int NULL,
	KhuyenMai NVARCHAR(100) NULL,
 CONSTRAINT PK_tChiTietHDB PRIMARY KEY CLUSTERED 
(
	SoHDB ASC,
	MaSach ASC
));

CREATE TABLE tChiTietHDN(
	SoHDN NVARCHAR(10) NOT NULL,
	MaSach NVARCHAR(10) NOT NULL,
	SLNhap int NULL,
	KhuyenMai NVARCHAR(100) NULL,
 CONSTRAINT PK_tChiTietHDN PRIMARY KEY CLUSTERED 
(
	SoHDN ASC,
	MaSach ASC
));

CREATE TABLE tHoaDonBan(
	SoHDB NVARCHAR(10) NOT NULL,
	MaNV NVARCHAR(10) NULL,
	NgayBan datetime NULL,
	MaKH NVARCHAR(10) NULL,
 CONSTRAINT PK_tHoaDonBan PRIMARY KEY CLUSTERED 
(
	SoHDB ASC
));

CREATE TABLE tHoaDonNhap(
	SoHDN NVARCHAR(10) NOT NULL,
	MaNV NVARCHAR(10) NULL,
	NgayNhap datetime NULL,
	MaNCC NVARCHAR(10) NULL,
 CONSTRAINT PK_tHoaDonNhap PRIMARY KEY CLUSTERED 
(
	SoHDN ASC
));

CREATE TABLE tKhachHang(
	MaKH NVARCHAR(10) NOT NULL,
	TenKH NVARCHAR(50) NULL,
	DiaChi NVARCHAR(150) NULL,
	DienThoai NVARCHAR(15) NULL,
	GioiTinh bit NULL,
 CONSTRAINT PK_tKhachHang PRIMARY KEY CLUSTERED 
(
	MaKH ASC
));

CREATE TABLE tNhaCungCap(
	MaNCC NVARCHAR(10) NOT NULL,
	TenNCC NVARCHAR(200) NULL,
 CONSTRAINT PK_tNhaCungCap PRIMARY KEY CLUSTERED 
(
	MaNCC ASC
));

CREATE TABLE tNhanVien(
	MaNV NVARCHAR(10) NOT NULL,
	TenNV NVARCHAR(50) NULL,
	GioiTinh NVARCHAR(5) NULL,
	NgaySinh datetime NULL,
	DiaChi NVARCHAR(150) NULL,
	DienThoai NVARCHAR(15) NULL,
 CONSTRAINT PK_tNhanVien PRIMARY KEY CLUSTERED 
(
	MaNV ASC
));

CREATE TABLE tNhaXuatBan(
	MaNXB NVARCHAR(10) NOT NULL,
	TenNXB NVARCHAR(100) NULL,
 CONSTRAINT PK_tNhaXuatBan PRIMARY KEY CLUSTERED 
(
	MaNXB ASC
));

CREATE TABLE tSach(
	MaSach NVARCHAR(10) NOT NULL,
	TenSach NVARCHAR(200) NULL,
	TacGia NVARCHAR(150) NULL,
	MaTheLoai NVARCHAR(10) NULL,
	MaNXB NVARCHAR(10) NULL,
	DonGiaNhap float NULL,
	DonGiaBan float NULL,
	SoLuong int NULL,
	SoTrang int NULL,
	TrongLuong NVARCHAR(50) NULL,
	Anh NVARCHAR(50) NULL,
 CONSTRAINT PK_tSach PRIMARY KEY CLUSTERED 
(
	MaSach ASC
));
CREATE TABLE tTheLoai(
	MaTheLoai NVARCHAR(10) NOT NULL,
	TenTheLoai NVARCHAR(100) NULL,
 CONSTRAINT PK_tTheLoai PRIMARY KEY CLUSTERED 
(
	MaTheLoai ASC
));

INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S01', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S02', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB01', N'S04', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S04', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB02', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S06', 7, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB03', N'S08', 11, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S03', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB04', N'S10', 9, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB05', N'S08', 14, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S02', 13, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S05', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S10', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB06', N'S11', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S01', 10, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S06', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB07', N'S08', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S01', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S06', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB08', N'S07', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S06', 1, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB09', N'S09', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S07', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S11', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB10', N'S13', 6, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S04', 2, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S08', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB11', N'S11', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S05', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S09', 4, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB12', N'S12', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S02', 3, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S03', 5, NULL);
INSERT tChiTietHDB (SoHDB, MaSach, SLBan, KhuyenMai) VALUES (N'HDB13', N'S04', 2, NULL);

INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN01', N'S01', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN02', N'S06', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN03', N'S03', 20, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN04', N'S09', 10, NULL);
INSERT tChiTietHDN (SoHDN, MaSach, SLNhap, KhuyenMai) VALUES (N'HDN05', N'S06', 15, NULL);

INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB01', N'NV01', CAST(N'2014-08-11T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB02', N'NV02', CAST(N'2014-05-03T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB03', N'NV03', CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB04', N'NV04', CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB05', N'NV04', CAST(N'2014-05-14T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB06', N'NV05', CAST(N'2014-06-30T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB07', N'NV06', CAST(N'2014-05-10T00:00:00.000' AS DateTime), N'KH01');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB08', N'NV01', CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB09', N'NV01', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'KH02');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB10', N'NV02', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB11', N'NV03', CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'KH04');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB12', N'NV03', CAST(N'2014-07-10T00:00:00.000' AS DateTime), N'KH03');
INSERT tHoaDonBan (SoHDB, MaNV, NgayBan, MaKH) VALUES (N'HDB13', N'NV05', CAST(N'2014-04-12T00:00:00.000' AS DateTime), N'KH04');

INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN01', N'NV02', CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'NCC01');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN02', N'NV01', CAST(N'2014-06-28T00:00:00.000' AS DateTime), N'NCC03');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN03', N'NV04', CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'NCC06');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN04', N'NV05', CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'NCC04');
INSERT tHoaDonNhap (SoHDN, MaNV, NgayNhap, MaNCC) VALUES (N'HDN05', N'NV03', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'NCC05');

INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH01', N'Nguy???n ????nh S??n', N'B???c Ninh', N'0968686868', 1);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH02', N'????? V??n B???c', N'H???i D????ng', N'0905883993', 1);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH03', N'M???nh Th?????ng Qu??n', N'H???i Ph??ng', N'0918688685', 1);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH04', N'Mai Ph????ng Lan', N'H?? N???i', N'0978656790', 0);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH05', N'Nguy???n Th??? Ph????ng', N'H?? N???i', NULL, 0);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH06', N'Tr???n ????ng H??ng', N'Ninh B??nh', NULL, 1);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH07', N'Ho??ng Th??? H???ng', N'Th??i Nguy??n', NULL, 0);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'KH08', N'C???m Th??? H????ng', N'TP HCM', NULL, 0);
INSERT tKhachHang (MaKH, TenKH, DiaChi, DienThoai, GioiTinh) VALUES (N'Kh09', N'Mai V??n H??ng', N'Ph?? Th???', NULL, 1);

INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC01', N'B??ch Vi???t');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC02', N'NXB Tr???');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC03', N'Ph?? H?? book');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC04', N'Alphabooks');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC05', N'TGM Books');
INSERT tNhaCungCap (MaNCC, TenNCC) VALUES (N'NCC06', N'Th??i H??');

INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV01', N'Tr???n Huy', N'Nam', CAST(N'1990-09-11T00:00:00.000' AS DateTime), N'H?? N???i', N'0986868686');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV02', N'Thanh T??m', N'N???', CAST(N'1986-01-12T00:00:00.000' AS DateTime), N'B???c Ninh', N'0979657676');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV03', N'Nguy???n Minh', N'Nam', CAST(N'1989-07-05T00:00:00.000' AS DateTime), N'H???i D????ng', N'0968145689');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV04', N'Phan Cao', N'Nam', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Ninh B??nh', N'0985143235');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV05', N'B??i Ng???c', N'N???', CAST(N'1987-03-01T00:00:00.000' AS DateTime), N'Th??i B??nh', N'0918167892');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV06', N'Nguy???n Ho??ng', N'Nam', CAST(N'1990-04-04T00:00:00.000' AS DateTime), N'Nam ?????nh', N'0962091660');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV07', N'Nguy???n H???i', N'Nam', CAST(N'1994-05-05T00:00:00.000' AS DateTime), N'H?? N???i', N'0962091666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV08', N'????? Th???o', N'N???', CAST(N'1990-06-06T00:00:00.000' AS DateTime), N'H?? N???i', N'0962099666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV09', N'????? Th???o Ph????ng', N'N???', CAST(N'1990-07-07T00:00:00.000' AS DateTime), N'H?? N???i', N'0966666666');
INSERT tNhanVien (MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, DienThoai) VALUES (N'NV10', N'????? Huy Long', N'Nam', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'Nam ?????nh', N'0983646585');

INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB01', N'NXB Kim ?????ng');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB02', N'NXB Tr???');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB03', N'NXB Th??ng Long');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB04', N'NXB Nh?? Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB05', N'NXB Gi??o D???c');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB06', N'NXB Fahasa');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB07', N'NXB Ph????ng Nam');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB08', N'NXB ??H GTVT');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB09', N'NXB ??H QGHN');
INSERT tNhaXuatBan (MaNXB, TenNXB) VALUES (N'NXB10', N'NXB Th??? ????');

INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S01', N'S???ng v?? kh??t v???ng', N'Tr???n ????ng Khoa', N'TL01', N'NXB01', 100000.0000, 108000.0000, 120, 365, N'638 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S02', N'Cha N??n D???y Con Nh?? Th??? N??o?', N'V????ng Ba, V????ng Tr?? Di???m', N'TL01', N'NXB04', 60000.0000, 69000.0000, 70, 264, N'440 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S03', N'Tr???n ch???y v?? y??u th????ng', N'Maya banks', N'TL06', N'NXB02', 105000.0000, 115000.0000, 45, 508, N'450 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S04', N'Anh s??? y??u em m??i ch???', N'G??o', N'TL06', N'NXB05', 65000.0000, 89000.0000, 78, 320, N'374 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S05', N'Th??? gi???i ph???ng ( T??i b???n n??m 2014)', N'Thomas L.Friedman', N'TL05', N'NXB03', 245000.0000, 272000.0000, 56, 818, N'902 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S06', N'Gi??o tr??nh C++ & l???p tr??nh h?????ng ?????i t?????ng', N'GS. Ph???m V??n ???t', N'TL05', N'NXB06', 64000.0000, 78000.0000, 89, 496, N'650 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S07', N'Manchester United - Thi??n s??? v??? qu??? ?????', N'Jim White', N'TL03', N'NXB07', 135000.0000, 149000.0000, 68, 639, N'720 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S08', N'C??t b???i th???i gian', N'Sidney Sheldon', N'TL04', N'NXB05', 80000.0000, 92000.0000, 45, 482, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S09', N'T??? h???c b???o m???t v?? qu???n tr??? m???ng', N'Mai H????ng', N'TL02', N'NXB08', 41000.0000, 48000.0000, 79, 344, N'480 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S10', N'Tri???u ph?? kh???i nghi???p t??? hai b??n tay tr???ng', N'Tri???u Ph??m V??', N'TL05', N'NXB09', 115000.0000, 130000.0000, 43, 452, N'506 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S11', N'C???u tr??c d??? li???u v?? gi???i thu???t', N'H??? ?????c Ph????ng', N'TL02', N'NXB10', 110000.0000, 150000.0000, 80, 300, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S12', N'L???p Tr??nh C', N'Ph???m V??n ???t', N'TL02', N'NXB10', 100000.0000, 130000.0000, 80, 440, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S13', N'Kh??ng ai qua s??ng', N'L??? Ng???c T??', N'TL01', N'NXB10', 100000.0000, 140000.0000, 80, 330, N'330 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S14', N'????n ?????u xu h?????ng', N'Rohit Bhargava', N'TL01', N'NXB10', 200000.0000, 250000.0000, 60, 220, N'200 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S15', N'????? con ???????c ???m', N'Nguy???n Th??? ??oan', N'TL01', N'NXB10', 200000.0000, 300000.0000, 40, 400, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S16', N'B??c x??c l??m ta v?? c???m', N'?????ng Ho??ng Giang', N'TL01', N'NXB10', 200000.0000, 300000.0000, 50, 400, N'300 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S17', N'Tony bu???i s??ng - tr??n ???????ng b??ng', N'Tony Bu???i S??ng', N'TL01', N'NXB09', 250000.0000, 300000.0000, 30, 300, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S18', N'?????ng bao gi??? ??i ??n m???t m??nh', N'Keith Ferrazzi', N'TL01', N'NXB09', 300000.0000, 400000.0000, 60, 555, N'500 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S19', N'Ng??y x??a c?? m???t con b??', N'Camilo Cruz', N'TL01', N'NXB09', 300000.0000, 450000.0000, 60, 400, N'400 gram', NULL);
INSERT tSach (MaSach, TenSach, TacGia, MaTheLoai, MaNXB, DonGiaNhap, DonGiaBan, SoLuong, SoTrang, TrongLuong, Anh) VALUES (N'S20', N'T??i th???y hoa v??ng tr??n c??? xanh', N'Nguy???n nh???t ??nh', N'TL01', N'NXB09', 300000.0000, 400000.0000, 80, 550, N'300 gram', NULL);

INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL01', N'B?? quy???t Cu???c s???ng');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL02', N'S??ch Tin h???c');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL03', N'Th??? Thao, Du l???ch');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL04', N'V??n h??a, Ngh??? thu???t');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL05', N'S??ch Kinh doanh');
INSERT tTheLoai (MaTheLoai, TenTheLoai) VALUES (N'TL06', N'S??ch Khuy???n m???i, S??ch m???i ph??t h??nh');

ALTER TABLE tChiTietHDB   ADD  CONSTRAINT FK_tChiTietHDB_tHoaDonBan FOREIGN KEY(SoHDB)
REFERENCES tHoaDonBan (SoHDB);

ALTER TABLE tChiTietHDB   ADD  CONSTRAINT FK_tChiTietHDB_tSach FOREIGN KEY(MaSach)
REFERENCES tSach (MaSach);

ALTER TABLE tChiTietHDN   ADD  CONSTRAINT FK_tChiTietHDN_tHoaDonNhap FOREIGN KEY(SoHDN)
REFERENCES tHoaDonNhap (SoHDN);

ALTER TABLE tChiTietHDN   ADD  CONSTRAINT FK_tChiTietHDN_tSach FOREIGN KEY(MaSach)
REFERENCES tSach (MaSach);

ALTER TABLE tHoaDonBan   ADD  CONSTRAINT FK_tHoaDonBan_tKhachHang FOREIGN KEY(MaKH)
REFERENCES tKhachHang (MaKH);

ALTER TABLE tHoaDonBan   ADD  CONSTRAINT FK_tHoaDonBan_tNhanVien FOREIGN KEY(MaNV)
REFERENCES tNhanVien (MaNV);

ALTER TABLE tHoaDonNhap   ADD  CONSTRAINT FK_tHoaDonNhap_tNhaCungCap FOREIGN KEY(MaNCC)
REFERENCES tNhaCungCap (MaNCC);

ALTER TABLE tHoaDonNhap   ADD  CONSTRAINT FK_tHoaDonNhap_tNhanVien FOREIGN KEY(MaNV)
REFERENCES tNhanVien (MaNV);

ALTER TABLE tSach   ADD  CONSTRAINT FK_tSach_tNhaXuatBan FOREIGN KEY(MaNXB)
REFERENCES tNhaXuatBan (MaNXB);

ALTER TABLE tSach ADD  CONSTRAINT FK_tSach_tTheLoai FOREIGN KEY(MaTheLoai)
REFERENCES tTheLoai (MaTheLoai);

-- C??u 1: In ra danh s??ch c??c s??ch ch??? l???y (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c xu???t b???n
SELECT tsach.MaSach,tsach.TenSach FROM tsach 
WHERE tsach.MaNXB='NXB05';

-- C??u 2: In ra danh s??ch c??c s??ch c?? t??n b???t ?????u l?? ???Ng??y???.
SELECT * FROM tsach
WHERE tsach.TenSach LIKE 'Ng??y%';

-- C??u 3: In ra danh s??ch c??c s??ch (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c c?? gi?? t??? 100.000
-- ?????n 150.000
SELECT tsach.MaSach,tsach.TenSach FROM tsach 
WHERE tsach.MaNXB='NXB05' and (tsach.DonGiaBan BETWEEN 100000 and 150000);

-- C??u 4: In ra danh s??ch c??c c??c s??ch (MaSach,TenSach) do Nh?? xu???t b???n Gi??o D???c ho???c Nh??
-- Xu???t B???n Tr??? s???n xu???t c?? gi?? t??? 90.000 ?????n 140.000.
SELECT tsach.MaSach,tsach.TenSach FROM tsach 
WHERE (tsach.MaNXB='NXB05' OR tsach.MaNXB='NXB02') AND (tsach.DonGiaBan BETWEEN 90000 AND 140000);

-- C??u 5: In ra c??c s??? h??a ????n, tr??? gi?? h??a ????n b??n ra trong ng??y 1/1/2014 v?? ng??y 31/12/2014
SELECT tchitiethdb.SoHDB, sum(tchitiethdb.SLBan) as 'S??? l?????ng', sum(tsach.DonGiaBan*tchitiethdb.SLBan) as 'Gi??',thoadonban.NgayBan
FROM tsach
JOIN tchitiethdb USING(MaSach)
JOIN thoadonban USING(SoHDB)
WHERE thoadonban.NgayBan BETWEEN '2014/1/1' AND '2014/12/31'
GROUP BY tchitiethdb.SoHDB;

-- C??u 6: In ra c??c s??? h??a ????n, tr??? gi?? h??a ????n trong th??ng 4/2014, s???p x???p theo ng??y (t??ng d???n) v??
-- tr??? gi?? c???a h??a ????n (gi???m d???n).
SELECT tchitiethdb.SoHDB, sum(tchitiethdb.SLBan) as 'S??? l?????ng', sum(tsach.DonGiaBan*tchitiethdb.SLBan) as 'Gi??',thoadonban.NgayBan
FROM tsach
JOIN tchitiethdb USING(MaSach)
JOIN thoadonban USING(SoHDB)
WHERE thoadonban.NgayBan BETWEEN '2014/4/1' AND '2014/4/30'
GROUP BY tchitiethdb.SoHDB
ORDER BY thoadonban.NgayBan,sum(tsach.DonGiaBan*tchitiethdb.SLBan)DESC;

-- C??u 7: In ra danh s??ch c??c kh??ch h??ng (MaKH, TenKH) ???? mua h??ng trong ng??y 10/4/2014.
SELECT tkhachhang.MaKH,tkhachhang.TenKH FROM tkhachhang
JOIN thoadonban USING(MaKH)
JOIN tchitiethdb USING(SoHDB)
JOIN tsach USING(MaSach)
WHERE thoadonban.NgayBan = '2014/04/10'
GROUP BY tkhachhang.MaKH;

-- C??u 8: In ra s??? h??a ????n, tr??? gi?? c??c h??a ????n do nh??n vi??n c?? t??n ???Tr???n Huy??? l???p trong ng??y
-- ???11/8/2014???
SELECT tchitiethdb.SoHDB,tnhanvien.TenNV, sum(tchitiethdb.SLBan) as 'S??? l?????ng', sum(tsach.DonGiaBan*tchitiethdb.SLBan) as 'Gi??',thoadonban.NgayBan
FROM tsach
JOIN tchitiethdb USING(MaSach)
JOIN thoadonban USING(SoHDB)
JOIN tnhanvien USING(MaNV)
WHERE thoadonban.NgayBan = '2014/08/11' AND tnhanvien.TenNV='Tr???n Huy'
GROUP BY tchitiethdb.SoHDB;

-- C??u 9: In ra danh s??ch c??c s??ch (MaSach,TenSach) ???????c kh??ch h??ng c?? t??n ???Nguy???n ????nh S??n???
-- mua trong th??ng 8/2014
SELECT tsach.MaSach,tkhachhang.TenKH,tsach.TenSach,thoadonban.NgayBan
FROM tkhachhang
JOIN thoadonban USING(MaKH)
JOIN tchitiethdb USING(SoHDB)
JOIN tsach USING(MaSach)
WHERE tkhachhang.TenKH='Nguy???n ????nh S??n' AND thoadonban.NgayBan BETWEEN '2014/8/1' AND '2014/8/31'
GROUP BY tkhachhang.MaKH,tsach.MaSach,thoadonban.SoHDB;

-- C??u 10: T??m c??c s??? h??a ????n ???? mua s??ch ???C???u tr??c d??? li???u v?? gi???i thu???t???
SELECT tchitiethdb.SoHDB,tchitiethdb.MaSach,tsach.TenSach FROM tchitiethdb
JOIN tsach USING(MaSach)
WHERE MaSach='S11';


