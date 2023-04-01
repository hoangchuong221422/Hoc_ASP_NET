use QL_WebBanHang

-- ========== Bảng người dùng ===========
create table Nguoidung
 ( MaND int IDENTITY(1,1),
   TenDangNhap varchar(50),
   MatKhau varchar(50),
   Ho nvarchar(20),
   Ten nvarchar(20),
   SoDienThoai varchar(20),
   Email varchar(100),
  constraint Pri_Nguoidung primary key(MaND )
  )
INSERT INTO Nguoidung (TenDangNhap, MatKhau, Ho, Ten, SoDienThoai,email)
VALUES ('chuonghuynh', 'chuonghuynh123', N'Huỳnh Hoàng', N'Chương', '1234567890', 'chuonghuynh@gmail.com')
INSERT INTO Nguoidung (TenDangNhap, MatKhau, Ho, Ten, SoDienThoai,email)
VALUES ('phamthang', 'phamthang123', N'Phạm Quốc', N'Thắng', '9876543210','thangpham@gmail.com')
select * from Nguoidung

-- ========== Bảng địa chỉ người dùng ===========
create table DiaChiND
 ( MaDC int IDENTITY(1,1),
   MaND int,
   DiaChi nvarchar(200),
   DiaChiCuThe nvarchar(400),  
   SoDienThoai varchar(20)
  constraint Pri_DiaChiND primary key(MaDC )
  constraint For_DiaChiND_Nguoidung foreign key(MaND) references Nguoidung (MaND) 
  )
INSERT INTO DiaChiND (MaND, DiaChi, DiaChiCuThe, SoDienThoai)
VALUES ('1', N'Tỉnh Long An, Huyện Cần Đươc, Xã Mỹ Lệ', N'Số nhà 255, Ấp Chợ Trạm, Xã Mỹ Lệ, Huyện Cần Đước, Tỉnh Long An','0123456789')
INSERT INTO DiaChiND (MaND, DiaChi, DiaChiCuThe, SoDienThoai)
VALUES ('2', N'TPHCM, Huyện Hốc Môn, Xã Bà Điểm', N'Số nhà 556 Khu Phố A, Thành phố Hồ Chí Minh, Huyện Hốc Môn, Xã Bà Điểm','9876543210')
select * from DiaChiND

-- ========== Bảng loại phương thức thanh toán của người dùng ===========
create table ThanhToanND
 ( MaTT int IDENTITY(1,1),
   MaND int,
   LoaiPTTT nvarchar(100), -- loại phương thức thanh toán  thẻ tín dụng, thẻ ghi nợ, PayPal, ví điện tử, tiền mặt, ...
   NhaCC varchar(100),   -- nhà cung cấp dịch vụ phương thức thanh toán, PayPal, Momo, ZaloPay, ...
   SoTK varchar(20), -- số tài khoản 
   NgayHetHan date, -- bắt người dùng nhập 12/25 ( 01/12/2025) => như theo trong ngày hết hạn của thẻ
  constraint Pri_ThanhToanND primary key(MaTT ),
  constraint For_ThanhToanND_Nguoidung foreign key(MaND) references Nguoidung (MaND) 
  )

INSERT INTO ThanhToanND (MaND, LoaiPTTT, NhaCC, SoTK, NgayHetHan)
VALUES (1, N'Tiền mặt', NULL, NULL, NULL);
INSERT INTO ThanhToanND (MaND, LoaiPTTT, NhaCC, SoTK, NgayHetHan)
VALUES (1, N'Chuyển khoản', 'TPBank', '0522944708', '2025-12-01');
select * from ThanhToanND

-- ========== Bảng loại loại sản phẩm ===========
create table LoaiSP
 ( MaLoaiSP int IDENTITY(1,1),
   TenLoaiSP nvarchar(50),
   MoTa nvarchar(200),   
  constraint Pri_LoaiSP primary key(MaLoaiSP )
  )
INSERT INTO LoaiSP (TenLoaiSP, MoTa)
VALUES (N'Smartphone', 'Mobile phones')
INSERT INTO LoaiSP (TenLoaiSP, MoTa)
VALUES	(N'Laptop', 'Computers and laptops')
select * from LoaiSP

-- ========== Bảng giảm giá sản phẩm ===========
create table GiamGiaSP
 ( MaGGSP int IDENTITY(1,1),
   TenGG nvarchar(50),
   MoTa nvarchar(200),
   PhanTramGG decimal,
   TrangThaiGG bit,
   NgayGG datetime,
  constraint Pri_GiamGiaSP primary key(MaGGSP )
  )
INSERT INTO GiamGiaSP (TenGG, MoTa, PhanTramGG, TrangThaiGG, NgayGG)
VALUES (N'Giảm giá đầu xuân', N'Giảm 10% cho tất cả sản phẩm',10.0,1,GETDATE())
INSERT INTO GiamGiaSP (TenGG, MoTa, PhanTramGG, TrangThaiGG, NgayGG)
VALUES (N'Giảm giá mùa hè', N'Mua Iphone và MacBook được giảm 15%',15.0,1, GETDATE())
select * from GiamGiaSP

-- ========== Bảng tồn kho sản phẩm ===========
create table SPTonKho
 ( MaSPTK int IDENTITY(1,1),
   SoLuong int  
  constraint Pri_TonKhoSP primary key(MaSPTK )
  )

  INSERT INTO SPTonKho (SoLuong)
VALUES (10)
  INSERT INTO SPTonKho (SoLuong)
VALUES (20)
  INSERT INTO SPTonKho (SoLuong)
VALUES (30)
  INSERT INTO SPTonKho (SoLuong)
VALUES (40)
select * from SPTonKho

-- ========== Bảng sản phẩm ===========
create table SanPham
 ( MaSP int IDENTITY(1,1),
   TenSP nvarchar(100),
   MoTa nvarchar(200),
   SKU varchar (30), -- mã của sản sản phẩm
   MaLoaiSP int,
   MaSPTK int,    -- mã tồn kho
   Gia decimal,
   MaGGSP int, -- mã giảm giá sản phẩm
   NgayTao datetime,
  constraint Pri_SanPham primary key(MaSP),
  constraint Uni_MaSPTK unique (MaSPTK),
  constraint For_SanPham_LoaiSP foreign key(MaLoaiSP) references LoaiSP (MaLoaiSP),
  constraint For_SanPham_SPTonKho foreign key(MaSPTK) references SPTonKho (MaSPTK),
  constraint For_SanPham_GiamGiaSP foreign key(MaGGSP) references GiamGiaSP (MaGGSP)
  )


INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'iPhone 14 Pro', N'Điện thoại thông minh mới nhất của Apple', 'A001', 1, 1, 234500000,1,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'Galaxy S22 Ultra', N'Điện thoại thông minh hàng đầu mới nhất của Samsung', 'A002', 1, 2, 224900000,2,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'MacBook Pro 16"', N'Laptop cao cấp mới nhất của Apple', 'A003', 2, 3, 287500000,1,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'Surface Laptop', N'Máy tính xách tay cao cấp của Microsoft ', 'A004', 2, 4, 204500000,2,GETDATE())

 select * from SanPham
select * from SanPham inner join LoaiSP on SanPham.MaLoaiSP=LoaiSP.MaLoaiSP inner join
				SPTonKho on SPTonKho.MaSPTK=SanPham.MaSPTK inner join GiamGiaSP on GiamGiaSP.MaGGSP=SanPham.MaGGSP


