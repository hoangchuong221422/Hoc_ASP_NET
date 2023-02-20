USE [QLNhanVien]
GO
SET IDENTITY_INSERT [dbo].[Phong] ON
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (1, N'Phòng tổ chức nhân sự')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (2, N'Phòn kinh doanh')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (3, N'Phòng tài chính kế toán')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (4, N'Phòng sản xuất ')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong]) VALUES (5, N'Phòng tiếp thị sản phẩm')
SET IDENTITY_INSERT [dbo].[Phong] OFF

SET IDENTITY_INSERT [dbo].[NhanVien] ON
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (1, N'Nguyễn Văn', N'Hải', 1, CAST(0x06020B00 AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (2, N'Trần Văn', N'Chính', 1, CAST(0xBDF90A00 AS Date), N'TP.HCM', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (3, N'Trần Anh', N'Tuấn', 1, CAST(0x07100B00 AS Date), N'Long An', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (4, N'Lê Khắc', N'Chương', 1, CAST(0x7DF90A00 AS Date), N'Sài Gòn', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (5, N'Trần Thanh ', N'Mai', 0, CAST(0x7F160B00 AS Date), N'Bến Tre', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (6, N'Trần Thị Thu ', N'Thủy', 0, CAST(0x3BFA0A00 AS Date), N'Sài Gòn ', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (7, N'Trần Thị', N'Thanh', 0, CAST(0x4F0B0B00 AS Date), N'TP.HCM', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (8, N'Lê Thanh', N'Liêm', 1, CAST(0x010A0B00 AS Date), N'TP.hcm', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (9, N'Nguyễn Phú', N'Thành', 1, CAST(0xEB080B00 AS Date), N'Sài Gòn', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (10, N'Bùi Tấn ', N'Tài', 1, CAST(0x8D110B00 AS Date), N'Đồng nai', 2)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (11, N'Trần Thị Hoài', N'Thương', 0, CAST(0xC4170B00 AS Date), N'Long An', 3)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (12, N'Mạc Anh ', N'Khoa', 1, CAST(0xD0FB0A00 AS Date), N'Sài Gòn', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (13, N'Trương Thị ', N'Hoa', 0, CAST(0x35FC0A00 AS Date), N'Sài Gòn', 1)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (14, N'Trần Thị Thu ', N'Thủy', 0, CAST(0x66210B00 AS Date), N'TP.HCM', 3)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF

