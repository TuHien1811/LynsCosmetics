USE [master]
GO
/****** Object:  Database [CosmeticsShop]    Script Date: 3/4/2021 8:09:50 PM ******/
CREATE DATABASE [CosmeticsShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CosmeticsShop', FILENAME = N'D:\Settings\SQLServer2019_setup\MSSQL15.SQLEXPRESS\MSSQL\DATA\CosmeticsShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CosmeticsShop_log', FILENAME = N'D:\Settings\SQLServer2019_setup\MSSQL15.SQLEXPRESS\MSSQL\DATA\CosmeticsShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CosmeticsShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CosmeticsShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CosmeticsShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CosmeticsShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CosmeticsShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CosmeticsShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CosmeticsShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [CosmeticsShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CosmeticsShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CosmeticsShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CosmeticsShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CosmeticsShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CosmeticsShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CosmeticsShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CosmeticsShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CosmeticsShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CosmeticsShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CosmeticsShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CosmeticsShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CosmeticsShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CosmeticsShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CosmeticsShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CosmeticsShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CosmeticsShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CosmeticsShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CosmeticsShop] SET  MULTI_USER 
GO
ALTER DATABASE [CosmeticsShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CosmeticsShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CosmeticsShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CosmeticsShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CosmeticsShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CosmeticsShop] SET QUERY_STORE = OFF
GO
USE [CosmeticsShop]
GO
/****** Object:  Table [dbo].[Table_DanhMuc]    Script Date: 3/4/2021 8:09:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_SanPham]    Script Date: 3/4/2021 8:09:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[MaThuongHieu] [int] NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[HinhMinhHoa] [nvarchar](50) NULL,
	[HinhNho1] [nvarchar](50) NULL,
	[HinhNho2] [nvarchar](50) NULL,
	[HinhNho3] [nvarchar](50) NULL,
	[HinhNho4] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ThuongHieu]    Script Date: 3/4/2021 8:09:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Table_DanhMuc] ON 

INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Toner')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Kem chống nắng')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Tẩy trang')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Serum')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Dưỡng ẩm')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Sữa rửa mặt')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (7, N'Sữa dưỡng thể')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (8, N'Tẩy da chết')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (9, N'Mặt nạ')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (10, N'Kem nền')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (11, N'Kem che khuyết điểm')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (12, N'Phấn mắt')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (13, N'Phấn má')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (14, N'Chì kẻ mày')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (15, N'Son môi')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (16, N'Eyeliner')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (17, N'Son dưỡng')
SET IDENTITY_INSERT [dbo].[Table_DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_SanPham] ON 

INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (7, 1, 1, N'Dung Dịch Hada Labo Dưỡng Ẩm Tối Ưu Cho Da Dầu', 170000, N'Dung Dịch Hada Labo Advanced Nourish Hyaluron Lotion (Oily Skin) là lotion thuộc dòng sản phẩm dưỡng ẩm Advanced Nourish của Hada Labo, được thiết kế chuyên biệt cho làn da dầu/da hỗn hợp. Sản phẩm chứa hệ dưỡng ẩm sâu HA, SHA, Nano HA có khả năng thấm sâu vào da, bổ sung lượng nước cần thiết cho lớp biều bì để khắc phục tình trạng mất nước, tăng cường độ ẩm, độ đàn hồi, hỗ trợ trẻ hóa làn da, giúp da trở nên mềm mại, mịn màng hơn. ', 0, 0, N'1', N'1.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (8, 1, 2, N'Nước Cân Bằng Sulwhasoo Sáng Da Chống Oxy Hoá', 1600000, N'Nước Cân Bằng Sáng Da Chứa Sức Mạnh Chống Oxy Hoá Sulwhasoo Bloomstay Vitalizing Water 150ml là nước hoa hồng đến từ thương hiệu SULWHASOO của Hàn Quốc, kết hợp hài hòa giữa sức mạnh chống oxy hóa từ Hoa Mai Mơ với cách thành phần trong quả Yuzu giúp trẻ hóa làn da, mang lại sự mịn màng và ẩm mượt cần thiết.', 0, 0, N'1', N'2.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (9, 2, 19, N'Kem chống nắng bảo vệ da L''Oreal Paris UV Perfect SPF50+ PA++++', 89000, N'Kem Chống Nắng L''Oreal Paris UV Perfect Aqua Essence SPF50+ PA++++ 30ml bảo vệ da khỏi tác hại của tia UV với chỉ số chống nắng cao SPF50+ PA++++ và màng lọc quang phổ rộng MeroxylTM SX/XL bảo vệ da suốt 12h, giúp ngăn ngừa đốm nâu, vết thâm nám, sạm da, lão hóa', 0, 0, N'1', N'3.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (10, 2, 18, N'Kem chống nắng Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium', 1215000, N'Obagi Sun Shield Matte Broad Spectrum SPF 50 Premium bảo vệ da khỏi những bức xạ của mặt trời, ngăn ngừa cháy nắng. Đồng thời, sản phẩm còn bổ sung những dưỡng chất thiết yếu giúp làm dịu và trẻ hóa da', 0, 0, N'1', N'4.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (11, 6, 1, N'Bọt Rửa Mặt Hadalabo Dưỡng Ẩm Cho Mọi Loại Da', 143000, N'Bọt Rửa Mặt Hadalabo Gokujyun Moisturizing Foaming Wash là dòng sản phẩm sữa rửa mặt thuộc thương hiệu Hada Labo được nhập khẩu trực tiếp từ Nhật Bản, với thiết kế dạng tạo bọt độc đáo cho lớp bọt bông mềm mịn như mây, kết hợp cùng các thành phần dưỡng ẩm sẽ giúp làm sạch sâu da mà không hề khô căng, mang đến cho bạn một làn da mềm mại và ẩm mượt sau khi rửa mặt.', 0, 0, N'1', N'5.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (12, 6, 4, N'Sữa rửa mặt gạo hàn quốc The face shop', 115000, N'Sữa rửa mặt từ gạo giúp lấy sạch hoàn toàn bụi bẩn, tế bào chết và bã nhờn sâu trong lỗ chân lông. Với kết cấu dạng kem mịn, dễ tạo bọt, tạo cảm giác trơn láng, mềm mịn sau khi rửa mặt. Bên cạnh đó nó còn có khả năng làm sáng và mịn làn da nhờ chiết xuất từ nước gạo tự nhiên.', 0, 0, N'1', N'6.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (13, 6, 5, N'SỮA RỬA MẶT INNISFREE TRÀ XANH', 210000, N'Sữa rửa mặt Innisfree trà xanh có tác động dịu nhẹ nhưng giúp làm sạch, loại bỏ cặn bẩn và vi khuẩn hiệu quả. Thành phần bao gồm 88% chiết xuất lá trà xanh tự nhiên nguyên chất, giàu độ ẩm và các thành phần chống oxy hóa, sữa rửa mặt trà xanh sẽ giúp làn da luôn mềm mại và căng mịn.', 0, 0, N'1', N'7.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (14, 6, 15, N'Sữa Rửa Mặt Hoa Cúc Kiehl''s', 1300000, N'Sữa rửa mặt Kiehl’s Calendula Deep Cleansing Foaming Face Wash  : Là 1 trong những best-seller của KIEHL’S.
+ Mùi hương nhẹ nhàng của cúc kim chẩn thảo, kết cấu dạng gel đặc quánh, tạo bọt cực nhiều, dày và xốp, giúp massage dễ dàng trên mặt.
+ Đúng như tên gọi của mình, sản phẩm này giúp làm sạch sâu, bạn sẽ có cảm giác da vô cùng nhẹ và thoáng vì dầu thừa và bụi bẩn trên mặt đã được lấy đi sạch sẽ.
+ Dù làm sạch sâu nhưng sữa rửa mặt KIEHL’S hoa cúc Calendula không hề làm khô da, trái lại với chiết xuất từ cánh hoa cúc kim chẩn thảo và glycerin, giúp giữ lại màng ẩm tự nhiên trên da, cho da mịn màng và ẩm mượt ngay sau khi rửa
+ Chiết xuất từ cánh hoa cúc kim chẩn thảo này mà sữa rửa mặt KIEHL’S hoa cúc Calendula cực kì dịu nhẹ, có tác dụng làm dịu đi các vết mụn sưng đỏ, rất thích hợp với da dầu thiên mụn.', 0, 0, N'1', N'8.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (15, 6, 20, N'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser', 272000, N'- Được các chuyên gia da liễu bào chế với thành phần giúp da mềm mại hoàn toàn không gây kích ứng với cả những làn da nhạy cảm. Không giống như xà phòng, Cetaphil là sản phẩm không chứa kiềm, không tạo nhân trứng cá và không chứa hương liệu. 

- Sữa rửa mặt dịu nhẹ Cetaphil với công thức đặc biệt để loại bỏ chất nhờn trên mặt, tẩy sạch bụi bẩn và trang điểm mà không làm cho da bạn bị khô ráp. Cho bạn cảm giác sảng khoái, tươi mát và sạch sẽ không gây kích ứng cho mặt, tay và cơ thể, giúp da giữ được độ ẩm cần thiết để lại cảm giác làn da mềm mại, mịn màng và khỏe mạnh.', 0, 0, N'1', N'9.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (16, 12, 21, N'Bảng Phấn Mắt Urband Decay Naked Honey', 1350000, N'Bảng phấn mắt Urband Decay Naked Honey chuẩn tông vàng ánh kim phong cách nữ hoàng buổi tiệc. Ngoài ra còn các tông nâu khói có thể dùng hàng ngày, có kèm cả chổi cọ tán dễ dùng. Chất phấn mượt mà, lên màu chuẩn và bám lâu nhưng không gây nặng mắt. Sản phẩm không chứa SLS và SLES, Parabens. Nên rất an toàn với những làn da nhạy cảm như vùng da xung quanh mắt.', 0, 0, N'1', N'10.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (17, 12, 21, N'Bảng phấn mắt URBAN DECAY NAKED CHERRY', 650000, N'Đúng như tên gọi được lấy cảm hứng từ những trái cherry, bảng phấn sở hữu thiết kế hộp màu đỏ cherry ngọt ngào được trang trí bằng hình ảnh những trái cherry bên ngoài nắp hộp.
Bảng phấn sở hữu tới 12 màu phấn chủ yếu là các tone màu hồng, đỏ tía và nâu kết hợp với các ô màu trung tính cơ bản. Phấn tập hợp đầy đủ các ô màu matte mịn lì và nhũ lấp lánh cho nàng dễ dàng kết hợp để tạo nên nhiều màu mắt độc đáo, đa dạng phong cách trang điểm. 
Chất phấn mềm như lụa, mượt như nhung, lên màu đều cực kỳ và có độ bám tốt, chỉ cần lấy một ít phấn ở đầu cọ thôi là đủ cho cả một lần tán đều bầu mắt.', 0, 0, N'1', N'11.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (18, 12, 21, N'Bộ Phấn Mắt Cao CấpURBANDECAY Naked Palette', 1250000, N'Với 12 màu mắt sang trọng, quyến rũ đi kèm cọ phấn mắt chất liệu hàng đầu. Đủ các màu sắc trung tính, phù hợp với mọi màu da và khuôn mặt.Bộ sản phẩm phù hợp cho tất cả chị em từ đi làm đến dự các buổi party buổi tối, hay dạo chơi mua sắm vì các màu sắc thật sự bám lâu và đem đến cho bạn nhiều diện mạo mới!Tất cả các màu đều được sản xuất với chất lượng tốt và có độ bám phủ cao', 0, 0, N'1', N'12.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (19, 15, 4, N'Son Thỏi Collagen Ampoule Lipstick The Face Shop', 379000, N'SKU: 8806000070072	
Chuyên mục: Son Thỏi - Son Tint - Son Sữa
Dòng son môi đặc biệt có chứa tinh chất Collagen giàu dưỡng chất. Giúp làn môi luôn căng mọng, quyến rũ tự nhiên trong suốt thời gian sử dụng mà không lo thâm môi. Với kết cấu son mịn như nhung, vừa có độ bám màu cao lại vừa dưỡng. Cho đôi môi của bạn không bị khô khi sử dụng, màu son lên môi chuẩn tự nhiên và bền màu nhiều giờ liền. Làm mờ các nếp gấp trên môi, giúp môi trông mịn màng và căng mọng.', 0, 0, N'1', N'13.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (20, 15, 6, N'SON BÚT CHÌ THẾ HỆ MỚI SILKYGIRL MATTE STYLER SLIM LIPCOLOR ', 134000, N'Son bút chì siêu mảnh SILKYGIRL Matte Styler Slim Lipcolor là thỏi son sở hữu thân hình “mình dây” thanh mảnh phong cách. Không chỉ nổi bật bởi thiết kế đúng chuẩn xu hướng, thỏi son còn gây ấn tượng với chất son mịn lì như kem, lướt nhẹ như lụa và khả năng lên màu chuẩn, bền màu cả ngày mang đến cho bạn vẻ ngoài tươi tắn nổi bật.', 0, 0, N'1', N'14.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (22, 15, 6, N'SON SÁP MAMONDE CREAMY TINT MÀU 20', 149000, N'Son Hàn nói chung khá hiếm son bút chì, nhưng sản phẩm son bút chì hiếm hoi đến từ Mamonde, Creamy Tint Color Balm Intense lại xuất sắc đến bất ngờ. Với chất son mịn mượt, lì mịn như nhung nhưng không hề gây khô môi, dòng son này được mệnh danh là phiên bản dupe của son bút chì Nars đình đám và đó cũng là lý do khiến nó vô cùng được lòng con gái Việt.', 0, 0, N'1', N'15.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (24, 15, 9, N'Son Mac Ruby Woo Màu Đỏ Siêu Lì', 409000, N'Có thể nói son MAC 707 Ruby Woo là một sự ra đời của một màu son đình đám nhất của MAC. Đây là một sắc màu huyền thoại góp phần tạo nên thương hiệu cho dòng son của MAC. Hiếm có thể tìm kiếm được một sắc đỏ nào hoàn hảo và nổi bật như Ruby Woo.

', 0, 0, N'1', N'16.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (25, 15, 9, N'Son MAC Escalando – Powder Kiss Liquid – Hồng San Hô', 650000, N'Nàng là cô nàng nữ tính, “yêu màu hồng và ghét sự giả dối”? Vậy là nàng vừa điểm mặt chỉ tên em son MAC Escalando ngọt ngào nhất bộ sưu tập MAC Powder Kiss Liquid. Cùng em son này “bật mood” yêu đời cho cả ngày tuyệt vời nàng nha!', 0, 0, N'1', N'17.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (26, 15, 9, N'Son MAC 990 More The Mehrier– Powder Kiss Liquid', 600000, N'Màu sắc thời thượng mà chẳng bao giờ lo lỗi mốt chính là các tone đất. Không bao giờ đứng một mình mà sắc đất thường được trộn lẫn với màu khác để kiềm bớt bản sắc ban đầu của màu đó. Có thể kể đến như tone hồng đất. Nhắc đến màu hồng là liên tưởng đến những cô nàng ngọt ngào. Ấy vậy mà bỏ thêm sắc đất vào, màu son bỗng trở nên trầm hơn rất nhiều. Người con gái ngọt ngào kia nay đã trưởng thành hơn nhưng vẫn giữ được sự tinh khôi ban đầu. Do vậy, dù ở bất cứ độ tuổi nào, nếu nàng yêu vẻ dịu dàng nhưng có chiều sâu thì hãy chọn son MAC 990.', 0, 0, N'1', N'18.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (27, 15, 9, N'Son MAC Love Me Màu 428 Give Me Fever – Đỏ Tươi', 540000, N'Son MAC 428 Give Me Fever có màu đỏ tươi nổi bật. Với sắc đỏ thời thượng, quyến rũ này các nàng chẳng cần phải đắn đo, mất quá nhiều thời gian khi tìm kiếm style makeup phù hợp, bởi màu son đỏ đẹp bất chấp này phù hợp với mọi phong cách, dù ở đâu cũng giúp bạn thêm nổi bật, tỏa sáng.', 0, 0, N'1', N'19.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [HinhNho4]) VALUES (28, 17, 8, N'Son Dưỡng DHC Dưỡng Ẩm', 169000, N'Mọi dấu hiệu khô ráp sẽ hoàn toàn biến mất sau mỗi lần lướt nhẹ thỏi son dưỡng DHC Lip Cream trên đôi môi nứt nẻ nhờ chiết xuất Olive đậm đặc cùng khả năng bao bọc độ ẩm suốt 8 giờ đồng hồ.', 0, 0, N'1', N'20.jpg', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Table_SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_ThuongHieu] ON 

INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (1, N'Hadalabo')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (2, N'Sulwhasoo')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (3, N'Laneige')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (4, N'The Face Shop')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (5, N'Innisfree')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (6, N'Mamonde')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (7, N'Shu Uemura')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (8, N'DHC')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (9, N'MAC')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (10, N'Maybelline')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (11, N'SK-II')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (12, N'Estee Lauder')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (13, N'Olay')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (14, N'Clinique')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (15, N'Kiehl''s')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (16, N'Paula''s Choice')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (17, N'Tom Ford')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (18, N'Obagi')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (19, N'L''Oréal')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (20, N'Cetaphil')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (21, N'Urban Decay')
SET IDENTITY_INSERT [dbo].[Table_ThuongHieu] OFF
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_TinhTrang]  DEFAULT ((1)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[Table_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Table_SanPham_Table_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[Table_DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[Table_SanPham] CHECK CONSTRAINT [FK_Table_SanPham_Table_DanhMuc]
GO
ALTER TABLE [dbo].[Table_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Table_SanPham_Table_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[Table_ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[Table_SanPham] CHECK CONSTRAINT [FK_Table_SanPham_Table_ThuongHieu]
GO
USE [master]
GO
ALTER DATABASE [CosmeticsShop] SET  READ_WRITE 
GO
