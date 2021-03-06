USE [TienLongDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 11:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 11:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UnitCost] [varchar](50) NOT NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[Description] [ntext] NULL,
	[CategoryId] [int] NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 11:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (1, N'Laptop Dell', N'Sản xuất tại Hoa Kỳ')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (2, N'Laptop Asus', N'Sản xuất tại Đài Loan')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (3, N'Laptop Msi', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (4, N'Laptop Acer', N'Sản xuất tại Đài Loan')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (5, N'Laptop Hp', N'Sản xuất tại Hoa Kỳ')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (6, N'Laptop LG', N'Sản xuất tại Hàn Quốc')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (7, N'Laptop Apple', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (8, N'PC', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (9, N'Phụ kiện', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (10, N'Màn hình', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (11, N'Thiết bị mạng', N'Sản xuất tại Việt Nam')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (12, N'Vật liệu', N'Sản xuất tại Việt Nam')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (1, N'Laptop Dell Inspiron 15', N'59000000', 12, N'/Data/images/laptop1.png', N'CPUU Intel Core i7-1165G7 (12MB, upto 4.70GHz)RAM 16GB LPDDR4X 4266MHz Onboard', 1, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (2, N'LAPTOP MSI GL65 LEOPARD', N'23990000', 13, N'/Data/images/laptop2.jpg', N'CPU: Intel Core i7-10750H

Ram: 08) DDR4 2666MHz

Lưu trữ: 512GB SSD M.2 PCIE', 3, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (3, N'LAPTOP LG GRAM 2021', N'44000000', 20, N'/Data/images/laptop3.jpg', N'CPU Intel Core i7-1165G7 (12MB, upto 4.70GHz)

RAM 16GB LPDDR4X 4266MHz Onboard

SSD 256GB PCIe NVMe M.2

Display 17.0Inch WQXGA 16:10 IPS

VGA Intel Iris Xe Graphics

Pin 80WHr

Color Snow White (Trắng)

', 6, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (4, N'LAPTOP HP PAVILION 15 EQ007', N'55000000', 9, N'/Data/images/laptop4.jpg', N'CPU: Intel Core i7-1165G7

RAM: 8GB DDR4 3200MHz

Ổ cứng: 512GB PCIe NVMe M.2', 5, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (5, N'LAPTOP GAMING ACER NITRO 5', N'44000000', 5, N'/Data/images/laptop5.jpg', N'CPU: Intel Core i5-1135G7

RAM: 8GB DDR4 3200Mhz

Lưu trữ: 512GB PCIe NVMe', 4, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (6, N'LAPTOP DELL VOSTRO 3500', N'43000000', 30, N'/Data/images/laptop6.png', N'Intel Core i3-1115G4 (6MB, up to 4.10GHz)

1x8GB DDR4 3200Mhz

256GB SSD PCIe NVMe (trống 1 khe Sata 3', 1, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (7, N'LAPTOP MSI GL65 LEOPARD ', N'23000000', 29, N'/Data/images/laptop7.jpg', N'CPU: Intel Core i7-10750H

Ram: 08) DDR4 2666MHz

Lưu trữ: 512GB SSD M.2 PCIE', 3, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (8, N'PC HP PRO 280SFF G5', N'9000000', 12, N'/Data/images/pc1.jpg', N'Intel Core i5 10400 (2.9Ghz/4.3Ghz, 6C/12T, 12MB)

DDR4 8GB Bus 3200 (2 slot, Max 32GB)', 5, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (9, N'PC HP PRO 280SFF G5 (2E9P0PA)', N'11000000', 8, N'/Data/images/pc2.jpg', N'Intel Core i3-10100 (3.6GHz Upto 4.30GHz, 4C/8T, 6MB)

DDR4 4GB (2 slot, Max 32GB)', 5, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (10, N'PC DELL OPTIPLEX 3080SFF', N'12590000', 1, N'/Data/images/pc3.png', N'Intel Core i5-10500 (3.1Ghz upto 4.5GHz)
RAM 4GB DDR4SSD 256GB Nvme', 1, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (11, N'MÀN HÌNH 21.5 VIEWSONIC', N'8000000', 10, N'/Data/images/mh1.png', N'Kích thước màn hình 21.5 inch

- Màn hình phẳng

- Tấm nền TN', 10, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (12, N'MÀN HÌNH ASUS 23" VC239H-W ', N'7000000', 11, N'/Data/images/mh2.jpg', N'Panel công nghệ In-Plane Switching (IPS)

Thiết kế Mỏng & không khung viền

Tính năng chăm sóc mắt cao cấp với Bộ Lọc', 10, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (13, N'MÀN HÌNH ULTRASHARP DELL ', N'10000000', 12, N'/Data/images/mh3.png', N'Độ phân giải Full HD 1920 x 1080dpi

Tầm nền: IPS, Tỉ lệ: 16:9

Độ sáng 250cd/m2; thời gian đáp ứng 5ms', 10, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (14, N'TẢN NHIỆT CPU AIR COOLING ', N'950000', 14, N'/Data/images/vl1.jpg', N'Fan Size: 120mm

RPM: 650 - 2,000RPM (PWM) ± 10%

Air Flow: 59 CFM (Max); Noise Level: 8-30', 12, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (15, N'VỎ CASE MÁY TÍNH XIGMATEK ', N'3700000', 14, N'/Data/images/vl2.jpg', N'Vật liệu: SECC phủ đen, Plastic ABS, kính cường lực 4mm

Kích thước: 398 x 195 x 326 mm', 12, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (16, N'BỘ PHÁT SÓNG WIFI MESH ', N'13000000', 20, N'/Data/images/thietbimang1.jpg', N'Công Nghệ Mesh không điểm chết

Hỗ trợ 3 băng tần mạng 1 băng tần 2.4 ghz và 2 băng tần 5Ghz', 11, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (17, N'ROUTER DRAYTEK V2915AC (LOAD', N'12000000', 20, N'/Data/images/thietbimang1.jpg', N'1 port WAN1 Gigabit Ethernet, RJ45

4 port LAN Gigabit Ethernet, RJ45

1 cổng USB sử dụng cho USB 3G/4G, máy', 11, N'0')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (18, N'BẢNG VẼ ĐIỆN TỬ WACOM ', N'20000000', 20, N'/Data/images/phukien1.jpg', N'BLACK (CTL)', 9, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (19, N'MACBOOK PRO 13 INCH 2020 ', N'45000000', 19, N'/Data/images/apple.jpg', N'Chip: Apple M1 8 nhân

RAM: 16GB 

Ổ Cứng: 512GB SSD', 7, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (20, N'PC DELL OPTIPLEX 3080SFF2', N'12580000', 1, N'/Data/images/pc3.png', N'Intel Core i5-10500 (3.1Ghz upto 4.5GHz)
RAM 4GB DDR4SSD 256GB Nvme', 1, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (35, N'MÀN HÌNH 21.5 VIEWSONIC', N'7000000', 25, N'/Data/images/mh1.png', N'Độ phân giải Full HD 1920 x 1080dpi

Tầm nền: IPS, Tỉ lệ: 16:9

Độ sáng 250cd/m2; thời gian đáp ứng 5ms', 10, N'1')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [CategoryId], [Status]) VALUES (37, N'Laptop Long ', N'12000000', 10, NULL, NULL, 1, N'1')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3                  ', N'Actived')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'long', N'0f5264038205edfb1ac05fbb0e8c5e94                  ', N'Actived')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (12, N'long2', N'c4ca4238a0b923820dcc509a6f75849b                  ', N'Actived')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (16, N'hoa', N'0f5264038205edfb1ac05fbb0e8c5e94                  ', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (17, N'tuan', N'e5b5a57b9d168fbdd42a1e8799dd59c3                  ', N'Blocked')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_category]
GO
