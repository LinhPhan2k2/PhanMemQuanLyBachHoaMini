USE [QL_BACHHOA_5]
GO
/****** Object:  Table [dbo].[CHITIET_HD]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HD](
	[MASP] [int] NOT NULL,
	[MAHD] [char](20) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CHITIET_HD] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_PN]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_PN](
	[MAPN] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SL] [int] NULL,
	[GIANHAP] [money] NULL,
	[THANHTIEN] [money] NULL,
 CONSTRAINT [PK_CHITIET_PN] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_QUYEN]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_QUYEN](
	[MACT] [int] IDENTITY(1,1) NOT NULL,
	[MAQUYEN] [int] NOT NULL,
	[TENCT] [nvarchar](50) NULL,
	[CAP_PHEP] [int] NULL,
 CONSTRAINT [PK_CHITIET_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MACT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOITRA]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOITRA](
	[MADT] [int] IDENTITY(1,1) NOT NULL,
	[MAHD] [char](20) NOT NULL,
	[NGAYDOI] [datetime] NULL,
 CONSTRAINT [PK_DOITRA] PRIMARY KEY CLUSTERED 
(
	[MADT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIA]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIA](
	[MASP] [int] NOT NULL,
	[MAKL] [int] NOT NULL,
	[GIABAN] [money] NULL,
	[SOLUONG] [int] NULL,
 CONSTRAINT [PK_GIA] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MAKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [char](20) NOT NULL,
	[SDT_KH] [char](50) NOT NULL,
	[MANV] [int] NOT NULL,
	[NGAYLAP] [datetime] NULL,
	[TONGTIEN] [money] NULL,
	[TRANGTHAI_DH] [nvarchar](50) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[SDT_KH] [char](50) NOT NULL,
	[TENKH] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[EMAIL] [char](50) NULL,
	[MATKHAU] [char](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[SDT_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOILUONG]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOILUONG](
	[MAKL] [int] IDENTITY(1,1) NOT NULL,
	[KHOILUONG] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHOILUONG] PRIMARY KEY CLUSTERED 
(
	[MAKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [int] IDENTITY(1,1) NOT NULL,
	[TENNCC] [nvarchar](100) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SDT] [char](20) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[TENNV] [nvarchar](100) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[SDT] [char](20) NULL,
	[MATKHAU] [char](50) NULL,
	[CHUCVU] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMHANG]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMHANG](
	[MANH] [int] IDENTITY(1,1) NOT NULL,
	[TENNH] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHOMHANG] PRIMARY KEY CLUSTERED 
(
	[MANH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMQUYEN]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMQUYEN](
	[MAQUYEN] [int] IDENTITY(1,1) NOT NULL,
	[TENQUYEN] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHOMQUYEN] PRIMARY KEY CLUSTERED 
(
	[MAQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NQ_NV]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NQ_NV](
	[MAQUYEN] [int] NOT NULL,
	[MANV] [int] NOT NULL,
	[MA_Q] [int] NOT NULL,
	[CAP_PHEP] [int] NULL,
 CONSTRAINT [PK_NQ_NV] PRIMARY KEY CLUSTERED 
(
	[MAQUYEN] ASC,
	[MANV] ASC,
	[MA_Q] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [int] IDENTITY(1,1) NOT NULL,
	[MANCC] [int] NOT NULL,
	[NGAYNHAP] [datetime] NULL,
	[TONGNHAP] [money] NULL,
	[MANV] [int] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[MANH] [int] NOT NULL,
	[TENSP] [nvarchar](100) NULL,
	[HINH] [char](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TATCAQUYEN]    Script Date: 9/27/2023 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TATCAQUYEN](
	[MA_Q] [int] IDENTITY(1,1) NOT NULL,
	[TEN_Q] [nvarchar](50) NULL,
 CONSTRAINT [PK_TATCAQUYEN] PRIMARY KEY CLUSTERED 
(
	[MA_Q] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (1, N'1                   ', 1)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (1, N'12                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (2, N'1                   ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (3, N'1                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (3, N'14                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (5, N'15                  ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (7, N'13                  ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (7, N'15                  ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (8, N'13                  ', 7)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (9, N'14                  ', 8)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (10, N'13                  ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (10, N'2                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (10, N'ONL002              ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (12, N'2                   ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (12, N'6                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (12, N'ONL002              ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (15, N'15                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (17, N'3                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (18, N'15                  ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (18, N'6                   ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (19, N'16                  ', 7)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (20, N'2                   ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (20, N'ONL002              ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (20, N'ONL003              ', 1)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (22, N'3                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (22, N'9                   ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (23, N'12                  ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (23, N'14                  ', 9)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (23, N'9                   ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (24, N'3                   ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (24, N'7                   ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (25, N'4                   ', 1)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (26, N'8                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (27, N'18                  ', 8)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (27, N'ONL001              ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (30, N'11                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (30, N'4                   ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (31, N'10                  ', 10)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (32, N'18                  ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (32, N'4                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (32, N'7                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (32, N'ONL001              ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (33, N'10                  ', 23)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (35, N'7                   ', 6)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (36, N'16                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (37, N'16                  ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (38, N'17                  ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (38, N'ONL005              ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (42, N'5                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (42, N'ONL004              ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (44, N'8                   ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (45, N'10                  ', 10)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (45, N'11                  ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (45, N'5                   ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (45, N'8                   ', 1)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (45, N'ONL004              ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (49, N'17                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (49, N'ONL005              ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (50, N'17                  ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (50, N'19                  ', 5)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (50, N'5                   ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (50, N'ONL004              ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (50, N'ONL005              ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (55, N'6                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (57, N'20                  ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (58, N'20                  ', 4)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (59, N'9                   ', 3)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (60, N'12                  ', 2)
INSERT [dbo].[CHITIET_HD] ([MASP], [MAHD], [SL]) VALUES (60, N'19                  ', 6)
GO
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (1, 1, 100, 45000.0000, 4500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (1, 2, 100, 35000.0000, 3500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (1, 3, 100, 40000.0000, 4000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (2, 7, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (2, 8, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (2, 9, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (3, 43, 100, 40000.0000, 4000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (3, 44, 100, 56000.0000, 5600000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (3, 49, 100, 68000.0000, 6800000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (4, 22, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (4, 23, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (4, 24, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (5, 32, 100, 50000.0000, 5000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (5, 33, 100, 52000.0000, 5200000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (5, 34, 100, 140000.0000, 14000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (6, 11, 100, 330000.0000, 33000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (6, 14, 100, 20000.0000, 2000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (6, 18, 100, 90000.0000, 9000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (7, 12, 100, 400000.0000, 40000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (7, 13, 100, 360000.0000, 36000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (7, 15, 100, 25000.0000, 2500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (7, 16, 100, 46000.0000, 4600000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (8, 55, 100, 365000.0000, 36500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (8, 56, 100, 90000.0000, 9000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (9, 8, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (9, 9, 100, 5000.0000, 500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (9, 10, 100, 20000.0000, 2000000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (10, 47, 100, 36000.0000, 3600000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (10, 48, 100, 55000.0000, 5500000.0000)
INSERT [dbo].[CHITIET_PN] ([MAPN], [MASP], [SL], [GIANHAP], [THANHTIEN]) VALUES (10, 50, 100, 68000.0000, 6800000.0000)
GO
SET IDENTITY_INSERT [dbo].[CHITIET_QUYEN] ON 

INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (1, 1, N'create', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (2, 1, N'edit', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (3, 1, N'delete', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (4, 1, N'view', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (5, 2, N'create', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (6, 2, N'edit', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (7, 2, N'delete', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (8, 2, N'view', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (9, 3, N'create', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (10, 3, N'edit', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (11, 3, N'delete', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (12, 3, N'view', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (13, 4, N'create', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (14, 4, N'edit', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (15, 4, N'delete', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (16, 4, N'view', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (17, 5, N'create', 1)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (18, 5, N'edit', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (19, 5, N'delete', 0)
INSERT [dbo].[CHITIET_QUYEN] ([MACT], [MAQUYEN], [TENCT], [CAP_PHEP]) VALUES (20, 5, N'view', 1)
SET IDENTITY_INSERT [dbo].[CHITIET_QUYEN] OFF
GO
SET IDENTITY_INSERT [dbo].[DOITRA] ON 

INSERT [dbo].[DOITRA] ([MADT], [MAHD], [NGAYDOI]) VALUES (1, N'2                   ', CAST(N'2023-09-27T00:00:00.000' AS DateTime))
INSERT [dbo].[DOITRA] ([MADT], [MAHD], [NGAYDOI]) VALUES (2, N'3                   ', CAST(N'2023-09-27T00:00:00.000' AS DateTime))
INSERT [dbo].[DOITRA] ([MADT], [MAHD], [NGAYDOI]) VALUES (3, N'1                   ', CAST(N'2023-09-27T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DOITRA] OFF
GO
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (1, 1, 55000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (1, 4, 30000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (2, 2, 45000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (2, 5, 30000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (3, 3, 50000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (4, 3, 50000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (5, 3, 50000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (6, 4, 16000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (7, 5, 15000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (8, 4, 15000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (9, 5, 15000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (10, 5, 30000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (11, 6, 340000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (12, 6, 410000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (13, 7, 370000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (14, 6, 30000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (15, 6, 35000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (16, 6, 56000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (17, 6, 350000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (18, 6, 100000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (19, 6, 28000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (20, 6, 35000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (21, 8, 7000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (22, 8, 7000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (23, 8, 8000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (24, 8, 9000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (25, 8, 9000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (26, 3, 20000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (27, 1, 36000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (28, 4, 18000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (29, 5, 20000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (30, 8, 9000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (31, 9, 60000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (32, 9, 60000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (33, 9, 62000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (34, 10, 150000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (35, 10, 150000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (36, 10, 170000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (37, 11, 105000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (38, 12, 35000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (39, 13, 65000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (40, 13, 35000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (41, 14, 42000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (42, 14, 42000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (43, 14, 60000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (44, 14, 66000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (45, 15, 65000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (46, 14, 58000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (47, 7, 46000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (48, 14, 65000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (49, 16, 78000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (50, 16, 78000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (51, 13, 115000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (51, 17, 294000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (52, 13, 140000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (53, 13, 150000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (54, 13, 135000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (55, 17, 375000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (56, 18, 100000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (57, 19, 165000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (58, 20, 120000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (59, 20, 125000.0000, 100)
INSERT [dbo].[GIA] ([MASP], [MAKL], [GIABAN], [SOLUONG]) VALUES (60, 21, 194000.0000, 100)
GO
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'1                   ', N'0341112113                                        ', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), 150000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'10                  ', N'0341112114                                        ', 2, CAST(N'2023-09-05T00:00:00.000' AS DateTime), 187000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'11                  ', N'0341112115                                        ', 1, CAST(N'2023-09-06T00:00:00.000' AS DateTime), 74000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'12                  ', N'0341112116                                        ', 1, CAST(N'2023-09-07T00:00:00.000' AS DateTime), 257000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'13                  ', N'0341112117                                        ', 1, CAST(N'2023-09-08T00:00:00.000' AS DateTime), 60000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'14                  ', N'0341112118                                        ', 1, CAST(N'2023-09-09T00:00:00.000' AS DateTime), 73000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'15                  ', N'0341112119                                        ', 1, CAST(N'2023-09-10T00:00:00.000' AS DateTime), 200000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'16                  ', N'0341112120                                        ', 4, CAST(N'2023-09-10T00:00:00.000' AS DateTime), 303000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'17                  ', N'0341112113                                        ', 4, CAST(N'2023-09-11T00:00:00.000' AS DateTime), 191000.0000, N'Chưa giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'18                  ', N'0341112114                                        ', 4, CAST(N'2023-09-12T00:00:00.000' AS DateTime), 96000.0000, N'Chưa giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'19                  ', N'0341112115                                        ', 4, CAST(N'2023-09-12T00:00:00.000' AS DateTime), 272000.0000, N'Chưa giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'2                   ', N'0341112114                                        ', 1, CAST(N'2023-08-16T00:00:00.000' AS DateTime), 475000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'20                  ', N'0341112116                                        ', 4, CAST(N'2023-09-12T00:00:00.000' AS DateTime), 285000.0000, N'Chưa giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'3                   ', N'0341112115                                        ', 1, CAST(N'2023-08-17T00:00:00.000' AS DateTime), 366000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'4                   ', N'0341112116                                        ', 1, CAST(N'2023-08-18T00:00:00.000' AS DateTime), 78000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'5                   ', N'0341112117                                        ', 1, CAST(N'2023-08-09T00:00:00.000' AS DateTime), 185000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'6                   ', N'0341112118                                        ', 2, CAST(N'2023-08-20T00:00:00.000' AS DateTime), 885000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'7                   ', N'0341112119                                        ', 2, CAST(N'2023-08-21T00:00:00.000' AS DateTime), 219000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'8                   ', N'0341112120                                        ', 2, CAST(N'2023-08-21T00:00:00.000' AS DateTime), 151000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'9                   ', N'0341112113                                        ', 2, CAST(N'2023-08-23T00:00:00.000' AS DateTime), 140000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'ONL001              ', N'0341112117                                        ', 1, CAST(N'2023-09-13T00:00:00.000' AS DateTime), 96000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'ONL002              ', N'0341112118                                        ', 1, CAST(N'2023-09-14T00:00:00.000' AS DateTime), 475000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'ONL003              ', N'0341112119                                        ', 1, CAST(N'2023-09-15T00:00:00.000' AS DateTime), 35000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'ONL004              ', N'0341112120                                        ', 1, CAST(N'2023-09-16T00:00:00.000' AS DateTime), 185000.0000, N'Đã giao')
INSERT [dbo].[HOADON] ([MAHD], [SDT_KH], [MANV], [NGAYLAP], [TONGTIEN], [TRANGTHAI_DH]) VALUES (N'ONL005              ', N'0341112115                                        ', 1, CAST(N'2023-09-17T00:00:00.000' AS DateTime), 191000.0000, N'Đã giao')
GO
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112113                                        ', N'Lê Minh Kha', N'TP.HCM', N'khale@gmail.com                                   ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112114                                        ', N'Biện Thanh Nhựt', N'Tây Ninh', N'nhutbien@gmail.com                                ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112115                                        ', N'Vũ Hoàng Tiên', N'Đồng Nai', N'tienvu@gmai.com                                   ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112116                                        ', N'Phan Thị Ánh Linh', N'Bình Thuận', N'linhphan@gmail.com                                ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112117                                        ', N'Huỳnh Thị Kiều Mai', N'Gia Lai', N'maihuynh@gmai.com                                 ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112118                                        ', N'Nguyễn Hữu Trung', N'Trà Vinh', N'trungnguyen@gmail.com                             ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112119                                        ', N'Tống Duy Trường Đạt ', N'Quãng Ngãi', N'dattong@gmail.com                                 ', N'123456                                            ')
INSERT [dbo].[KHACHHANG] ([SDT_KH], [TENKH], [DIACHI], [EMAIL], [MATKHAU]) VALUES (N'0341112120                                        ', N'Hồ Phương Thảo', N'TP.HCM', N'thaoho@gmail.com                                  ', N'123456                                            ')
GO
SET IDENTITY_INSERT [dbo].[KHOILUONG] ON 

INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (1, N'250g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (2, N'220g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (3, N'300g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (4, N'150g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (5, N'100g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (6, N'180ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (7, N'220ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (8, N'50g')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (9, N'3.5 lít')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (10, N'3 kg')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (11, N'3.6 kg')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (12, N'300ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (13, N'600ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (14, N'320ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (15, N'500ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (16, N'1 lít')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (17, N'1.8 lít')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (18, N'750ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (19, N'490ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (20, N'400ml')
INSERT [dbo].[KHOILUONG] ([MAKL], [KHOILUONG]) VALUES (21, N'200ml')
SET IDENTITY_INSERT [dbo].[KHOILUONG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (1, N'Công ty cổ phần thực phẩm Hữu Nghị', N'122 Định Công,  phường Định Công, quận Hoàng Mai, Hà Nội', N'02546649451         ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (2, N'Công ty TNHH Phạm Nguyên', N'Số 613, Đường Trần Đại Nghĩa, Phường Tân Tạo A, quận Bình Tân, thành phố Hồ Chí Minh', N'028 3765 7979       ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (3, N'Công ty TNHH Nước giải khát SUNTORY PEPSICO Việt Nam', N'Tầng 5, Khách sạn Sheraton, 88 Đồng Khởi, Quận 1, TP. HCM', N'08 3821 9437        ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (4, N'Thực Phẩm Đại Thuận - Công Ty Cổ Phần Hàng Tiêu Dùng Đại Thuận', N'Số 42 Củ Chi, P. Vĩnh Hải, TP. Nha Trang, Khánh Hòa', N'08 3836 825         ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (5, N'Gia Dụng Vietcook - Công Ty TNHH Thương Mại Và Đầu Tư Gia Phú', N'Số 61, Hẻm 72/73/40, phố Quan Nhân, Phường Nhân Chính, Quận Thanh Xuân, Hà Nội', N'0903 443 003        ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (6, N'Công ty Cổ phần Sữa Việt Nam (Vinamilk)', N'Số 10, Đường Tân Trào, Phường Tân Phú, Quận 7, TP.HCM', N'(08) 54 155 555     ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (7, N'Công ty Cổ phần sữa TH True Milk', N'Tầng 5 Tòa nhà 97 – 99 Láng Hạ, phường Láng Hạ, quận Đống Đa, TP. Hà Nội', N'02462538566         ')
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [MATKHAU], [CHUCVU]) VALUES (1, N'Phan Linh', N'Nữ', N'0325615846          ', N'123                                               ', N'Quản lý')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [MATKHAU], [CHUCVU]) VALUES (2, N'Huỳnh Mai', N'Nữ', N'0254875633          ', N'123                                               ', N'Nhân viên bán hàng')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [MATKHAU], [CHUCVU]) VALUES (3, N'Trường Đạt', N'Nam', N'0362512585          ', N'123                                               ', N'Nhân viên kho')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [GIOITINH], [SDT], [MATKHAU], [CHUCVU]) VALUES (4, N'Hữu Trung', N'Nam', N'0541254626          ', N'123                                               ', N'Nhân viên bán hàng')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[NHOMHANG] ON 

INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (1, N'Bánh kẹo')
INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (2, N'Sữa')
INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (3, N'Gia vị')
INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (4, N'Vệ sinh nhà cửa')
INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (5, N'Nước giải khát')
INSERT [dbo].[NHOMHANG] ([MANH], [TENNH]) VALUES (6, N'Dầu gội')
SET IDENTITY_INSERT [dbo].[NHOMHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHOMQUYEN] ON 

INSERT [dbo].[NHOMQUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (1, N'Full')
INSERT [dbo].[NHOMQUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (2, N'Admin')
INSERT [dbo].[NHOMQUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (3, N'Read only')
INSERT [dbo].[NHOMQUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (4, N'Edit')
INSERT [dbo].[NHOMQUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (5, N'Create ')
SET IDENTITY_INSERT [dbo].[NHOMQUYEN] OFF
GO
INSERT [dbo].[NQ_NV] ([MAQUYEN], [MANV], [MA_Q], [CAP_PHEP]) VALUES (1, 1, 1, 1)
INSERT [dbo].[NQ_NV] ([MAQUYEN], [MANV], [MA_Q], [CAP_PHEP]) VALUES (2, 1, 2, 1)
INSERT [dbo].[NQ_NV] ([MAQUYEN], [MANV], [MA_Q], [CAP_PHEP]) VALUES (2, 2, 4, 1)
INSERT [dbo].[NQ_NV] ([MAQUYEN], [MANV], [MA_Q], [CAP_PHEP]) VALUES (3, 1, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (1, 1, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 12000000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (2, 2, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 1500000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (3, 3, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 16400000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (4, 4, CAST(N'2023-08-02T00:00:00.000' AS DateTime), 1500000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (5, 5, CAST(N'2023-08-03T00:00:00.000' AS DateTime), 24200000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (6, 6, CAST(N'2023-08-04T00:00:00.000' AS DateTime), 44000000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (7, 7, CAST(N'2023-08-05T00:00:00.000' AS DateTime), 83100000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (8, 5, CAST(N'2023-08-06T00:00:00.000' AS DateTime), 45500000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (9, 2, CAST(N'2023-08-07T00:00:00.000' AS DateTime), 3000000.0000, 3)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MANCC], [NGAYNHAP], [TONGNHAP], [MANV]) VALUES (10, 3, CAST(N'2023-08-08T00:00:00.000' AS DateTime), 15900000.0000, 3)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (1, 1, N'Bánh trứng Tipo hộp', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (2, 1, N'Bánh Trứng Tipo gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (3, 1, N'Bánh xốp nhân phô mai Nabati hộp', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (4, 1, N'Bánh xốp phúc bồn tử Nabati hộp', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (5, 1, N'Bánh xốp nhân socola Nabati hộp', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (6, 1, N'Kẹo cà phê Coffeeshot Cappuccino KOPIKO gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (7, 1, N'Kẹo hương xoài nhân muối ớt Alpenliebe gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (8, 1, N'Kẹo nhai socola hương bạc hà Dynamite Chews gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (9, 1, N'Kẹo dừa giòn nước cốt dừa Bibica Michoco gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (10, 1, N'Kẹo ngậm không đường hương bạc hà Anytime Bluemarine gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (11, 2, N'Thùng 48 hộp sữa tươi hương dâu Vinamilk 100% Sữa tươi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (12, 2, N'Thùng 48 hộp sữa tươi tiệt trùng socola TH true MILK', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (13, 2, N'Thùng 48 bịch sữa tươi tiệt trùng có đường Dalat Milk', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (14, 2, N'Lốc 4 hộp sữa tươi tiệt trùng có đường Dutch Lady', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (15, 2, N'Lốc 4 hộp sữa tươi tiệt trùng socola TH true MILK', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (16, 2, N'Lốc 4 hộp sữa tươi kem vanilla tự nhiên TH true MILK Top Kid Organic', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (17, 2, N'Thùng 48 hộp thức uống lúa mạch Milo Active Go', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (18, 2, N'Thùng 24 túi sữa socola lúa mạch LiF Kun', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (19, 2, N'Lốc 4 hộp sữa lúa mạch hương socola LOF Malto', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (20, 2, N'Lốc 4 hộp sữa lúa mạch vị socola Ovaltine bổ sung canxi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (21, 3, N'Gia vị kho thịt Cholimex gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (22, 3, N'Gia vị kho cá Cholimex gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (23, 3, N'Gia vị hoàn chỉnh thịt kho Knorr gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (24, 3, N'Gia vị nêm sẵn lẩu Thái Fadely', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (25, 3, N'Gia vị hoàn chỉnh dạng xốt thịt kho Chinsu gói', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (26, 3, N'Nước gia vị cô đặc Maggi chai', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (27, 3, N'Xốt gia vị hoàn chỉnh bò kho Barona hũ', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (28, 3, N'Muối chấm Hảo Hảo tôm chua cay hũ', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (29, 3, N'Muối tôm ớt xanh Tây Ninh Dh Foods hũ', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (30, 3, N'Muối tiêu Guyumi hũ', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (31, 4, N'Nước rửa chén Lix siêu sạch hương chanh túi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (32, 4, N'Nước rửa chén Lix siêu sạch hương trà xanh túi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (33, 4, N'Nước rửa chén POWER100 tiết kiệm hương chanh túi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (34, 4, N'Nước giặt Downy vườn hoa thơm ngát túi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (35, 4, N'Nước giặt Downy biển xanh tươi mát túi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (36, 4, N'2 can nước giặt IZI HOME sạch ngát hương', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (37, 4, N'Nước giặt Lix Matic hương nước hoa can', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (38, 4, N'Bình xịt côn trùng Jumbo Vape SUPER hương cam chanh', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (39, 4, N'Bình xịt côn trùng Red Foxx POWER hương chanh', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (40, 4, N'2 túi nước rửa chén IZI HOME hương sả chanh', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (41, 5, N'6 lon nước ngọt Pepsi không calo vị chanh', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (42, 5, N'6 lon nước ngọt Mirinda vị cam', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (43, 5, N'6 lon nước ngọt Coca Cola', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (44, 5, N'6 lon nước tăng lực Sting hương dâu', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (45, 5, N'6 chai nước bù khoáng Revive muối khoáng ', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (46, 5, N'6 chai nước tăng lực Thums Up Charged kiwi', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (47, 5, N'6 lon nước tăng lực Lipovitan mật ong', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (48, 5, N'6 lon nước tăng lực Warrior hương nho', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (49, 5, N'6 chai trà ô long Tea Plus', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (50, 5, N'6 chai trà đào và hạt chia Fuze Tea', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (51, 6, N'Dầu gội Pantene Hair Fall Control ngăn rụng tóc', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (52, 6, N'Dầu gội Ôliv dưỡng tóc bồng bềnh', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (53, 6, N'Dầu gội nước hoa Old Spice 2 In 1 hương thể thao', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (54, 6, N'Dầu gội mềm mượt Purité hoa hồng & Olive', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (55, 6, N'Dầu gội Rejoice siêu mềm mượt', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (56, 6, N'Dầu gội có dầu xả Palmolive Natural phục hồi hư tổn', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (57, 6, N'Dầu gội Tsubaki dưỡng tóc bóng mượt', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (58, 6, N'Dầu gội Herbal Essences bưởi bạc hà', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (59, 6, N'Dầu gội cho nam Head & Shoulders Ultra Men bạc hà làm sạch gàu', N'1                                                 ')
INSERT [dbo].[SANPHAM] ([MASP], [MANH], [TENSP], [HINH]) VALUES (60, 6, N'Dầu ủ tóc Coboté dưỡng tóc mềm mượt', N'1                                                 ')
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[TATCAQUYEN] ON 

INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (1, NULL)
INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (2, NULL)
INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (3, NULL)
INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (4, NULL)
INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (5, NULL)
INSERT [dbo].[TATCAQUYEN] ([MA_Q], [TEN_Q]) VALUES (7, N'')
SET IDENTITY_INSERT [dbo].[TATCAQUYEN] OFF
GO
ALTER TABLE [dbo].[CHITIET_HD]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HD_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CHITIET_HD] CHECK CONSTRAINT [FK_CHITIET_HD_HOADON]
GO
ALTER TABLE [dbo].[CHITIET_HD]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_HD_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIET_HD] CHECK CONSTRAINT [FK_CHITIET_HD_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIET_PN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PN_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CHITIET_PN] CHECK CONSTRAINT [FK_CHITIET_PN_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CHITIET_PN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_PN_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIET_PN] CHECK CONSTRAINT [FK_CHITIET_PN_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIET_QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIET_QUYEN_NHOMQUYEN] FOREIGN KEY([MAQUYEN])
REFERENCES [dbo].[NHOMQUYEN] ([MAQUYEN])
GO
ALTER TABLE [dbo].[CHITIET_QUYEN] CHECK CONSTRAINT [FK_CHITIET_QUYEN_NHOMQUYEN]
GO
ALTER TABLE [dbo].[DOITRA]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[DOITRA] CHECK CONSTRAINT [FK_DOITRA_HOADON]
GO
ALTER TABLE [dbo].[GIA]  WITH CHECK ADD  CONSTRAINT [FK_GIA_KHOILUONG] FOREIGN KEY([MAKL])
REFERENCES [dbo].[KHOILUONG] ([MAKL])
GO
ALTER TABLE [dbo].[GIA] CHECK CONSTRAINT [FK_GIA_KHOILUONG]
GO
ALTER TABLE [dbo].[GIA]  WITH CHECK ADD  CONSTRAINT [FK_GIA_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[GIA] CHECK CONSTRAINT [FK_GIA_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([SDT_KH])
REFERENCES [dbo].[KHACHHANG] ([SDT_KH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[NQ_NV]  WITH CHECK ADD  CONSTRAINT [FK_NQ_NV_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[NQ_NV] CHECK CONSTRAINT [FK_NQ_NV_NHANVIEN]
GO
ALTER TABLE [dbo].[NQ_NV]  WITH CHECK ADD  CONSTRAINT [FK_NQ_NV_NHOMQUYEN] FOREIGN KEY([MAQUYEN])
REFERENCES [dbo].[NHOMQUYEN] ([MAQUYEN])
GO
ALTER TABLE [dbo].[NQ_NV] CHECK CONSTRAINT [FK_NQ_NV_NHOMQUYEN]
GO
ALTER TABLE [dbo].[NQ_NV]  WITH CHECK ADD  CONSTRAINT [FK_NQ_NV_TATCAQUYEN] FOREIGN KEY([MA_Q])
REFERENCES [dbo].[TATCAQUYEN] ([MA_Q])
GO
ALTER TABLE [dbo].[NQ_NV] CHECK CONSTRAINT [FK_NQ_NV_TATCAQUYEN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_NHOMHANG] FOREIGN KEY([MANH])
REFERENCES [dbo].[NHOMHANG] ([MANH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_NHOMHANG]
GO
