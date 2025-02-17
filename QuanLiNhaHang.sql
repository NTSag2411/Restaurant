USE [QUANLINHAHANG]
GO


ALTER DATABASE [QUANLINHAHANG] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLINHAHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLINHAHANG] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET ARITHABORT OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QUANLINHAHANG] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QUANLINHAHANG] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QUANLINHAHANG] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QUANLINHAHANG] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET  ENABLE_BROKER
GO
ALTER DATABASE [QUANLINHAHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QUANLINHAHANG] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QUANLINHAHANG] SET  READ_WRITE
GO
ALTER DATABASE [QUANLINHAHANG] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QUANLINHAHANG] SET  MULTI_USER
GO
ALTER DATABASE [QUANLINHAHANG] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QUANLINHAHANG] SET DB_CHAINING OFF
GO
USE [QUANLINHAHANG]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nvarchar](255) NOT NULL,
	[TenNhanVien] [nvarchar](255) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[SoDienThoai] [nvarchar](255) NOT NULL,
	[ChucVu] [nvarchar](255) NOT NULL,
	[Luong] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON
INSERT [dbo].[NhanVien] ([ID], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [SoDienThoai], [ChucVu], [Luong], [DiaChi]) VALUES (35, N'NV001', N'Tran Viet Truong', CAST(0x00008C6C00000000 AS DateTime), N'Nam', N'0333100001', N'Nhan Vien', N'10000455', N'Hung Yen')
INSERT [dbo].[NhanVien] ([ID], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [SoDienThoai], [ChucVu], [Luong], [DiaChi]) VALUES (36, N'NV002', N'Tran Viet Truong', CAST(0x00008C6C00000000 AS DateTime), N'Nam', N'0333100001', N'Nhan Vien', N'10000455', N'Hung Yen')
INSERT [dbo].[NhanVien] ([ID], [MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [SoDienThoai], [ChucVu], [Luong], [DiaChi]) VALUES (37, N'NV003', N'Tran Viet Truong', CAST(0x00008C6C00000000 AS DateTime), N'Nam', N'0333100001', N'Nhan Vien', N'10000455', N'Hung Yen')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](255) NOT NULL,
	[DonViTinh] [nvarchar](255) NOT NULL,
	[Gia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MONAN] ON
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (40, N'Thịt Lợn Quay Xá Xíu', N'Đĩa', 118000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (41, N'Thịt Ba Chỉ Kho Tộ', N'Đĩa', 78000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (42, N'Chân Giò Nướng', N'Đĩa', 98000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (43, N'Sường Xào Chua Ngọt', N'Đĩa', 113000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (44, N'Gà Quay Mật Ong', N'Đĩa', 86000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (45, N'Gà Nướng Hấp Xả', N'Đĩa', 126000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (46, N'Gà Rang Muối', N'Đĩa', 66000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (47, N'Vịt Xào Lăn', N'Đĩa', 58000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (48, N'Vịt Quay Thượn Hạng', N'Đĩa', 78000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (49, N'Thịt Bò Xào Hành Tây', N'Đĩa', 158000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (50, N'Sườn Bò Ngũ Vị', N'Đĩa', 168000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (51, N'Bò Lúc Lắc', N'Đĩa', 145000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (52, N'Tôm Sú Chiên Sả', N'Con', 26000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (53, N'Tôm Hùm', N'Con', 750000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (54, N'Ngao Hấp Sả', N'Đĩa', 150000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (55, N'Hàu Nướng Phô Mai', N'Đĩa', 120000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (56, N'Ngao Húng Quế', N'Đĩa', 1130000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (57, N'Cua Hoàng Đế', N'Con', 600000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (58, N'Cua Xào Me', N'Con', 35000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (59, N'Chả Cá Hà Nội', N'Đĩa', 55000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (60, N'Cơm Tấm', N'Bát', 15000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (61, N'Cơm Chiên Trứng', N'Bát', 20000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (62, N'Cơm Rang Thịt Bò', N'Bát', 30000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (63, N'Cơm Trắng', N'Bát', 10000)
INSERT [dbo].[MONAN] ([ID], [TenMonAn], [DonViTinh], [Gia]) VALUES (64, N'Lẩu Hải Sản', N'Nồi', 438000)
SET IDENTITY_INSERT [dbo].[MONAN] OFF
SELECT * FROM MONAN;
SELECT * FROM BAN;
SELECT * FROM HoaDon;
SELECT * FROM HoaDonInFo;
select HoaDon.ID,BAN.TenBan,HoaDon.NgayThanhToan,HoaDon.SoTien from HoaDon,BAN where HoaDon.IDBan = BAN.ID AND TinhTrang = 1 AND NgayThanhToan >= '"+tuNgay+"' AND NgayThanhToan <= '"+denNgay+"';
DateTime.ParseExact


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](255) NOT NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAN] ON
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (50, N'Bàn 1', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (51, N'Bàn 2', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (53, N'Bàn 4', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (54, N'Bàn 5', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (55, N'Bàn 6', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (56, N'Bàn 7', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (57, N'Bàn 8', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (58, N'Bàn 9 ', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (59, N'Bàn 10', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (60, N'Bàn 11', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (61, N'Bàn 12', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (62, N'Bàn 13', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (63, N'Bàn 14', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (64, N'Bàn 15', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (65, N'Bàn 16', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (66, N'Bàn 17', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (67, N'Bàn 18', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (68, N'Bàn 19', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (69, N'Bàn 20', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (70, N'Bàn 21', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (71, N'Bàn 22', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (72, N'Bàn 23', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (73, N'Bàn 24', N'Trống')
INSERT [dbo].[BAN] ([ID], [TenBan], [TrangThai]) VALUES (78, N'Bàn 25', N'Trống')
SET IDENTITY_INSERT [dbo].[BAN] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBan] [int] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[NgayThanhToan] [datetime] NULL,
	[SoTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (269, 50, 1, CAST(0x0000A98D00000000 AS DateTime), 126000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (271, 78, 1, CAST(0x0000A98D00000000 AS DateTime), 272000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (272, 59, 1, CAST(0x0000A98D00000000 AS DateTime), 966000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (273, 59, 1, CAST(0x0000A98D00000000 AS DateTime), 229000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (275, 58, 1, CAST(0x0000A98E00000000 AS DateTime), 191000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (276, 50, 1, CAST(0x0000A98E00000000 AS DateTime), 400000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (277, 58, 1, CAST(0x0000A98E00000000 AS DateTime), 58000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (278, 58, 1, CAST(0x0000A98E00000000 AS DateTime), 387000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (279, 51, 1, CAST(0x0000A98E00000000 AS DateTime), 632000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (280, 60, 1, CAST(0x0000A98E00000000 AS DateTime), 896000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (281, 62, 1, CAST(0x0000A98E00000000 AS DateTime), 136000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (282, 57, 1, CAST(0x0000A98E00000000 AS DateTime), 239000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (283, 57, 1, CAST(0x0000A98E00000000 AS DateTime), 432000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (284, 59, 1, CAST(0x0000A98E00000000 AS DateTime), 507000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (285, 66, 1, CAST(0x0000A98E00000000 AS DateTime), 583000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (286, 61, 1, CAST(0x0000A98F00000000 AS DateTime), 525000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (287, 62, 1, CAST(0x0000A98F00000000 AS DateTime), 467000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (288, 57, 1, CAST(0x0000A98F00000000 AS DateTime), 2839000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (289, 58, 1, CAST(0x0000A98F00000000 AS DateTime), 179000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (290, 58, 1, CAST(0x0000A98F00000000 AS DateTime), 750000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (291, 57, 1, CAST(0x0000A98F00000000 AS DateTime), 58000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (292, 73, 1, CAST(0x0000A98F00000000 AS DateTime), 423000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (293, 61, 1, CAST(0x0000A98F00000000 AS DateTime), 295000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (294, 58, 1, CAST(0x0000A99000000000 AS DateTime), 1235000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (295, 61, 1, CAST(0x0000A99000000000 AS DateTime), 486000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (296, 56, 1, CAST(0x0000A99100000000 AS DateTime), 472000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (297, 59, 1, CAST(0x0000A99100000000 AS DateTime), 634000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (298, 56, 1, CAST(0x0000A99100000000 AS DateTime), 312000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (299, 59, 1, CAST(0x0000A99100000000 AS DateTime), 447000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (300, 53, 1, CAST(0x0000A99200000000 AS DateTime), 660000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (302, 55, 1, CAST(0x0000A99200000000 AS DateTime), 653600)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (303, 54, 1, CAST(0x0000A99200000000 AS DateTime), 319200)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (304, 56, 1, CAST(0x0000A99300000000 AS DateTime), 320000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (305, 59, 1, CAST(0x0000A99400000000 AS DateTime), 1021000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (306, 57, 1, CAST(0x0000A99500000000 AS DateTime), 921000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (307, 68, 1, CAST(0x0000A99700000000 AS DateTime), 1053070)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (309, 78, 1, CAST(0x0000A99900000000 AS DateTime), 390000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (310, 55, 1, CAST(0x0000A99A00000000 AS DateTime), 947000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (312, 60, 1, CAST(0x0000A99A00000000 AS DateTime), 296000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (313, 61, 1, CAST(0x0000A99A00000000 AS DateTime), 276000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (314, 53, 1, CAST(0x0000A99A00000000 AS DateTime), 240000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (315, 63, 1, CAST(0x0000A99A00000000 AS DateTime), 481000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (316, 54, 1, CAST(0x0000A99A00000000 AS DateTime), 291000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (317, 50, 1, CAST(0x0000A99B00000000 AS DateTime), 713000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (318, 60, 1, CAST(0x0000A99B00000000 AS DateTime), 661000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (319, 55, 1, CAST(0x0000A99C00000000 AS DateTime), 1187000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (320, 67, 1, CAST(0x0000A99E00000000 AS DateTime), 1094400)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (321, 67, 1, CAST(0x0000A99E00000000 AS DateTime), 1125000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (322, 59, 1, CAST(0x0000A99E00000000 AS DateTime), 328000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (323, 60, 1, CAST(0x0000A99F00000000 AS DateTime), 2002000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (324, 50, 1, CAST(0x0000A99F00000000 AS DateTime), 1251000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (325, 53, 1, CAST(0x0000A99F00000000 AS DateTime), 462000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (326, 56, 1, CAST(0x0000A9A000000000 AS DateTime), 481000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (327, 57, 1, CAST(0x0000A9A000000000 AS DateTime), 846000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (328, 55, 1, CAST(0x0000A9A100000000 AS DateTime), 696000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (332, 78, 1, CAST(0x0000A9A100000000 AS DateTime), 543000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (333, 50, 1, CAST(0x0000A9A100000000 AS DateTime), 539000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (334, 59, 1, CAST(0x0000A9A100000000 AS DateTime), 360000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (335, 60, 1, CAST(0x0000A9A100000000 AS DateTime), 1498000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (337, 57, 1, CAST(0x0000A9A100000000 AS DateTime), 749000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (338, 56, 1, CAST(0x0000A9A100000000 AS DateTime), 4167000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (339, 53, 1, CAST(0x0000A9A100000000 AS DateTime), 762000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (340, 61, 1, CAST(0x0000A9A200000000 AS DateTime), 403000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (341, 59, 1, CAST(0x0000A9A200000000 AS DateTime), 525000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (342, 50, 1, CAST(0x0000A9A200000000 AS DateTime), 302000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (343, 50, 1, CAST(0x0000A9A200000000 AS DateTime), 302000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (344, 53, 1, CAST(0x0000A9A200000000 AS DateTime), 496000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (345, 57, 1, CAST(0x0000A9A200000000 AS DateTime), 164000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (346, 60, 1, CAST(0x0000A9A200000000 AS DateTime), 194000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (347, 62, 1, CAST(0x0000A9A200000000 AS DateTime), 327000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (348, 58, 1, CAST(0x0000A9A200000000 AS DateTime), 375000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (349, 56, 1, CAST(0x0000A9A200000000 AS DateTime), 422000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (350, 54, 1, CAST(0x0000A9A200000000 AS DateTime), 328000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (351, 55, 1, CAST(0x0000A9A200000000 AS DateTime), 1052000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (352, 50, 1, CAST(0x0000A9A200000000 AS DateTime), 492000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (353, 58, 1, CAST(0x0000A9A200000000 AS DateTime), 422000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (354, 58, 1, CAST(0x0000A9A200000000 AS DateTime), 289000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (355, 58, 1, CAST(0x0000A9A200000000 AS DateTime), 397000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (359, 56, 1, CAST(0x0000A9A200000000 AS DateTime), 481000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (360, 51, 1, CAST(0x0000A9A300000000 AS DateTime), 585000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (361, 60, 1, CAST(0x0000A9A300000000 AS DateTime), 903000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (362, 56, 1, CAST(0x0000A9A300000000 AS DateTime), 1678000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (363, 57, 1, CAST(0x0000A9A500000000 AS DateTime), 445000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (364, 58, 1, CAST(0x0000A9A600000000 AS DateTime), 914000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (365, 53, 1, CAST(0x0000A9A600000000 AS DateTime), 1647000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (366, 54, 1, CAST(0x0000A9A600000000 AS DateTime), 1765000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (367, 65, 1, CAST(0x0000A9A600000000 AS DateTime), 1195000)
INSERT [dbo].[HoaDon] ([ID], [IDBan], [TinhTrang], [NgayThanhToan], [SoTien]) VALUES (368, 62, 1, CAST(0x0000A9A700000000 AS DateTime), 1110000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonInFo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NOT NULL,
	[IDMonAn] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BAN] ADD  DEFAULT (N'Trống') FOR [TrangThai]
GO

ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IDBan])
REFERENCES [dbo].[BAN] ([ID])
GO

ALTER TABLE [dbo].[HoaDonInFo]  WITH CHECK ADD FOREIGN KEY([IDMonAn])
REFERENCES [dbo].[MONAN] ([ID])
GO

ALTER TABLE [dbo].[HoaDonInFo]  WITH CHECK ADD FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
GO
