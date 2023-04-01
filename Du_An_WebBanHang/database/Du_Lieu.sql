
-- ========== Bảng người dùng ===========
INSERT INTO Nguoidung (TenDangNhap, MatKhau, Ho, Ten, SoDienThoai,email)
VALUES ('chuonghuynh', 'chuonghuynh123', N'Huỳnh Hoàng', N'Chương', '1234567890', 'chuonghuynh@gmail.com')
INSERT INTO Nguoidung (TenDangNhap, MatKhau, Ho, Ten, SoDienThoai,email)
VALUES ('phamthang', 'phamthang123', N'Phạm Quốc', N'Thắng', '9876543210','thangpham@gmail.com')
select * from Nguoidung

-- ========== Bảng địa chỉ người dùng =========== 
INSERT INTO DiaChiND (MaND, DiaChi, DiaChiCuThe, SoDienThoai)
VALUES ('1', N'Tỉnh Long An, Huyện Cần Đươc, Xã Mỹ Lệ', N'Số nhà 255, Ấp Chợ Trạm, Xã Mỹ Lệ, Huyện Cần Đước, Tỉnh Long An','0123456789')
INSERT INTO DiaChiND (MaND, DiaChi, DiaChiCuThe, SoDienThoai)
VALUES ('2', N'TPHCM, Huyện Hốc Môn, Xã Bà Điểm', N'Số nhà 556 Khu Phố A, Thành phố Hồ Chí Minh, Huyện Hốc Môn, Xã Bà Điểm','9876543210')
select * from DiaChiND

-- ========== Bảng loại phương thức thanh toán của người dùng ===========
INSERT INTO ThanhToanND (MaND, LoaiPTTT, NhaCC, SoTK, NgayHetHan)
VALUES (1, N'Tiền mặt', NULL, NULL, NULL);
INSERT INTO ThanhToanND (MaND, LoaiPTTT, NhaCC, SoTK, NgayHetHan)
VALUES (1, N'Chuyển khoản', 'TPBank', '0522944708', '2025-12-01');
select * from ThanhToanND

-- ========== Bảng loại sản phẩm ===========
INSERT INTO LoaiSP (TenLoaiSP, MoTa)
VALUES (N'Smartphone', 'Mobile phones')
INSERT INTO LoaiSP (TenLoaiSP, MoTa)
VALUES	(N'Laptop', 'Computers and laptops')
select * from LoaiSP

-- ========== Bảng giảm giá sản phẩm ===========
INSERT INTO GiamGiaSP (TenGG, MoTa, PhanTramGG, TrangThaiGG, NgayGG)
VALUES (N'Giảm giá đầu xuân', N'Giảm 10% cho tất cả sản phẩm',10.0,1,GETDATE())
INSERT INTO GiamGiaSP (TenGG, MoTa, PhanTramGG, TrangThaiGG, NgayGG)
VALUES (N'Giảm giá mùa hè', N'Mua Iphone và MacBook được giảm 15%',15.0,1, GETDATE())
select * from GiamGiaSP

-- ========== Bảng tồn kho sản phẩm ===========
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
INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'iPhone 14 Pro', N'Điện thoại thông minh mới nhất của Apple', 'A001', 1, 1, 234500000,1,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'Galaxy S22 Ultra', N'Điện thoại thông minh hàng đầu mới nhất của Samsung', 'A002', 1, 2, 224900000,2,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'MacBook Pro 16"', N'Laptop cao cấp mới nhất của Apple', 'A003', 2, 3, 287500000,1,GETDATE())

INSERT INTO SanPham (TenSP, MoTa, SKU, MaLoaiSP, MaSPTK, Gia, MaGGSP, NgayTao)
VALUES (N'Surface Laptop', N'Máy tính xách tay cao cấp của Microsoft ', 'A004', 2, 4, 204500000,2,GETDATE())

