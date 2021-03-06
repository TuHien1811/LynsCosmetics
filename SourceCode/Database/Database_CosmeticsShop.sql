USE [CosmeticsShop]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_BinhLuan]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaTinTuc] [int] NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](max) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[TinhTrang] [int] NOT NULL,
 CONSTRAINT [PK_Table_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ChiTietDonHang]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ChiTietDonHang](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[Gia] [int] NOT NULL,
 CONSTRAINT [PK_Table_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_DanhMuc]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NOT NULL,
	[TinhTrangDM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Table_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_DonHang]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[TenNguoiNhan] [nvarchar](max) NOT NULL,
	[SoDienThoai] [nchar](10) NOT NULL,
	[DiaChiGiaoHang] [nvarchar](max) NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThaiDonHang] [int] NOT NULL,
 CONSTRAINT [PK_Table_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_GioHang]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_GioHang](
	[IdGioHang] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](128) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](max) NOT NULL,
	[HinhMinhHoa] [nvarchar](100) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
 CONSTRAINT [PK_Table_GioHang] PRIMARY KEY CLUSTERED 
(
	[IdGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_SanPham]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[MaThuongHieu] [int] NOT NULL,
	[TenSanPham] [nvarchar](max) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[SoLuongDaBan] [int] NOT NULL,
	[LuotView] [int] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[HinhMinhHoa] [nvarchar](100) NOT NULL,
	[HinhNho1] [nvarchar](100) NOT NULL,
	[HinhNho2] [nvarchar](100) NOT NULL,
	[HinhNho3] [nvarchar](100) NOT NULL,
	[GhiChu] [ntext] NULL,
	[GioiThieu] [ntext] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ThuongHieu]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](max) NOT NULL,
	[TinhTrangTH] [nvarchar](50) NOT NULL,
	[LogoTH] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Table_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_TinTuc]    Script Date: 3/23/2021 1:05:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[AnhBia] [nvarchar](100) NOT NULL,
	[AnhTinTuc] [nvarchar](100) NOT NULL,
	[NoiDung] [ntext] NOT NULL,
	[NgayDang] [datetime] NOT NULL,
	[TinhTrangTT] [int] NOT NULL,
 CONSTRAINT [PK_Table_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202103230156581_InitialCreate', N'TTTN_OnlineShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C6D6FE3B811FE5EA0FF41D0A7B6C85979E92EB6817D879C93B441372F587B0FFD16D012ED102B513A89CA2528EE97F5C3FDA4FB0B1D4A942CF1452FB6623B87051616397C66381C92C3E130BFFFEFB7F10F2F816F3DE33821219DD827A363DBC2D40D3D4257133B65CBEF3ED93F7CFFE73F8DAFBCE0C5FAA9A03BE374D0922613FB89B1E8DC7112F70907281905C48DC3245CB2911B060EF242E7F4F8F81FCEC9898301C2062CCB1A7F49292301CE3EE0731A5217472C45FE6DE8613F11E55033CB50AD3B14E024422E9ED8F3F9FCEEF19EFA84E2D953188DF216B675E11304D2CCB0BFB42D4469C8100359CFBF2678C6E290AE661114207FFE1A61A05B223FC1A20FE76BF2AEDD393EE5DD71D60D0B28374D5818F4043C3913FA71E4E61B69D92EF5071ABC024DB357DEEB4C8B13FBC6C359D197D00705C80CCFA77ECC8927F66DC9E22289EE301B150D4739E4750C70BF84F1B75115F1C8EADCEEA8B4A7D3D131FF77644D539FA5319E509CB218F947D643BAF089FB6FFC3A0FBF613A393B592CCF3E7DF888BCB38F7FC7671FAA3D85BE025DAD008A1EE230C231C8869765FF6DCBA9B773E48665B34A9B5C2B604B30356CEB16BD7CC674C59E60D29C7EB2AD6BF282BDA24418D7574A6026412316A7F07997FA3E5AF8B8AC771A79F2FF1BB89E7EF83808D73BF44C56D9D04BFC61E2C430AFBE603FAB4D9E48944FAFDA783F0AB2EB380CF877DDBEF2DAC75998C62EEF4C682499A37885595DBAB1B336DE4E26CDA18637EB02F5F04D9B4BAA9AB796947768939950B0D8F56C28E47D5BBE9D2DEE228A60F032D3E21A693238FD863592108E2C896E6D42275D4D8842D7FEC82BE25580883FC092D8810B78244B1207B8ECE58F211820A2BD657E4049022B82F72F943C35880E3F07107D86DD3406439D3114446FCEEDE129A4F82E0D16DCFE77C76BB0A199FF125E239785F115E5ADB6C6FB1CBADFC2945D51EF1231FC95B90520FF9C93A03BC020E25CB82E4E926B3066EC4D4370B80BC01BCACE4E7BC3F1456ADF2EC9D44724D0FB24D272FA5890AEFD123D85E29B18C874FE4993A89FC315A1DD442D48CDA2E614ADA20AB2BEA272B06E920A4AB3A01941AB9C39D5601E5F3642C3BB7C19ECE1FB7CDB6DDEA6B5A0A2C619AC90F89F98E2189631EF01318663BA1E812EEBC63E9C856CF838D337DF9B324E3F213F1D9AD546B3215B04869F0D19ECE1CF864C4C287E261EF74A3A1C840A6280EF44AF3F63B5CF3949B25D4F875A3777CD7C376B8069BA5C2449E8926C16684260228051971F7C38AB3D9A91F7468E8840C7C0D009DFF2A004FA66CB46754F2FB18F19B62EDC3C443845898B3C558DD021AF8760C58EAA116C1D19A90BF7378527583A8E7923C40F4109CC5442993A2D08754984FC562D492D3B6E61BCEF250FB9E61247987286AD9AE8C25C1F08E102947CA44169D3D0D8A9585CB3211ABC56D398B7B9B0EB7157E2133BB1C916DFD96097C27F7B13C36CD6D80E8CB359255D043006F5F661A0E2ACD2D500E483CBA119A874623218A870A97662A0758DEDC140EB2A7977069A1F51BB8EBF745E3D34F3AC1F9477BFAD37AA6B0FB659D3C7819966EE7B421B062D70AC9AE7E58257E217A6399C819CE27C9608575736110E3EC3AC1EB259FBBB5A3FD46906918DA809706D682DA0E23A50015226540FE18A585EA374C28BE8015BC4DD1A61C5DA2FC1566C40C5AE5E8B5608CD97A7B271763A7D943D2BAD4131F24E87850A8EC620E4C5ABDEF10E4A31C56555C574F185FB78C3958E89C16850508BE76A5052D199C1B5549866BB96740E591F976C2B2D49EE93414B456706D792B0D17625699C821E6EC1562AAA6FE1034DB622D251EE3665DDD8C933A644C1D831A4568D6F511411BAAAA45A89126B96E7594DBF9BF54F3E0A720CC74D343948A5B4252716C66885A55A600D925E9338619788A105E2719EA9172864DABDD5B0FC172CABDBA73A88C53E5050F3DFE2AE507F895FDB6F558744E05C432F03EED564A1748D0DE89B5B3CFD0DF928D644EFA7A19F06D4EC64995BE77778D5F679898A307624F915274AD198E2EAD6D5DF6970D48931E040957ECCE683658630A9BCF042AB4A3779A66694225055453105AFF636782687A6F780C9FE62FFF16A45789BF9259254AA00A2A8274625CF4101ABD47547ADA7A25431EB35DD11A57C932AA454D543CA6A56494DC86AC54678068DEA29BA7350F348AAE86A6D77644D4649155A53BD01B64666B9AE3BAA26E9A40AACA9EE8EBDCE409117D203DEC18CA798ADB6B0FCB0BBDD1E66C0789B5571982DB072A75F05AA14F7C412B7F60A98283F488B329EF8B6B2A83CCEB19D451930CC2B50ED46BCBE00355EE39B316BD7DCB545BEE99ADF8CD7CF6EDFD43A94439F4C52722F0F7FD2216F2C0E5CED8F6C9413584E625B851A61837F4D180E469C6034FBD99FFA04F3E5BC20B845942C71C2F2D40EFBF4F8E4547AA37338EF659C24F17CCD81D5F468A63E663BC8D2A2CF28769F50ACE64C6CF1A6640DAA84A36FA8875F26F67FB356E7596483FFCA8A8FAC9BE42B253FA750318F536CFDAAE6800E9363DFE1554729E8AFEFE2B9447795DFFCE7316F7A64DDC7309DCEAD6349D19B0C7FFD11452F69F2A65B48B3F1D38AF73BDB6AEF15B4A8D26CD9FC79C282B0419E261452FE25402F7FED2B9AF6F9C156889A270643E10DA242D313824DB08CCF073CF864D9F3817E9DD53F27D84434E3530242FB83C90F09BA2F4345CB3DEE439A43D32E96A44CCFAD89D85B6565EE7B6F52F2B5B79AE86A4E760FB841F3AEB77351DE593EF3605BA7265D7930EC7DDAFD9BE7281F4A5AF2DA69DF6F36F22E13901B2E97FE5079C7079029A7C9FCD97F76F1AE6DCD14053EF014CD7E39C407666C629BDF7FA6F0AE8DCD14203E7063EB950F7C60B6B6AFFD73CF96D6790BDD7B76AF9AA864B8CDD14591DBB277F3903B1CFF17211841EE51E68F2EF5E9624DA9AE2D0CD72466A6E63C3599B1327114BE0A4533DB7E7D151B7E6367054D335B437667136FB1FE37F21634CDBC0D3993FBC83BD6662DEA72C15BD6B1A654AAF794675CEB494B5A7B9BCFDA7835FF9ED28A07514A6DF6186E97DF4F16F1202A1972EAF4C81A562F8A61EFACFCCD46D8BF13B25A43F0BFE048B15BDB354B9A1BBA0C8BCD5B92A820912234B798210FB6D48B989125721954F30074F66A3C0BEAF16B9005F66EE87DCAA294419771B0F06B012FEE0434F1CF52A3EB328FEF23FE950CD1051093F0C0FD3DFD3125BE57CA7DAD89091920B87721C2BD7C2C190FFBAE5E4BA4BB90760412EA2B9DA2390E221FC0927B3A43CF7813D9C0FC3EE315725FD711401348FB40D4D53EBE246815A3201118EBF6F00936EC052FDFFF1FC44B713DBA540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a0df7b3a-67d3-4504-a84d-c372166f908e', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38fd746b-23ac-4ee5-bf35-756206dacdf9', N'a0df7b3a-67d3-4504-a84d-c372166f908e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'38fd746b-23ac-4ee5-bf35-756206dacdf9', N'admin@gmail.com', 0, N'AEYZJQIhjXklQF9dAk5SP8OYYciTE/ccKqzOubDf4kwYN+c/4xRCL+8EEKYt7pzMuA==', N'64c6eec8-5565-4c89-83c3-98817904cba4', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e9c2ab91-a66f-4a26-8c3e-474dd395bd10', N'shironekojamo@gmail.com', 0, N'ADrzVJPmtwza82QCSGXLX82r//k6yqRoAk2leQ6SWeH7gshqJ5RNmcnsBRas+L9h0g==', N'e276753b-8bfa-45c1-a2d6-95c42c04177d', NULL, 0, 0, NULL, 1, 0, N'shironekojamo@gmail.com')
GO
INSERT [dbo].[Table_ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongMua], [Gia]) VALUES (1, 1, 2, 169000)
INSERT [dbo].[Table_ChiTietDonHang] ([MaDonHang], [MaSanPham], [SoLuongMua], [Gia]) VALUES (1, 3, 2, 180000)
GO
SET IDENTITY_INSERT [dbo].[Table_DanhMuc] ON 

INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (1, N'Sữa rửa mặt', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (2, N'Nước tẩy trang', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (3, N'Dưỡng ẩm', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (4, N'Son dưỡng', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (5, N'Tẩy da chết', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (6, N'Phấn mắt', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (7, N'Son', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (8, N'Kem chống nắng', N'0')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (9, N'Kem che khuyết điểm', N'1')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (10, N'Kem nền', N'1')
INSERT [dbo].[Table_DanhMuc] ([MaDanhMuc], [TenDanhMuc], [TinhTrangDM]) VALUES (11, N'Mặt nạ', N'0')
SET IDENTITY_INSERT [dbo].[Table_DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_DonHang] ON 

INSERT [dbo].[Table_DonHang] ([MaDonHang], [Id], [TenTaiKhoan], [NgayTao], [TenNguoiNhan], [SoDienThoai], [DiaChiGiaoHang], [ThanhTien], [TrangThaiDonHang]) VALUES (1, N'e9c2ab91-a66f-4a26-8c3e-474dd395bd10', N'shironekojamo@gmail.com', CAST(N'2021-03-23T09:49:02.810' AS DateTime), N'Mai Chi', N'0917225318', N'222 Nguyễn Lương Bằng, Trần Khát Trân, Hà Nội', 698000, 1)
SET IDENTITY_INSERT [dbo].[Table_DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_SanPham] ON 

INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (1, 2, 9, N'Nước Tẩy Trang L''Oreal 3-in-1 Làm Sạch Sâu 400ml', 169000, N'<p>Tẩy trang lu&ocirc;n l&agrave; bước quan trọng trong chu tr&igrave;nh dưỡng da m&agrave; ch&uacute;ng ta &quot;kh&ocirc;ng-n&ecirc;n-bỏ-qua&quot;. Đặc biệt l&agrave; c&aacute;c c&ocirc; n&agrave;ng thường xuy&ecirc;n trang điểm mỗi ng&agrave;y th&igrave; đừng bao giờ qu&ecirc;n em n&oacute; nh&eacute;!&nbsp;<strong>Nước Tẩy Trang L&agrave;m Sạch S&acirc;u&nbsp;L&#39;Oreal&nbsp;Micellar Water 3 In 1 Deep Cleansing</strong>&nbsp;được thiết kế d&agrave;nh ri&ecirc;ng cho da trang điểm đậm m&agrave;u, bền m&agrave;u hoặc kh&ocirc;ng tr&ocirc;i, sẽ gi&uacute;p lớp trang điểm cứng đầu lập tức bay đi ngay tức khắc. Đặc biệt, em n&agrave;y c&ograve;n sử dụng được cho cả l&agrave;n da nhạy cảm.</p>

<p><a href="https://hasaki.vn/thuong-hieu/l-oreal.html" target="_blank"><strong>L&rsquo;oreal</strong></a>&nbsp;l&agrave; tập đo&agrave;n chuy&ecirc;n về mỹ phẩm v&agrave; chăm s&oacute;c sắc đẹp lớn nhất thế giới với c&aacute;c d&ograve;ng sản phẩm về chăm s&oacute;c t&oacute;c, chăm s&oacute;c da, mỹ phẩm. Lu&ocirc;n mong muốn s&aacute;ng tạo v&agrave; đem đến sản phẩm h&agrave;ng đầu với mức gi&aacute; tốt nhất cho người ti&ecirc;u d&ugrave;ng, hiện n&agrave;y&nbsp;<strong>L&rsquo;Or&eacute;al</strong>&nbsp;đ&atilde; c&oacute; mặt tr&ecirc;n 120 quốc gia v&agrave; được vinh danh l&agrave; một trong số những tập đo&agrave;n mỹ phẩm điển h&igrave;nh của thế kỷ 21. Những sản phẩm kem dưỡng da của&nbsp;<strong>L&#39;Oreal</strong>&nbsp;đ&atilde; được phụ nữ tr&ecirc;n khắp thế giới ưa chuộng v&igrave; hiệu quả t&iacute;ch cực, đặc biệt l&agrave; những d&ograve;ng dưỡng ẩm, ngăn ngừa l&atilde;o h&oacute;a.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-lam-sach-sau-400ml.jpg" style="height:500px; width:500px" /></p>

<p>&nbsp;</p>

<p><strong><a href="https://hasaki.vn/danh-muc/tay-trang-mat-c48.html" target="_blank">Nước Tẩy Trang</a>&nbsp;L&agrave;m Sạch S&acirc;u&nbsp;L&#39;Oreal&nbsp;Micellar Water 3 In 1 Deep Cleansing</strong>&nbsp;l&agrave; sản phẩm mới vừa được&nbsp;<strong>L&#39;Oreal</strong>&nbsp;tung ra thị trường, tẩy trang kết hợp giữa c&ocirc;ng nghệ&nbsp;<strong>Micellar v&agrave; biphase&nbsp;</strong>chuy&ecirc;n d&agrave;nh cho c&aacute;c c&ocirc; n&agrave;ng makeup đậm, l&acirc;u tr&ocirc;i hay kh&ocirc;ng thấm nước. Khả năng l&agrave;m sạch được c&aacute;c giới Beauty Blogger đ&aacute;nh gi&aacute; h&agrave;i l&ograve;ng hơn hết, tẩy sạch mọi lớp trang điểm, kể cả son l&igrave; hay mascara kh&ocirc;ng tr&ocirc;i đều được&nbsp;<strong>L&#39;Oreal&nbsp;Micellar Water 3 In 1 Deep Cleansing</strong>&nbsp;đ&aacute;nh bay trong t&iacute;ch tắc.</p>

<p>Đặc biệt, sản phẩm kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần như cồn, x&agrave; ph&ograve;ng hay sulfate - c&aacute;c chất g&acirc;y n&ecirc;n c&aacute;c vấn đề như l&agrave;m da bị kh&ocirc; đi, dễ bị k&iacute;ch ứng, ửng đỏ&hellip;d&ugrave;ng được cho cả l&agrave;n da nhạy cảm. Sau khi sử dụng, bạn sẽ cảm nhận được l&agrave;n da kh&ocirc; r&aacute;o nhưng vẫn đủ độ ẩm, mềm mại đến bất ngờ.</p>

<p><strong>L&agrave;n da ph&ugrave; hợp:</strong></p>

<p>Sản phẩm th&iacute;ch hợp với mọi loại da.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-lam-sach-sau-400ml-2.jpg" style="height:500px; width:500px" /></p>

<p>&nbsp;</p>

<p><strong>C&ocirc;ng dụng:</strong></p>

<ul>
	<li>
	<p>Tẩy sạch c&aacute;c lớp makeup cứng đầu.</p>
	</li>
	<li>
	<p>Cung cấp độ ẩm cho da mềm mượt.</p>
	</li>
	<li>
	<p>Hạn chế t&igrave;nh trạng dầu nhờn, nổi mụn.</p>
	</li>
	<li>
	<p>Giữ da s&aacute;ng khỏe, tươi trẻ &amp; chống l&atilde;o h&oacute;a.</p>
	</li>
	<li>
	<p>Kh&ocirc;ng g&acirc;y t&igrave;nh trạng k&iacute;ch ứng hay dị ứng da.</p>
	</li>
</ul>

<p>&nbsp;</p>

<p>&nbsp;<img alt="" src="https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-lam-sach-sau-400ml-1.jpg" style="height:500px; width:500px" /></p>

<p>&nbsp;</p>

<p><strong>Bảo quản:</strong></p>

<p>Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>

<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>

<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>

<p><strong>Dung t&iacute;ch:</strong>&nbsp;<strong>250ml &amp; 400ml</strong></p>

<p><strong>Thương hiệu:</strong>&nbsp;L&#39;Oreal</p>

<p><strong>Xuất xứ:&nbsp;</strong>Ph&aacute;p</p>

<p>*Lưu &yacute;: L&rsquo;Or&eacute;al Paris l&agrave; thương hiệu l&agrave;m đẹp nổi tiếng thế giới, hiện c&oacute; nhiều nh&agrave; m&aacute;y sản xuất tr&ecirc;n to&agrave;n thế giới như Trung Quốc, Indonesia, Ph&aacute;p&hellip; D&ugrave; sản xuất ở đ&acirc;u, c&aacute;c sản phẩm của L&rsquo;Or&eacute;al Paris đều tu&acirc;n thủ nghi&ecirc;m ngặt quy tr&igrave;nh sản xuất v&agrave; kiểm tra chất lượng</p>

<p>c&ograve;n sử dụng được cho cả l&agrave;n da nhạy cảm.</p>
', 0, 0, 1, N'loreal3.jpg', N'loreal1.jpg', N'loreal2.jpg', N'loreal4.jpg', N'new', N'Nước Tẩy Trang Làm Sạch Sâu L''Oreal Micellar Water 3 In 1 Deep Cleansing được thiết kế dành riêng cho da trang điểm đậm màu, bền màu hoặc không trôi, sẽ giúp lớp trang điểm cứng đầu lập tức bay đi ngay tức khắc. ', CAST(N'2021-03-23T09:02:11.597' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (2, 1, 10, N'Sữa Rửa Mặt Tro Núi Lửa Trị Mụn Đầu Đen, Bã Nhờn Innisfree Jeju Volcanic Pore Cleansing Foam Ex 150ml', 197000, N'<p><strong>SỮA RỬA MẶT TRO N&Uacute;I LỬA INNISFREE JEJU VOLCANIC PORE CLEANSING FOAM&nbsp;</strong></p>

<p><strong>Dung t&iacute;ch: 150ml</strong></p>

<p><em>1. D&agrave;nh cho da dầu, da hỗn hợp, da nhạy cảm</em></p>

<p><em>2. Sữa rửa mặt l&agrave;m sạch da, giảm mụn, se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng</em></p>

<p><em>3. Chiết xuất Tro N&uacute;i Lửa h&uacute;t mụn đầu đen, mụn c&aacute;m, b&atilde; nhờn</em></p>

<p><br />
<strong>✔&nbsp;Chứa c&aacute;c th&agrave;nh phần lấy từ tro n&uacute;i lửa tự nhi&ecirc;n, chiết xuất tr&agrave; xanh v&agrave; nước kho&aacute;ng cực kỳ l&agrave;nh t&iacute;nh ở h&ograve;n đảo Jeju H&agrave;n Quốc.</strong></p>

<p><strong>✔&nbsp;Sản phẩm th&iacute;ch hợp cho mọi loại da, đặc biệt l&agrave; l&agrave;n da hỗn hợp dầu, da nhạy cảm.</strong></p>

<p><strong>✔ Sữa rửa mặt&nbsp;ở dạng kem sữa m&agrave;u trắng rất mịn, c&oacute; những hạt m&aacute;t xa rất nhỏ m&agrave;u n&acirc;u đỏ tr&ecirc;n đ&oacute;, tạo cho bạn cảm gi&aacute;c thư gi&atilde;n m&agrave; kh&ocirc;ng hề l&agrave;m tổn thương bề mặt da.</strong></p>

<p><strong>✔&nbsp;Sản phẩm sẽ gi&uacute;p bạn ngăn ngừa sự tiết dầu nhờn v&agrave; l&agrave;m sạch s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng khỏi bụi bẩn, l&agrave;m giảm thiểu sự ph&aacute;t triển của mụn ẩn, mụn đầu đen, mụn vi&ecirc;m, mụn trứng c&aacute;, nốt sưng tấy tr&ecirc;n da mặt&hellip;</strong></p>

<p><strong>&bull; Hạn sử dụng:&nbsp;36&nbsp;th&aacute;ng kể từ ng&agrave;y sản xuất/NSX xem tr&ecirc;n bao b&igrave; sản phẩm (12 th&aacute;ng kể từ ng&agrave;y mở nắp).</strong></p>

<p><img src="https://file.hstatic.net/1000006063/file/1254_2627951a4aca4d729af05b86098405b4_master.jpg" /></p>

<p><img src="https://file.hstatic.net/1000006063/file/1257_b08f1dfff30145a58d7494161611aac2_master.png" /></p>

<p><img src="https://images.innisfree.co.kr/kr/ko/upload/pdtDetail/skinCare/volcanic/volcanic_pore_foam_big/img03.gif" /></p>

<p><iframe frameborder="0" height="476" src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2Fthegioiskinfood%2Fvideos%2F693725827779869%2F&amp;show_text=0&amp;width=476" width="476"></iframe></p>

<p><img src="https://file.hstatic.net/1000006063/file/1256_52912b9e168f4160bc8a7bcaf5361427_master.jpg" /></p>

<p><strong>Review thực tế:</strong></p>

<p><img src="https://file.hstatic.net/1000006063/file/image_2719722451519574459697.jpg" /></p>

<p><img src="https://file.hstatic.net/1000006063/file/image_9684876721519574459697.jpg" /></p>

<p><strong>&dArr;</strong></p>

<p><img src="https://file.hstatic.net/1000006063/file/image_2796924801519574459698.jpg" /></p>

<p><img src="https://file.hstatic.net/1000006063/file/20171210_185642_.jpg" /></p>

<p><strong>&dArr;</strong></p>

<p><img src="https://file.hstatic.net/1000006063/file/20171210_184444.jpg" /></p>

<p><strong>&dArr;</strong></p>

<p><img src="https://file.hstatic.net/1000006063/file/20171210_173125_.jpg" /></p>

<p><img src="https://file.hstatic.net/1000006063/file/127_651921516f274b35b34599e4298b1bcd_master.png" /></p>
', 0, 0, 1, N'939622f9-5936-4c99-8d15-5a94aef2ba1e.jpg', N'4c56cc58-1374-453d-adb9-5033cd5833c4.jpg', N'c2af97e4-1eb7-4c9e-a563-35f3d3046b37.jpg', N'3e77e3cc-9940-4b26-8d76-36ad218b9369.jpg', N'new', N'Sữa Rửa Mặt Tro Núi Lửa Trị Mụn Đầu Đen, Bã Nhờn Innisfree Jeju Volcanic Pore Cleansing Foam Ex 150ml với thành phần tro núi lửa Jeju giúp loại bỏ bã nhờn, chăm sóc và làm sạch lỗ chân lông.', CAST(N'2021-03-23T09:14:58.767' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (3, 7, 17, N'Son Bút Chì Mamonde Creamy Tint Color Balm Intense', 180000, N'<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong><br />
<br />
<a href="https://cocoshop.vn/group/mamonde/">Mamonde</a>&nbsp;thuộc tập đo&agrave;n nổi tiếng<strong>&nbsp;Amore Pacific</strong>&nbsp;v&agrave; l&agrave; thương hiệu mỹ phẩm của H&agrave;n Quốc đang rất được ưa chuộng tại Việt Nam.&nbsp;<br />
<strong>Mamonde Creamy Tint Color Balm Intense</strong>&nbsp;với nhiều&nbsp;cải tiến vượt trội v&agrave; nổi bật hơn rất nhiều về m&agrave;u sắc lẫn thiết kế.&nbsp;Sản phẩm l&agrave; sự kết hợp ho&agrave;n hảo 3 in 1 c&oacute; t&aacute;c dụng của 3 loại son ch&iacute;nh như: son l&igrave;, son dưỡng v&agrave; son tint. Gi&uacute;p dưỡng m&ocirc;i lu&ocirc;n mềm mại, chất son l&acirc;u tr&ocirc;i v&agrave; nhẹ nh&agrave;ng kh&ocirc;ng g&acirc;y nặng m&ocirc;i.&nbsp;Khả năng lưu giữ m&agrave;u đến 6 tiếng.<br />
Son b&uacute;t ch&igrave; mamonde với độ dưỡng vừa phải, khả năng l&ecirc;n m&agrave;u chuẩn, độ mịn tốt tr&ecirc;n m&ocirc;i đ&atilde; nhanh ch&oacute;ng chiếm được cảm t&igrave;nh của rất nhiều c&ocirc; g&aacute;i Việt v&agrave; lu&ocirc;n nằm trong TOP những thỏi son b&aacute;n chạy nhất.<br />
<br />
&nbsp;</p>

<p><img alt="mamonde thỏi" src="https://cocoshop.vn/uploads/shops/11-09-2019/mamonde-thoi.jpg" style="height:876px; width:700px" /></p>

<p>&nbsp;</p>

<p><img alt="son mamonde" src="https://cocoshop.vn/uploads/shops/11-09-2019/son-mamonde.jpg" style="height:467px; width:700px" /></p>

<p><br />
<strong>Điểm nổi bật</strong><br />
Gi&uacute;p dưỡng m&ocirc;i lu&ocirc;n mềm mại, chất son l&acirc;u tr&ocirc;i v&agrave; nhẹ nh&agrave;ng kh&ocirc;ng g&acirc;y nặng m&ocirc;i. Khả năng lưu giữ m&agrave;u đến 6 tiếng.<br />
Mamonde Creamy Tint Color Balm Intense với nhiều cải tiến nổi bật từ thiết kế đến chất son cực mịn, khả năng l&ecirc;n m&agrave;u si&ecirc;u chuẩn.<br />
Th&agrave;nh phần ch&iacute;nh chiết xuất từ tinh dầu hoa tầm xu&acirc;n, tinh dầu hoa jojoba, s&aacute;p ong v&agrave; nhiều dưỡng chất c&oacute; lợi kh&aacute;c.<br />
Điểm đặc biệt đ&acirc;y l&agrave; d&ograve;ng son 3 trong 1: kết hợp ho&agrave;n hảo giữa t&iacute;nh tiện lợi của son thỏi, m&agrave;u sắc trẻ trung của tint v&agrave; độ dưỡng cao của balm. Son lướt tr&ecirc;n m&ocirc;i cực mướt.<br />
Thời gian lưu m&agrave;u l&ecirc;n đến 6 tiếng đồng hồ, thoải m&aacute;i cho c&aacute;c bạn xinh tươi đi chơi ăn uống cả ng&agrave;y.<br />
Hiện&nbsp;<a href="https://cocoshop.vn/">Coco Shop</a>&nbsp;c&oacute; c&aacute;c m&agrave;u:<br />
<strong>M&agrave;u 10<br />
M&agrave;u 20<br />
M&agrave;u 21<br />
M&agrave;u 22<br />
M&agrave;u 23<br />
M&agrave;u 24<br />
M&agrave;u 25</strong><br />
&nbsp;</p>

<p><img alt="son mamonde 2" src="https://cocoshop.vn/uploads/shops/11-09-2019/son-mamonde-2.jpg" style="height:700px; width:700px" /></p>

<p>&nbsp;</p>

<p><img alt="son mamonde 1" src="https://cocoshop.vn/uploads/shops/11-09-2019/son-mamonde-1.jpg" style="height:700px; width:700px" /></p>

<p><br />
<strong>Hướng dẫn sử dụng</strong><br />
- Sử dụng&nbsp;son dưỡng m&ocirc;i&nbsp;trước khi thoa son gi&uacute;p cho đ&ocirc;i m&ocirc;i lu&ocirc;n căng b&oacute;ng v&agrave; mịn m&agrave;ng.<br />
- Thoa son l&ecirc;n m&ocirc;i, sau đ&oacute; t&aacute;n đều để tạo lớp m&agrave;u đều mịn, tươi tắn cho m&ocirc;i. T&ugrave;y thuộc v&agrave;o từng phong c&aacute;ch của mỗi người m&agrave; c&oacute; c&aacute;ch điều chỉnh son kh&aacute;c nhau.<br />
&nbsp;</p>

<p><img alt="mamonde 23 1" src="https://cocoshop.vn/uploads/shops/11-09-2019/mamonde-23-1.jpg" style="height:700px; width:700px" /></p>

<p><br />
<br />
<br />
<br />
<br />
<strong>Xuất xứ:</strong>&nbsp;H&agrave;n Quốc<br />
<strong>Thương hiệu:&nbsp;</strong>Mamonde<br />
<strong>Trọng lượng:</strong>&nbsp;2.5g</p>
', 0, 0, 1, N'34200786-c83d-40e8-b76b-ea21c47dbb56.jpg', N'78dda029-698d-4327-b576-a47a9006f624.jpg', N'007cf215-ec30-423e-a9d1-1ce964c4824e.jpg', N'0acad6cb-64a2-45ac-b9e4-6a1d4dbe5b28.jpg', N'a', N'Son bút chì Mamonde – dòng son cực hot trên thị trường mỹ phẩm Hàn Quốc. - Son bút chì siêu lỳ Mamonde không chỉ giúp bạn sở hữu đôi môi tươi tắn, quyến rũ nhờ bảng màu lên tới 20 tone mà còn dưỡng môi mềm mịn. - Sở hữu ngay son bút chì Mamonde để luôn tự tin, xinh đẹp.', CAST(N'2021-03-23T09:24:06.620' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (4, 1, 1, N'Sữa rửa mặt tạo bọt dạng tuýp Hadalabo Gokujyun 100g', 170000, N'<p>​​​​H&agrave;ng ng&agrave;y, l&agrave;n da ch&uacute;ng ta tiết ra chất nhờn, mồ h&ocirc;i, tế b&agrave;o chết v&agrave; tiếp x&uacute;c với c&aacute;c yếu tố b&ecirc;n ngo&agrave;i m&ocirc;i trường như bụi bẩn, kh&ocirc;ng kh&iacute; &ocirc; nhiễm, vi khuẩn&hellip; n&ecirc;n rất bẩn, khiến lỗ ch&acirc;n l&ocirc;ng bị b&iacute;t tắc.</p>

<p>Nếu kh&ocirc;ng l&agrave;m sạch da thường xuy&ecirc;n sẽ g&acirc;y n&ecirc;n t&igrave;nh trạng vi&ecirc;m nhiễm, tạo điều kiện thuận lợi cho mụn h&igrave;nh th&agrave;nh v&agrave; lỗ ch&acirc;n l&ocirc;ng gi&atilde;n to ra.</p>

<p>Nước sạch ho&agrave;n to&agrave;n kh&ocirc;ng thể lấy đi hết mọi chất bẩn tr&ecirc;n da, m&agrave; phải cần đến sữa rửa mặt.</p>

<p>Nếu bạn đang đi t&igrave;m một sản phẩm sữa rửa mặt c&oacute; c&ocirc;ng dụng l&agrave;m sạch da hiệu quả, nhưng kh&ocirc;ng g&acirc;y hiện tượng&nbsp;da bị kh&ocirc; r&aacute;t sau khi rửa mặt th&igrave;&nbsp;<strong><a href="https://hangxachtay.com/sua-rua-mat-hadalabo-nhat-ban">Sữa rửa mặt Hada Labo Gokujyun Face Wash&nbsp;</a></strong>l&agrave; một trong những sản phẩm ph&ugrave; hợp với bạn.&nbsp;<strong><a href="https://hangxachtay.com/sua-rua-mat-hadalabo-nhat-ban">Sữa rửa mặt Hada Labo Gokujyun Face Wash</a></strong>&nbsp;đến từ Rohto mỹ phẩm Nhật Bản, h&atilde;ng mỹ phẩm n&agrave;y cũng l&agrave; cha đẻ của sản phẩm Sữa rửa mặt tạo bọt Hada Labo Gokujyun Hatomugi hay Lotion Hada Labo đ&igrave;nh đ&aacute;m.</p>

<p><strong>GIỚI THIỆU CHUNG:</strong></p>

<ul>
	<li><strong><a href="https://hangxachtay.com/sua-rua-mat-hadalabo-nhat-ban">Sữa rửa mặt Hada Labo Gokujyun Face Wash</a></strong>&nbsp;l&agrave; sản phẩm b&aacute;n chạy nhất trong nhiều năm liền của Hada Labo v&agrave; vẫn đang được c&aacute;c bạn g&aacute;i nhiều nước tin d&ugrave;ng. Sản phẩm sữa rửa mặt tạo bọt sẵn tiện lợi gi&uacute;p l&agrave;m sạch s&acirc;u da mặt cho bạn cảm gi&aacute;c tươi m&aacute;t, sảng kho&aacute;i.</li>
	<li><strong><a href="https://hangxachtay.com/sua-rua-mat-hadalabo-nhat-ban">Sữa rửa mặt Hada Labo</a></strong>&nbsp;tạo bọt kh&ocirc;ng chứa Paraben, kh&ocirc;ng silicon, kh&ocirc;ng hương liệu, kh&ocirc;ng chất tạo m&agrave;u. Tuyệt đối an to&agrave;n cho những l&agrave;n da d&ugrave; l&agrave; nhạy cảm. Đ&acirc;y l&agrave; sản phẩm kh&ocirc;ng thể bỏ qua cho một l&agrave;n da sạch dịu nhẹ m&agrave; vẫn lu&ocirc;n giữ được độ ẩm c&acirc;n bằng của da.</li>
	<li>L&agrave; sữa rửa mặt tạo bọt, lớp bọt mịn của Hada Labo Face Wash nhẹ nh&agrave;ng l&agrave;m sạch bụi bẩn, b&atilde; nhờn, dầu thừa tr&ecirc;n da. G&oacute;p phần cải thiện t&igrave;nh h&igrave;nh mụn c&aacute;m, mụn ẩn, mụn đầu đen tr&ecirc;n da.</li>
	<li>Thuộc d&ograve;ng dưỡng ẩm Gokujyun, sữa rửa mặt Hada Labo với c&ocirc;ng thức h&ograve;a trộn nhiều loại Hyaluronic Acid, đem đến độ ẩm tuyệt vời, gi&uacute;p da lu&ocirc;n căng mọng tươi trẻ.</li>
	<li>Tạo cảm gi&aacute;c ẩm mượt, mịn m&agrave;ng sau khi sử dụng, kh&ocirc;ng g&acirc;y kh&ocirc; da.</li>
	<li>Độ PH c&acirc;n bằng (5.5) đảm bảo cho da khỏi sự k&iacute;ch ứng.</li>
</ul>

<p>&nbsp;</p>

<p><img src="https://bizweb.dktcdn.net/100/132/269/files/sua-rua-mat-tao-bot-hadalabo-gokujyun-100g1.png?v=1544601437779" /></p>

<p>&nbsp;</p>

<p><strong>HƯỚNG DẪN SỬ DỤNG:</strong></p>

<ul>
	<li>L&agrave;m ướt tay v&agrave; mặt, cho một lượng vừa đủ sữa rửa mặt Hada Labo ra l&ograve;ng b&agrave;n tay.&nbsp;</li>
	<li>Cho th&ecirc;m v&agrave;i giọt nước, đ&aacute;nh b&ocirc;ng tạo bọt.</li>
	<li>Nhẹ nh&agrave;ng matxa khắp mặt với lớp bọt si&ecirc;u mịn.</li>
	<li>Rửa sạch lại bằng nước sạch.</li>
	<li>D&ugrave;ng khăn kh&ocirc; thấm nước tr&ecirc;n da.</li>
	<li>Sử dụng với c&aacute;c sản phẩm kh&aacute;c của Hadalabo để đạt hiệu quả tối ưu.</li>
</ul>

<p>&nbsp;</p>

<p><img src="https://bizweb.dktcdn.net/100/132/269/files/hadalabo-gokujyun-1-100g-29335de4-09b8-4b4f-a2fc-ad2956a56079.jpg?v=1545204117608" /></p>

<p>&nbsp;</p>

<p><strong>LƯU &Yacute;:</strong></p>

<p>Mặc d&ugrave; rửa mặt bằng sữa rửa mặt l&agrave; một bước v&ocirc; c&ugrave;ng cần thiết, nhưng nếu l&agrave;m sai hoặc lạm dụng sẽ g&acirc;y phản t&aacute;c dụng, l&agrave;m da tổn thương, yếu đi, nhanh l&atilde;o h&oacute;a v&agrave; g&acirc;y ra mụn. Để d&ugrave;ng sữa rửa mặt đ&uacute;ng c&aacute;ch, bạn chỉ cần thực hiện đầy đủ tất cả c&aacute;c bước đơn giản như tr&ecirc;n v&agrave; những lưu &yacute; sau:</p>

<p>Trong qu&aacute; tr&igrave;nh rửa mặt bạn cần thực hiện thật nhẹ nh&agrave;ng, tr&aacute;nh kỳ cọ qu&aacute; mạnh hoặc l&agrave;m qu&aacute; l&acirc;u, v&igrave; điều n&agrave;y sẽ khiến da tổn thương v&agrave; kh&ocirc;ng l&agrave;m sạch s&acirc;u hơn như nhiều người vẫn nghĩ.</p>

<ul>
	<li>Đối với da thường bạn n&ecirc;n d&ugrave;ng sữa rửa mặt 2 lần/ng&agrave;y.</li>
	<li>Da dầu n&ecirc;n d&ugrave;ng sữa rửa mặt thường xuy&ecirc;n hơn.</li>
	<li>C&ograve;n da kh&ocirc; chỉ cần d&ugrave;ng sữa rửa mặt 1 lần/ng&agrave;y.</li>
	<li>Kh&ocirc;ng được lạm dụng sữa rửa mặt bởi rất dễ l&agrave;m da nhờn hoặc kh&ocirc; hơn, nổi mụn, xuất hiện nếp nhăn&hellip;</li>
	<li>Nhằm đảm bảo an to&agrave;n v&agrave; hiệu quả, bạn cần lựa chọn những sản phẩm ph&ugrave; hợp với t&igrave;nh trạng da của m&igrave;nh, c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
</ul>
', 0, 0, 1, N'29dd9f57-ac80-434e-872d-ade445aaa73b.jpg', N'0f7a0445-51be-4a87-ba28-eb1dba9c5e17.jpg', N'be742f2b-8e4a-411b-aa0e-9d819dcfbcfe.jpg', N'b3f09f55-7537-4806-9677-3f603bd2c199.jpg', N'ko', N'Nếu bạn đang đi tìm một sản phẩm sữa rửa mặt có công dụng làm sạch da hiệu quả, nhưng không gây hiện tượng da bị khô rát sau khi rửa mặt thì Sữa rửa mặt Hada Labo Gokujyun Face Wash là một trong những sản phẩm phù hợp với bạn.', CAST(N'2021-03-23T10:21:27.167' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (5, 6, 19, N'Bảng Phấn Mắt Urban Decay Naked Cherry Eyeshadow Palette', 1400000, N'<p><strong><em>Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 &Ocirc; M&agrave;u Ngọt Ng&agrave;o</em></strong></p>

<p>&nbsp;</p>

<p>-&nbsp;Bảng mắt<a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette"><strong><em>&nbsp;Urban Decay Naked Cherry&nbsp;</em></strong></a>đ&uacute;ng như t&ecirc;n gọi được lấy cảm hứng từ những tr&aacute;i&nbsp;<a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette"><em><strong>Cherry</strong></em></a>&nbsp;ngọt ng&agrave;o,&nbsp;<a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette"><em><strong>Naked</strong></em></a>&nbsp;sẽ mang lại cho chị em một diện mạo tươi mới v&agrave; cực kỳ đ&aacute;ng y&ecirc;u như những tr&aacute;i Cherry n&agrave;y.</p>

<p>&nbsp;</p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/1_5214b4faa5f44614a6371f069d778937_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/2_344c8eaf557b40fd8c5f113ce9192eb3_1024x1024.jpg" /></a></p>

<p>&nbsp;</p>

<p>-&nbsp;<a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette"><em><strong>Urban Decay Naked Cherry</strong></em></a>&nbsp;sở hữu 12 m&agrave;u phấn, chủ yếu l&agrave; c&aacute;c tone m&agrave;u hồng, đỏ t&iacute;a v&agrave; n&acirc;u, kết hợp với c&aacute;c &ocirc; m&agrave;u trung t&iacute;nh cơ bản. Cho bạn thoải m&aacute;i biến h&oacute;a theo c&aacute;c style từ ngọt ng&agrave;o đến sexy, quyến rũ.</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000025647/file/bang-mat-urban-decay-naked-cherry_e7ef2ee7e95945ef8bbe752ba010dfe9_1024x1024.png" /></p>

<p><br />
- Bảng phấn&nbsp;<a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette"><em><strong>Cherry</strong></em></a>&nbsp;tập hợp đầy đủ c&aacute;c &ocirc; m&agrave;u từ matte mịn l&igrave; đến nhũ lấp l&aacute;nh, bạn tha hồ kết hợp v&agrave; biến h&oacute;a đa dạng phong c&aacute;ch trang điểm.&nbsp;Chất phấn mềm như lụa, mượt m&agrave;, l&ecirc;n m&agrave;u chuẩn đều v&agrave; độ b&aacute;m si&ecirc;u tốt, chỉ cần lấy một &iacute;t phấn ở đầu cọ l&agrave; bạn c&oacute; thể t&aacute;n cả bầu mắt rồi.</p>

<p>&nbsp;</p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/3_5dc50d602a8949ad836647dc0dc77d9d_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/5_2b4cd102331d49ba9e76a0a1ee7e4ddf_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/111_1d54703a99154411b248615a96df8219_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/4_99d44d3e50184114bbde4392bb75e5be_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/22_161fb9b7c1244690b88a9040b26a1a88_1024x1024.jpg" /></a></p>

<p>&nbsp;</p>

<p>- B&ecirc;n trong hộp c&ograve;n k&egrave;m theo gương soi v&agrave; cọ t&aacute;n phấn mắt 2 đầu kh&aacute; tiện lợi, n&agrave;ng c&oacute; thể bỏ t&uacute;i mang theo b&ecirc;n m&igrave;nh l&agrave;m đẹp mọi l&uacute;c mọi nơi.</p>

<p>&nbsp;</p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/11_42643da7a93c4e8b9bb1efa22b029d82_1024x1024.jpg" /></a></p>

<p><a href="https://thegioisonmoi.com/products/bang-mat-urban-decay-naked-cherry-eyeshadow-palette" title="Bảng Mắt Urban Decay Naked Cherry Eyeshadow Palette - 12 Ô Màu Ngọt Ngào"><img src="https://file.hstatic.net/1000025647/file/12_1b211e7797d04e1d921254630f274e67_1024x1024.jpg" /></a></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Thương hiệu:&nbsp;</strong>Urban Decay</p>

<p><strong>Xuất xứ :</strong>&nbsp;USA</p>

<p>&nbsp;</p>
', 0, 0, 1, N'e151f0d6-6355-404c-98fb-77699d4f196e.jpg', N'0fa194f6-031c-495a-b0c3-ff3faddd53eb.jpg', N'bce3d9c0-bd42-4f25-9e5f-a71c3812e4a9.jpg', N'2b2771f4-0091-4860-ac46-db1e7ce69dfa.jpg', N'new', N'Bảng Phấn Mắt Urban Decay Naked Cherry Eyeshadow Palette là hộp phấn mắt nằm trong bộ sưu tập Naked Cherry Collection ra mắt vào tháng 8/2018, chắc chắn sẽ là bảng phấn mắt mà không một tín đồ làm đẹp nào lại nỡ lòng từ chối.', CAST(N'2021-03-23T10:41:42.563' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (6, 6, 19, N'Bảng Phấn Mắt Urban Decay Naked 2 Eyeshadow Palette', 1300000, N'<h1>Bảng Phấn Mắt Urban Decay Naked 2 Eyeshadow Palette</h1>

<p><img alt="" src="https://thegioimyphambd.vn/wp-content/uploads/2017/04/phan-mat-urban-decay-naked-2-palette-4.jpg" style="height:700px; width:1200px" /></p>

<p>Sau th&agrave;nh c&ocirc;ng vang dội của Naked 1, nh&agrave; Urban Decay lại tiếp tục &ldquo;đốn tim&rdquo; c&aacute;c c&ocirc; g&aacute;i khi tr&igrave;nh l&agrave;ng Bảng Phấn Mắt Urban Decay Naked 2 Eyeshadow Palette &ldquo;đẹp xuất thần&rdquo; mang đến sức hấp dẫn kh&ocirc;ng thể chối từ.</p>

<p>Với bảng phấn mắt n&agrave;y, d&ugrave; l&agrave; c&aacute;c c&ocirc; n&agrave;ng mới tập t&agrave;nh cầm cọ hay đ&atilde; thuộc h&agrave;ng &ldquo;l&atilde;o luyện&rdquo; cũng sẽ dễ d&agrave;ng phối m&agrave;u cho đ&ocirc;i mắt th&ecirc;m lung linh với 12 tone m&agrave;u trung t&iacute;nh, kết hợp cả tone ấm v&agrave; tone lạnh ph&ugrave; hợp với tất cả phong c&aacute;ch trang điểm, kể cả mắt kh&oacute;i ấn tượng.</p>

<p>Naked 2 c&oacute; chất phấn &ldquo;đẹp m&ecirc; hồn&rdquo; v&agrave; l&agrave; sự kết hợp giữa matte (l&igrave;) v&agrave; shimmer (nhũ) sẽ gi&uacute;p bạn &ldquo;ph&ugrave; ph&eacute;p&rdquo; đ&ocirc;i mắt th&ecirc;m long lanh, ấn tượng v&agrave; nổi bật hơn mỗi khi xuất hiện bất cứ nơi đ&acirc;u.</p>

<p>Kết cấu hạt phấn mịn như nhung, dễ t&aacute;n v&agrave; b&aacute;m da cực tốt, c&aacute;c n&agrave;ng da hay đổ dầu cũng y&ecirc;n t&acirc;m nha v&igrave; em n&agrave;y cực kỳ l&acirc;u tr&ocirc;i. Phấn cũng kh&ocirc;ng hề g&acirc;y k&iacute;ch ứng cho mắt v&agrave; da đ&acirc;u nha.</p>

<p>M&agrave;u phấn l&ecirc;n cực chuẩn, cho d&ugrave; bạn c&oacute; trang điểm ban ng&agrave;y hay ban đ&ecirc;m th&igrave; h&atilde;y cứ y&ecirc;n t&acirc;m vẫn lu&ocirc;n đẹp, lu&ocirc;n nổi bật nh&eacute;.</p>

<p>Thiết kế rất chắc chắn, kh&ocirc;ng lo phấn sẽ bị lem hay vỡ khi di chuyển. Ngo&agrave;i ra, phần nắp ph&iacute;a trong hộp được trang bị một chiếc gương c&oacute; thể mở 180 độ, thuận tiện cho việc kẻ mắt dưới nhiều g&oacute;c độ.</p>

<p>B&ecirc;n cạnh đ&oacute;, h&atilde;ng c&ograve;n rất t&acirc;m l&yacute; khi tặng k&egrave;m theo mỗi hộp phấn mắt l&agrave; một c&acirc;y 1 c&acirc;y cọ trang điểm 2 đầu l&agrave;m từ sợi tổng hợp.</p>

<p><img alt="" src="https://thegioimyphambd.vn/wp-content/uploads/2017/04/nak-1-1024x575.jpg" style="height:575px; width:1024px" /></p>
', 0, 0, 1, N'8aee200b-6360-45c1-9fd9-db6e00c517a2.jpg', N'461dfa92-e08a-4b61-9bf6-85a1a5ea99cd.jpg', N'6b71d633-0b19-4b33-9564-a7377cb4d6a0.jpg', N'e4c68ef2-fd15-44fd-904c-cf0a5cafe623.jpg', N'new', N'Sau thành công vang dội của Naked 1, hãng Urban Decay lại tiếp tục “đốn tim” các nàng đã cho ra mắt phiên bản Urban Decay Naked 2 Eyeshadow Palette “đẹp xuất thần” mang đến sức hấp dẫn không thua kém gì bảng Naked 1', CAST(N'2021-03-23T10:47:08.317' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (7, 6, 19, N'Bảng Phấn Mắt Urban Decay Naked Ultra Violet Palette', 1250000, N'<p><img alt="💜" src="https://static.xx.fbcdn.net/images/emoji.php/v9/tef/1.5/16/1f49c.png" style="height:16px; width:16px" /> BẢNG PHẤN MẮT Urban Decay Naked Ultra Violet Palette<img alt="💜" src="https://static.xx.fbcdn.net/images/emoji.php/v9/tef/1.5/16/1f49c.png" style="height:16px; width:16px" /></p>

<p><img alt="🤩" src="https://static.xx.fbcdn.net/images/emoji.php/v9/tb1/1.5/16/1f929.png" style="height:16px; width:16px" />Lấy cảm hứng từ m&agrave;u sắc t&iacute;m đặc trưng của thương hiệu, Utral Violet l&agrave; bản kh&aacute;m ph&aacute; sắc th&aacute;i sống động, sự chuyển m&igrave;nh mạnh mẽ linh hoạt của c&aacute;c c&ocirc; n&agrave;ng.</p>

<p><img alt="💖" src="https://static.xx.fbcdn.net/images/emoji.php/v9/t42/1.5/16/1f496.png" style="height:16px; width:16px" />Với sự tạo h&igrave;nh đ&ocirc;i mắt kh&oacute;i m&agrave;u t&iacute;m l&agrave;m cho vẻ ngo&agrave;i ban ng&agrave;y của bạn ho&agrave;n to&agrave;n nổi bật giữa đ&aacute;m đ&ocirc;ng. &Aacute;p dụng với kết cấu mượt m&agrave; sang trọng, c&aacute;c gam m&agrave;u lấp l&aacute;nh mang lại sắc tố phong ph&uacute; cho đ&ocirc;i mắt xinh đẹp kia.</p>

<p><img alt="🔥" src="https://static.xx.fbcdn.net/images/emoji.php/v9/ta9/1.5/16/1f525.png" style="height:16px; width:16px" /> Bảng mắt Naked Utra Violet Palette với 12 gam m&agrave;u đa dạng tuyệt đẹp v&agrave; thật gợi cảm. L&agrave; sự kết hợp đỉnh cao với c&aacute;ch phối m&agrave;u đầy t&iacute;nh chuy&ecirc;n nghiệp. Những gam m&agrave;u lấp l&aacute;nh tự nhi&ecirc;n sẽ l&agrave;m đ&ocirc;i mắt đ&aacute;ng y&ecirc;u của bạn th&ecirc;m quyến rũ.</p>

<p>&nbsp;</p>
', 0, 0, 1, N'7bb5ecc3-4294-49fa-a181-edee9a2a2574.jpg', N'd52e2e88-2b37-4101-9937-00a73350d695.jpg', N'09b325f0-c401-45ec-8e1d-1ef7e1c902de.jpg', N'7640de17-aaba-4e0e-8f51-c60d10dbab20.jpg', N'new', N'Nối tiếp bảng màu Naked Palette 1, URBAN DECAY đã cho ra ấn bản thứ 2 tuyệt đẹp Naked Palette 2 với 12 màu mắt quyến rũ và gợi cảm đi kèm cọ phấn mắt Good Karma với chất liệu hàng đầu.', CAST(N'2021-03-23T11:10:50.613' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (8, 1, 24, N'Sữa rửa mặt dịu nhẹ cho da nhạy cảm Cetaphil chai 500ml', 272000, N'<h2>Giới thiệu chung về sữa rửa mặt Cetaphil</h2>

<p>&nbsp;</p>

<p>Cetaphil l&agrave; một d&ograve;ng chăm s&oacute;c da thuộc Galderma Laboratories, sản xuất tại Canada. C&aacute;c sản phẩm của Galderma lu&ocirc;n đạt ti&ecirc;u chuẩn về y tế v&agrave; da liễu. Trong đ&oacute;, sữa rửa mặt b&aacute;c sĩ da liễu khuy&ecirc;n d&ugrave;ng thường l&agrave; Cetaphil.</p>

<p>Sản phẩm được thiết kế với vỏ nhựa đơn giản c&ugrave;ng hai m&agrave;u xanh, trắng đặc trưng. Với thể t&iacute;ch lớn như sữa rửa mặt Cetaphil 500ml, sản phẩm c&oacute; thiết kế v&ograve;i bơm tiện dụng (giống như chai dầu gội, sữa tắm).</p>

<p>Chất sữa c&oacute; dạng lotion lỏng, m&agrave;u hơi đục. Nhờ dịu nhẹ, hầu như kh&ocirc;ng tạo bọt trong khi sử dụng, nhiều người chọn d&ugrave;ng sữa rửa mặt Cetaphil cho da dầu.</p>

<blockquote>
<p>Cetaphil c&oacute; c&aacute;c th&agrave;nh phần như nước cất, cetyl alcol, propylen glycol, natri lauryl sulfat, stearyl alcol,&nbsp;<a href="https://hellobacsi.com/chuyen-de/cham-soc-da-tham-my/giai-oan-tin-don-paraben-trong-my-pham-gay-ung-thu/" target="_blank">parabens</a>.</p>
</blockquote>

<h2>C&ocirc;ng dụng</h2>

<h3><img alt="quy trình rửa mặt đúng cách" src="https://hellobacsi.com/wp-content/uploads/2016/05/cach-chon-sua-rua-mat-5-e1596001395141.jpg" style="height:500px; width:750px" /></h3>

<h3>C&ocirc;ng dụng của sữa rửa mặt Cetaphil l&agrave; g&igrave;?</h3>

<p>Cetaphil gi&uacute;p loại bỏ chất nhờn tr&ecirc;n mặt, tẩy sạch bụi bẩn v&agrave; trang điểm m&agrave; kh&ocirc;ng l&agrave;m cho da bạn bị kh&ocirc; r&aacute;p. Đem lại cho bạn cảm gi&aacute;c sảng kho&aacute;i, tươi m&aacute;t v&agrave; sạch sẽ.</p>

<p>C&aacute;c th&agrave;nh phần trong sữa rửa mặt c&oacute; t&aacute;c dụng sau:</p>

<ul>
	<li><em><strong>Cetyl alcol:</strong></em>&nbsp;Gi&uacute;p l&agrave;m mịn v&agrave; l&agrave;m mềm da như chất l&agrave;m mềm. Đ&acirc;y l&agrave; chất hoạt động bề mặt kh&ocirc;ng ion, chất nhũ ho&aacute;, chất l&agrave;m mềm được d&ugrave;ng trong rất nhiều mỹ phẩm. Ở Mỹ, chất n&agrave;y đ&atilde; được FDA ph&ecirc; duyệt, an to&agrave;n v&agrave; l&agrave;nh t&iacute;nh.</li>
	<li><em><strong>Propylene glycol:</strong></em>&nbsp;&nbsp;L&agrave; một chất l&agrave;m giảm sự tho&aacute;t hơi nước tr&ecirc;n bề mặt, c&oacute; thể h&uacute;t ẩm trong kh&ocirc;ng kh&iacute; để cung cấp cho da, gi&uacute;p l&agrave;m ẩm da. Gi&uacute;p hydrat h&oacute;a v&agrave; tăng độ ẩm trong kết cấu tế b&agrave;o của da. Propylene glycol sẽ l&agrave;m giảm lượng da bong tr&oacute;c v&agrave; hạn chế l&agrave;m kh&ocirc; da.</li>
	<li><em><strong>Natri lauryl sulfate:</strong></em>&nbsp;Gi&uacute;p c&aacute;c chất trong sản phẩm trượt qua bề mặt da một c&aacute;ch nhẹ nh&agrave;ng v&agrave; giảm sức căng cho bề mặt da. Đ&acirc;y l&agrave; th&agrave;nh phần được liệt k&ecirc; top 10 th&agrave;nh phần n&ecirc;n c&oacute; trong c&aacute;c sữa rửa mặt.</li>
	<li><strong><em>Steary alcol:</em>&nbsp;</strong>L&agrave; một chất nhũ ho&aacute; gi&uacute;p l&agrave;m mịn v&agrave; mềm da, đồng thời &nbsp;bảo quản c&aacute;c chất phụ gia trong c&aacute;c hợp chất để ch&uacute;ng kh&ocirc;ng bị ph&aacute; vỡ.</li>
	<li><em><strong>Parabens:</strong></em>&nbsp;Chất bảo quản, c&oacute; thể giải ph&oacute;ng một số chất cần thiết cung cấp cho da.</li>
</ul>

<p>Cetaphil c&oacute; thể d&ugrave;ng để:</p>

<ul>
	<li>Tẩy trang</li>
	<li>Thay thế cho kem cạo r&acirc;u</li>
	<li>Tắm kh&ocirc; cho sản phụ sau sinh, bệnh nh&acirc;n hậu phẫu, bệnh nh&acirc;n cần tr&aacute;nh bị nhiễm lạnh</li>
	<li>Tắm h&agrave;ng ng&agrave;y cho trẻ sơ sinh &amp; trẻ nhỏ, đặc biệt hiệu quả tắm cho trẻ bị r&ocirc;m sảy, hăm da, ngứa da</li>
	<li>D&ugrave;ng vệ sinh quanh miệng cho b&eacute; sau khi ăn, sau b&uacute;</li>
	<li>Bạn c&oacute; thể thoa một lớp mỏng l&ecirc;n v&ugrave;ng t&atilde; l&oacute;t trước khi mang t&atilde;, gi&uacute;p b&eacute; tr&aacute;nh&nbsp;<a href="https://hellobacsi.com/benh/ham-ta/" rel="noopener" target="_blank">hăm da</a></li>
</ul>

<h2>Đối tượng sử dụng</h2>

<h3>Những ai n&ecirc;n sử dụng sữa rửa mặt Cetaphil?</h3>

<p>Sữa rửa mặt Cetaphil l&agrave; một sản phẩm dịu nhẹ, &iacute;t g&acirc;y k&iacute;ch ứng, ph&ugrave; hợp cho c&aacute;c l&agrave;n da bị&nbsp;<a href="https://hellobacsi.com/song-khoe/10-cach-tri-mun-trung-ca-tai-nha-an-toan-hieu-qua/" rel="noopener" target="_blank" title="10 cách trị mụn trứng cá tại nhà an toàn và hiệu quả">mụn trứng c&aacute;</a>,&nbsp;<a href="https://hellobacsi.com/song-khoe/so-cuu-va-phong-ngua/nhung-dieu-ban-can-biet-ve-viem-da-di-ung/" rel="noopener" target="_blank">ch&agrave;m thể tạng</a>, eczema, ngứa, da kh&ocirc;,&nbsp;<a href="https://hellobacsi.com/song-khoe/10-dau-hieu-nhan-biet-da-nhay-cam/" rel="noopener" target="_blank" title="Da nhạy cảm là gì? 10 dấu hiệu nhận biết da nhạy cảm">da nhạy cảm</a>, vảy c&aacute;, đỏ da, vẩy nến, bỏng nắng, vi&ecirc;m da dị ứng, ch&agrave;m tiếp x&uacute;c, da bị l&atilde;o h&oacute;a, n&aacute;m da, da bị k&iacute;ch th&iacute;ch khi sử dụng benzoyl peroxid, tretinoin, adapalen.</p>

<blockquote>
<p>Cetaphil d&ugrave;ng được cho nhiều loại da như da dầu/ da kh&ocirc;/ da hỗn hợp. D&ugrave;ng được cho cả mặt v&agrave; to&agrave;n th&acirc;n.</p>
</blockquote>

<h2>C&aacute;ch d&ugrave;ng</h2>

<h3><img alt="cách sử dụng sửa rữa mặt" src="https://cdn.hellobacsi.com/wp-content/uploads/2018/12/sua-rua-mat-cetaphil-3.jpg" style="height:417px; width:626px" /></h3>

<h3>Bạn n&ecirc;n d&ugrave;ng sữa rửa mặt Cetaphil như thế n&agrave;o?</h3>

<p>Bạn c&oacute; thể d&ugrave;ng sửa rữa mặt n&agrave;y cho da mặt &amp; to&agrave;n th&acirc;n, ng&agrave;y 2-4 lần.</p>

<p>Một số c&aacute;ch sử dụng Cetaphil theo hướng dẫn của nh&agrave; sản xuất:</p>

<h4><em>Rửa với nước</em></h4>

<ul>
	<li>Đầu ti&ecirc;n, bạn l&agrave;m ướt mặt với nước</li>
	<li>Cho sữa rửa mặt ra l&ograve;ng b&agrave;n tay, th&ecirc;m một &iacute;t nước rồi xoa nhẹ hai b&agrave;n tay để tạo bọt</li>
	<li>Sau đ&oacute;, bạn thoa đều l&ecirc;n mặt v&agrave; m&aacute;t xa nhẹ nh&agrave;ng theo chuyển động tr&ograve;n</li>
	<li>Cuối c&ugrave;ng, bạn rửa mặt lại với nước sạch v&agrave; d&ugrave;ng khăn lau kh&ocirc; nhẹ nh&agrave;ng</li>
</ul>

<h4><em>Rửa kh&ocirc;</em></h4>

<ul>
	<li>Bạn lấy một &iacute;t sữa rửa mặt ra l&ograve;ng b&agrave;n tay, thoa đều v&agrave; m&aacute;t xa mặt</li>
	<li>Sau đ&oacute;, bạn chỉ cần d&ugrave;ng khăn mềm hoặc khăn giấy để lau sạch da mặt, kh&ocirc;ng cần rửa lại với nước</li>
	<li>Tuy nhi&ecirc;n, nếu cảm thấy kh&oacute; chịu th&igrave; bạn c&oacute; thể d&ugrave;ng nước rửa lại một lần nữa</li>
</ul>

<p>Với c&aacute;ch d&ugrave;ng kh&ocirc; n&agrave;y th&igrave; ph&ugrave; hợp với những bạn n&agrave;o đi du lịch xa, hay trong thời tiết lạnh.</p>
', 0, 0, 1, N'c1067f1a-970c-4ec2-8956-4cdc0614cc5d.jpg', N'25c0ddb1-7d0c-4075-a08f-0ed5199f2149.jpg', N'a6f5f214-b576-45de-ae30-b8d6f1a60792.jpg', N'2c9bb4ba-ebf5-47c2-bacf-22dd9c9e3f9f.jpg', N'no', N'Cetaphil là một dòng chăm sóc da thuộc Galderma Laboratories, sản xuất tại Canada. Các sản phẩm của Galderma luôn đạt tiêu chuẩn về y tế và da liễu. Trong đó, sữa rửa mặt bác sĩ da liễu khuyên dùng thường là Cetaphil.', CAST(N'2021-03-23T11:52:39.223' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (9, 7, 18, N'Son Kem Mac Powder Kiss Liquid Lipcolour – 990 More The Mehr-ier Màu Hồng Đất', 639000, N'<p>Th&aacute;ng 4/2020, MAC đ&atilde; cho ra mắt bộ sưu tập mới mang t&ecirc;n&nbsp;<strong>Powder Kiss Liquid Lipcolour</strong>&nbsp;với tổng cộng 17 m&agrave;u son v&ocirc; c&ugrave;ng nổi bật. Như thường lệ, cứ mỗi khi ra mắt d&ograve;ng son mới l&agrave; ngay lập tức &ocirc;ng lớn trong ng&agrave;nh mỹ phẩm n&agrave;y khiến giới mộ điệu đứng ngồi kh&ocirc;ng y&ecirc;n. V&agrave; lần n&agrave;y cũng kh&ocirc;ng phải ngoại lệ. Thỏi&nbsp;<strong>son MAC 990 More The Mehr-ier</strong>&nbsp;l&agrave; một m&agrave;u son mới, m&agrave;u hồng nude đang hot hit những năm gần đ&acirc;y.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/01/son-mac-powder-kiss-liquid-lipcolour-jpg-1609818380-05012021104620-jpg-1609819364-05012021110244.jpg" /></p>

<h2><strong>Thiết kế son Mac 990 More The Mehr-ier</strong></h2>

<p>Thiết kế h&igrave;nh vi&ecirc;n đạn signature của MAC vẫn được đưa v&agrave;o&nbsp;<strong>son MAC m&agrave;u 990</strong>&nbsp;n&agrave;y. Nếu đ&atilde; biết đến d&ograve;ng Retro Matte trước đ&oacute; của MAC, nh&igrave;n bản Powder Kiss Liquid Lipcolour sẽ thấy th&acirc;n quen. Vẫn l&agrave; son kem l&igrave; nắp đen v&agrave; th&acirc;n trong suốt. Điểm kh&aacute;c biệt của son kem Date Maker l&agrave; bề mặt son nh&aacute;m l&igrave; từ nắp đến th&acirc;n. Mờ mờ ảo ảo, nh&igrave;n l&agrave; đo&aacute;n ngay được &ldquo;nội dung&rdquo; đặc trưng b&ecirc;n trong của son liền.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/03/mac-powder-kiss-liquid-lipcolour-990-more-the-mehr-ier-2-jpg-1615365860-10032021154420.jpg" /></p>

<p>Điều đặc biệt l&agrave; đầu cọ của c&acirc;y MAC n&agrave;y kh&ocirc;ng v&aacute;t nhọn như mấy loại son kem kh&aacute;c. Thay v&agrave;o đ&oacute;&nbsp;<strong>son MAC 990</strong>&nbsp;lại c&oacute; h&igrave;nh tựa đồng hồ c&aacute;t mini, thon ở giữa. Mỗi lần r&uacute;t lấy được kh&aacute; nhiều son v&agrave; khi thoa l&ecirc;n, cọ cũng &ocirc;m m&ocirc;i s&aacute;t hơn. Tr&ograve;n tr&ograve;n m&agrave; tr&ocirc;ng thần kỳ hết nấc.</p>

<p>Đặc điểm n&agrave;y ph&ugrave; hợp với những ai m&ecirc; makeup sương sương, th&iacute;ch tan viền m&ocirc;i mềm mại, tự nhi&ecirc;n. Nh&agrave; sản xuất đ&atilde; v&ocirc; c&ugrave;ng tinh tế khi biến h&oacute;a đầu cọ t&ocirc;n bật chất son xốp như son kem MAC Devoted To Chili.</p>

<h2><strong>Chất son Mac 990 More The Mehr-ier</strong></h2>

<p>Chất son của m&agrave;u Mac 990 More The Mehr-ier n&agrave;y cũng xuất sắc, l&ecirc;n chuẩn, mịn v&agrave; si&ecirc;u dễ t&aacute;n. Đ&acirc;y chắc chắn l&agrave; m&agrave;u hot nhất của cả d&ograve;ng v&igrave; n&oacute; hợp với nhiều t&ocirc;ng da lắm lu&ocirc;n nh&eacute;.</p>

<p>Son kem 990 More The Mehr-ier l&ecirc;n m&ocirc;i sẽ c&oacute; độ mịn, k&eacute;o tr&ecirc;n m&ocirc;i nhẹ nh&agrave;ng với cảm gi&aacute;c mềm mại v&agrave; mượt m&agrave; suốt cả ng&agrave;y. Cấu tr&uacute;c nhẹ t&ecirc;nh cho lớp son tr&ecirc;n m&ocirc;i bền m&agrave;u nhưng vẫn tạo được hiệu ứng mờ ảo quyến rũ.</p>

<p>Son kem MAC apply l&ecirc;n m&ocirc;i sẽ c&oacute; độ mịn, k&eacute;o tr&ecirc;n m&ocirc;i nhẹ nh&agrave;ng, chất son mịn như nhung. Son l&ecirc;n m&agrave;u r&otilde; ngay từ l&acirc;n đi cọ đầu ti&ecirc;n l&ecirc;n m&ocirc;i,&nbsp;<strong>son MAC 990</strong>&nbsp;che phủ ho&agrave;n hảo, lấp đầy tửng r&atilde;nh m&ocirc;i d&ugrave; l&agrave; chỗ nhỏ nhất c&agrave;ng t&agrave;n m&agrave;u l&ecirc;n m&ocirc;i c&agrave;ng đẹp nh&eacute;. Chất son l&igrave; si&ecirc;u đỉnh cao của h&atilde;ng.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/03/mac-powder-kiss-liquid-lipcolour-990-more-the-mehr-ier-4-jpg-1615365889-10032021154449.jpg" /></p>

<h2><strong>M&agrave;u son Mac 990 More The Mehr-ier</strong></h2>

<p>Son kem 990 More The Mehr-ier mang t&ocirc;ng hồng đất si&ecirc;u t&acirc;y v&agrave; cực hot của năm nay chất son l&agrave;m c&aacute;c n&agrave;ng m&ecirc; mẫn từ lần chạm đầu ti&ecirc;n. Son khiến m&ocirc;i tươi tắn tự nhi&ecirc;n, makeup th&ecirc;m một ch&uacute;t, nh&igrave;n như mộc nhưng h&oacute;a ra lại xinh như mộng.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2021/03/mac-powder-kiss-liquid-lipcolour-990-more-the-mehr-ier-1-jpg-1615365921-10032021154521.jpg" /></p>
', 0, 0, 1, N'870be528-10d0-43e5-b0ea-d9f796603660.jpg', N'9a908e31-11dd-40d9-a2d7-5df3b070b4bf.jpg', N'71781df3-6475-4ab0-9493-45e072c6199b.jpg', N'7133d7bf-36ac-4534-9c4d-a2e43cb40eb0.jpg', N'a', N'Son kem 990 More The Mehr-ier mang tông hồng đất siêu tây và cực hot của năm nay chất son làm các nàng mê mẫn từ lần chạm đầu tiên.', CAST(N'2021-03-23T11:57:43.973' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (10, 7, 26, N'Son Kem Merzy Be Your Self The First Velvet Tint ( Phiên Bản Giới Hạn - VỎ XANH )', 159000, N'<p><strong>Son Kem Merzy Be Your Self The First Velvet Tint</strong></p>

<p><strong>( Phi&ecirc;n Bản Vỏ Xanh Giới Hạn )</strong></p>

<p>&nbsp;</p>

<p>Phi&ecirc;n bản giới hạn chỉ sản xuất 1 lần với thiết kế vỏ xanh hot nhất của năm - c&acirc;y son đang l&agrave;m mưa gi&oacute; tr&ecirc;n thị trường l&agrave;m đẹp.</p>

<p>&nbsp;</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src="https://file.hstatic.net/200000135107/file/z2023534619451_2df0b2e32cb0e66e6e118f2c09bcec17_7c90767022c64c01966921be3ea2f572_grande.jpg" /></p>

<p><br />
&nbsp;</p>

<p>M&agrave;u son tạo n&ecirc;n cơn sốt thực sự cho&nbsp;<strong>Merzy -&nbsp;V6 Firenze Negroni&nbsp;</strong>- m&agrave;u đỏ gạch -&nbsp;sẽ sở hữu một đ&ocirc;i m&ocirc;i cực s&agrave;nh điệu, m&agrave;u son v&ocirc; c&ugrave;ng đẹp c&ugrave;ng chất son l&igrave; mịn, khả năng b&aacute;m m&agrave;u tốt, đ&acirc;y ch&iacute;nh l&agrave; m&agrave;u được c&aacute;c c&ocirc; n&agrave;ng y&ecirc;u son kh&ocirc;ng ngừng săn l&ugrave;ng r&aacute;o riết.</p>

<p>&nbsp;</p>

<p><img alt="Son kem lì Merzy The First Velvet Tint Limited Edition #V6 ..." src="https://myphamhalo.vn/wp-content/uploads/2020/03/son-kem-li-merzy-the-first-velvet-tint-limited-edition-v6-classic-blue-1.jpg" /></p>

<p>&nbsp;</p>

<p>Chất son mới cải tiến &quot;xịn&quot; hơn mẫu th&ocirc;ng thường, &aacute;nh đỏ gạch r&otilde; rệt v&igrave; đ&atilde; loại bớt base hồng, m&agrave;u chuẩn hot n&ecirc;n ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng c&aacute;c n&agrave;ng nh&eacute;.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="Cách đánh son lòng môi -bicicosmetics" src="https://product.hstatic.net/1000379579/product/51c67f936cfcd9f1367e1c2e87ee16b0_b982b9182c244a30a3c4e371ce3edc05.jpg" /></strong></p>
', 0, 0, 1, N'a4d2a5e1-ea09-4661-9963-551b37da7bd7.jpg', N'a40b9d03-ec3b-428d-bea4-e15eb9e5d47a.jpg', N'741521e2-566f-4349-a58f-bb82f89f1df9.jpg', N'fde037ec-b611-47ff-a602-15246ab9fdab.jpg', N'a', N'Chất son mới cải tiến "xịn" hơn mẫu thông thường, ánh đỏ gạch rõ rệt vì đã loại bớt base hồng, màu chuẩn hot nên hoàn toàn yên tâm khi sử dụng các nàng nhé.', CAST(N'2021-03-23T12:12:36.150' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (11, 7, 25, N' Lisa Cosmetics Son Black Rouge A08 - Cam Đào (Air Fit Velvet Tint Ver 2)', 175000, N'<p>Nếu như season 1 h&atilde;ng đ&atilde; l&agrave;m những c&ocirc; n&agrave;ng y&ecirc;u m&agrave;u đỏ kh&ocirc;ng thể ngồi y&ecirc;n m&agrave; phải &ldquo;săn&rdquo; ngon ngay th&igrave; ở season 2 n&agrave;y Black rouge trở lại với vẻ ngo&agrave;i ma mị c&ugrave;ng m&agrave;u t&iacute;m hot trend. C&ugrave;ng đ&aacute;nh gi&aacute; sắc&nbsp;<strong>son Black rouge A08</strong>&nbsp;đầu ti&ecirc;n của bộ sưu tập ngay dưới đ&acirc;y nh&eacute;!</p>

<h2><strong>Son Black rouge A08</strong></h2>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="https://kyo.vn/wp-content/uploads/2019/04/Son-Black-rouge-A08-4.jpg" style="height:600px; width:600px" /></p>

<p>Cam bưởi đỏ l&agrave; một m&agrave;u sắc rất đặc biệt</p>

<p>A08 warm shaddock l&agrave; một m&agrave;u coral sữa được pha th&ecirc;m gam đất để tạo n&ecirc;n m&agrave;u cam bưởi đỏ ngọt ng&agrave;o v&agrave; dễ chịu. Ch&iacute;nh sự h&agrave;i h&ograve;a giữa hai sắc tố cam v&agrave; đỏ n&agrave;y tạo n&ecirc;n n&eacute;t đẹp trẻ trung, năng động cho tất cả c&aacute;c c&ocirc; g&aacute;i. M&agrave;u&nbsp;<strong>son Black rouge A08</strong>&nbsp;th&iacute;ch hợp cho việc đ&aacute;nh son l&ograve;ng m&ocirc;i v&agrave; full m&ocirc;i, ph&ugrave; hợp đi l&agrave;m, đi học v&agrave; cả đi chơi.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="" src="https://kyo.vn/wp-content/uploads/2019/04/Son-Black-rouge-A08-5.jpg" style="height:600px; width:600px" /></p>

<p>Son th&iacute;ch hợp đ&aacute;nh cả l&ograve;ng m&ocirc;i v&agrave; full m&ocirc;i</p>

<p>Với sắc cam nhẹ nh&agrave;ng pha ch&uacute;t trầm n&agrave;y c&aacute;c c&ocirc; g&aacute;i kh&ocirc;ng phải sợ qu&aacute; nhợt nhạt cũng sẽ kh&ocirc;ng qu&aacute; rực rỡ hay sắc n&eacute;t đ&acirc;u. Đ&acirc;y chắc chắn l&agrave; sắc m&agrave;u ph&ugrave; hợp với m&ugrave;a Xu&acirc;n &ndash; H&egrave; đấy.</p>

<h2><strong>Chất son Black rouge A08</strong></h2>

<p>Chất son mềm mịn v&agrave; c&oacute; độ b&oacute;ng nhẹ</p>

<p>Chất son của season 2 n&agrave;y vẫn giống phi&ecirc;n bản trước, chất&nbsp;<strong>son Black rouge A08</strong>&nbsp;mềm mướt, mịn khi l&ecirc;n m&ocirc;i, c&oacute; độ bền m&agrave;u cao m&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&oacute; chịu, kh&ocirc; l&igrave; hay nứt nẻ. Son c&oacute; độ b&oacute;ng nhẹ khi mới t&ocirc; l&ecirc;n tạo cảm gi&aacute;c bờ m&ocirc;i căng mọng đầy quyến rũ.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>

<h2><strong>Bộ sưu tập season 2: Mood filter</strong></h2>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="https://kyo.vn/wp-content/uploads/2019/04/Son-Black-rouge-A08-6.jpg" style="height:422px; width:600px" /></p>

<p>Bộ sưu tập c&oacute; m&agrave;u t&iacute;m ma mị</p>

<p>Nh&agrave; Black rouge tiếp tục cho ra mắt bộ sưu tập season 2 với chủ đề &ldquo;Mood filter&rdquo; được lấy &yacute; tưởng của m&ugrave;a thu v&agrave; halloween. Mood Filter được kho&aacute;c chiếc &aacute;o m&agrave;u t&iacute;m nhạt mềm mại v&agrave; sang trọng.</p>

<h2><strong>Về thiết kế của d&ograve;ng son Black rouge A08</strong></h2>

<p>Son Black rouge A08 lu&ocirc;n khiến c&aacute;c c&ocirc; g&aacute;i m&ecirc; mẩn từ thiết kế đến m&agrave;u son</p>

<p>Black rouge vẫn ưa chuộng thiết kế đặc trưng m&agrave; sang trọng của h&atilde;ng, th&acirc;n son c&oacute; h&igrave;nh vu&ocirc;ng trụ với k&iacute;ch thước vừa phải, nắp son l&agrave; m&agrave;u t&iacute;m huyền ảo, phần th&acirc;n bằng nhựa b&oacute;ng mờ để c&aacute;c c&ocirc; g&aacute;i nh&igrave;n r&otilde; m&agrave;u son b&ecirc;n trong. Ngo&agrave;i ra, logo của h&atilde;ng được in tr&ecirc;n th&acirc;n son v&ocirc; c&ugrave;ng tinh tế.</p>

<p>M&agrave;u son ấm &aacute;p, rực rỡ v&agrave; tươi tắn n&agrave;y sẽ gi&uacute;p c&aacute;c c&ocirc; g&aacute;i trẻ trung v&agrave; tươi tắn bất kể l&agrave; ở đ&acirc;u. Đừng bỏ lỡ&nbsp;<strong>son Black rouge A08 &ndash;&nbsp;</strong>warm shaddock cho m&ugrave;a H&egrave; n&agrave;y th&ecirc;m năng động nh&eacute;!</p>
', 0, 0, 1, N'b2c3b579-a170-4089-9ac5-d5647f5a86b5.jpg', N'87858d32-f28b-4e0a-846d-63f146886661.jpg', N'1fefac5b-2cb0-4e29-8699-fcf94a0115a6.jpg', N'b245008b-78fa-4f2d-a822-e9dc312a9a59.jpg', NULL, N'A08 warm shaddock là một màu coral sữa được pha thêm gam đất để tạo nên màu cam bưởi đỏ ngọt ngào và dễ chịu. Chính sự hài hòa giữa hai sắc tố cam và đỏ này tạo nên nét đẹp trẻ trung, năng động cho tất cả các cô gái. Màu son Black rouge A08 thích hợp cho việc đánh son lòng môi và full môi, phù hợp đi làm, đi học và cả đi chơi.', CAST(N'2021-03-23T12:24:53.807' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (12, 8, 9, N'Kem chống nắng L’Oreal Paris UV Perfect Aqua Essence SPF50+ PA++++', 148000, N'<p><em><strong><a href="https://mint07.com/my-pham-xach-tay/skin-care-san-pham-duong-da/kem-chong-nang/">Kem chống nắng</a>&nbsp;<a href="https://mint07.com/brand/thuong-hieu-loreal-paris/">L&rsquo;Oreal Paris</a>&nbsp;UV Perfect Aqua Essence SPF50+ PA++++ nhập khẩu từ L&rsquo;Oreal Việt Nam. Đảm bảo 100% về nguồn gốc v&agrave; chất lượng từng sản phẩm đến tay kh&aacute;ch h&agrave;ng.</strong></em></p>

<p><a href="https://mint07.com/my-pham-xach-tay/skin-care-san-pham-duong-da/kem-chong-nang/">Kem chống nắng</a>&nbsp;<a href="https://mint07.com/brand/thuong-hieu-loreal-paris/">L&rsquo;Oreal</a>&nbsp;d&ograve;ng UV Perfect bảo vệ da khỏi t&aacute;c hại của tia UV với chỉ số chống nắng cao SPF50+/PA++++: Với m&agrave;ng lọc quang phổ rộng MeroxylTM SX/XL gi&uacute;p bảo vệ da suốt 12h,&nbsp;<strong><em>gi&uacute;p ngăn người đốm n&acirc;u, vết th&acirc;m n&aacute;m, sạm da &amp; l&atilde;o h&oacute;a.</em></strong>&nbsp;Hơn thế nữa n&oacute; c&ograve;n gi&uacute;p&nbsp;<strong><em>ngăn chặn&nbsp;&nbsp;c&aacute;c t&aacute;c hại từ m&ocirc;i trường</em>&nbsp;</strong>nhờ Hoạt chất Detoxyl gi&uacute;p ngăn chặn sự h&igrave;nh th&agrave;nh bụi bẩn tr&ecirc;n l&agrave;n da.</p>

<p>Kem chống nắng c&ograve;n gi&uacute;p dưỡng da tươi trẻ nhờ sự kết hợp tăng cường với Adenosine + Micronized [HA] được biết đến với khả năng ngăn ngừa l&atilde;o h&oacute;a da, gi&uacute;p l&agrave;n da tươi trẻ v&agrave; căng mịn.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="https://mint07.com/wp-content/uploads/2017/06/kcn-loreal-aqua-300x300.jpg" style="height:626px; width:626px" /></p>

<p>Với Vitamin E v&agrave; Detoxyl gi&uacute;p bảo vệ da trước c&aacute;c gốc tự do v&agrave; &ocirc; nhiễm m&ocirc;i trường, vốn l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y tổn thương cho l&agrave;n da. Qua đ&oacute;, l&agrave;n da được dưỡng mịn m&agrave;ng, s&aacute;ng trong rạng rỡ.</p>

<p>Em n&agrave;y&nbsp;<em><strong>thấm kh&aacute; nhanh</strong></em>&nbsp;v&agrave;&nbsp;<em><strong>kh&ocirc;ng hề c&oacute; cảm gi&aacute;c b&oacute;ng nhờn</strong></em>&nbsp;cho lớp finish mịn m&agrave;ng như nhung. Kết cấu tinh chất dạng nước ngay lập tức chuyển đổi th&agrave;nh m&agrave;ng nước trong suốt bao phủ l&agrave;n da mang đến cảm gi&aacute;c tho&aacute;ng mịn, dịu nhẹ<br />
Kem chống nắng Loreal UV Perfect&nbsp;vừa chống nắng vừa bảo vệ da chống lại những t&aacute;c nh&acirc;n g&acirc;y l&atilde;o h&oacute;a sớm: vết th&acirc;m n&aacute;m, sạm da, giảm độ săn chắc, độ đ&agrave;n hồi v&agrave; xuất hiện nếp nhăn. L&agrave;n da được dưỡng ẩm mềm mịn, tươi s&aacute;ng đều m&agrave;u v&agrave; sẵn s&agrave;ng cho c&aacute;c bước trang điểm tiếp theo.</p>

<p><strong>Loại da ph&ugrave; hợp:</strong>&nbsp;mọi loại da</p>

<p><strong>C&ocirc;ng dụng:</strong>&nbsp;bảo vệ da khỏi những dấu hiệu l&atilde;o h&oacute;a do &aacute;nh nắng mặt trời: đốm n&acirc;u, da tối m&agrave;u, mất đi độ đ&agrave;n hồi v&agrave; săn chắc, xuất hiện nếp nhăn v&agrave; tr&ocirc;ng mệt mỏi.</p>

<p><strong>Th&agrave;nh phần ch&iacute;nh:</strong>&nbsp;M&Agrave;NG LỌC MEXORYL XL + M&Agrave;NG LỌC TIA UVA</p>

<p><strong>Kết cấu:</strong>&nbsp;si&ecirc;u mỏng v&agrave; chuyển h&oacute;a th&agrave;nh dạng nước khi tiếp x&uacute;c với da. Thẩm thấu v&agrave;o da một c&aacute;ch nhanh ch&oacute;ng. Kh&ocirc;ng bết d&iacute;nh v&agrave; kh&ocirc;ng nhờn r&iacute;t.</p>

<p><strong>Bảo quản:</strong>&nbsp;nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t v&agrave; đ&oacute;ng kĩ nắp sản phẩm sau khi sử dụng</p>

<p><strong>Hướng dẫn sử dụng:</strong>&nbsp;Sử dụng hằng ng&agrave;y v&agrave;o cuối chu tr&igrave;nh dưỡng da. Tr&aacute;nh tiếp x&uacute;c với mắt. Trong trường hợp rơi v&agrave;o mắt, ngay lập tức rửa kỹ với nước</p>

<p><strong>Dung t&iacute;ch:</strong>&nbsp;30ml</p>

<p><strong>Thương hiệu:</strong>&nbsp;L&rsquo;Oreal</p>

<p><strong>Xuất xứ:</strong>&nbsp;Mỹ</p>
', 0, 0, 1, N'63f0cb03-d89b-48c4-b041-b6423720264e.jpg', N'22e10b39-de79-40ee-a189-3567378067d8.jpg', N'776c02c5-0ee1-49b4-bec8-de46d00058dc.jpg', N'16fb4c57-7775-44e8-b602-6faadf4ccb5d.jpg', NULL, N'Kem chống nắng L’Oreal dòng UV Perfect bảo vệ da khỏi tác hại của tia UV với chỉ số chống nắng cao SPF50+/PA++++: Với màng lọc quang phổ rộng MeroxylTM SX/XL giúp bảo vệ da suốt 12h, giúp ngăn người đốm nâu, vết thâm nám, sạm da & lão hóa. Hơn thế nữa nó còn giúp ngăn chặn  các tác hại từ môi trường nhờ Hoạt chất Detoxyl giúp ngăn chặn sự hình thành bụi bẩn trên làn da.', CAST(N'2021-03-23T12:42:12.207' AS DateTime))
INSERT [dbo].[Table_SanPham] ([MaSanPham], [MaDanhMuc], [MaThuongHieu], [TenSanPham], [GiaBan], [MoTa], [SoLuongDaBan], [LuotView], [TinhTrang], [HinhMinhHoa], [HinhNho1], [HinhNho2], [HinhNho3], [GhiChu], [GioiThieu], [NgayTao]) VALUES (13, 3, 24, N'Cetaphil Moisturizing Cream', 220000, N'<p dir="ltr"><strong>Kem dưỡng ẩm Cetaphil Moisturizing Cream</strong>&nbsp;c&oacute; thiết kế dạng tu&yacute;p nhựa được phối m&agrave;u tương đối h&agrave;i h&ograve;a, trong đ&oacute; tone m&agrave;u chủ đạo vẫn l&agrave; nền trắng v&agrave; c&aacute;c d&ograve;ng chữ m&agrave;u xanh l&aacute; c&acirc;y giới thiệu về sản phẩm, to&aacute;t l&ecirc;n vẻ ngo&agrave;i đầy thanh lịch, trang nh&atilde;, tạo cảm gi&aacute;c gần gũi với thi&ecirc;n nhi&ecirc;n. Sản phẩm c&oacute; trọng lượng 50g n&ecirc;n kh&aacute; nhỏ gọn , th&iacute;ch hợp mang theo khi đi du lịch, đi chơi,&hellip;</p>

<h3 dir="ltr"><strong>Th&agrave;nh phần</strong></h3>

<ul dir="ltr">
	<li><strong>Glycerin:</strong>&nbsp;l&agrave;m sạch v&agrave; mềm da, dưỡng ẩm, ngăn tia bức xạ, chống l&atilde;o h&oacute;a da.</li>
	<li><strong>Glyceryl Stearate:</strong>&nbsp;gi&uacute;p l&agrave;m mềm, giữ ẩm cho da.</li>
	<li><strong>Sodium Hydroxide:</strong>&nbsp;C&acirc;n bằng độ pH tr&ecirc;n da, h&uacute;t nước cho mỹ phẩm.</li>
	<li><strong>Tocopheryl Acetate:</strong>&nbsp;chất chống vi&ecirc;m, chống oxy h&oacute;a.<img alt="Review kem dưỡng ẩm Cetaphil Moisturizing Cream: dưỡng ẩm hoàn hảo cho mọi làn da - BlogAnChoi" src="https://lh6.googleusercontent.com/sASekNdxYt2D3idTG7fODPzlBH5ykMUuen8djBID_LAAAPo6saI-TXhvrNMZ7EIMbv5FzINLubtLLDPlPclnq0s1IykxVbOPksW6kJ2g0mc_EY_zO54cfk4h5k9NvzSL_WpifiU2" title="Review kem dưỡng ẩm Cetaphil Moisturizing Cream: dưỡng ẩm hoàn hảo cho mọi làn da - BlogAnChoi" /></li>
	<li><strong>Propylene Glycol:</strong>&nbsp;c&oacute; t&aacute;c dụng giữ ẩm, giảm độ nhớt của mỹ phẩm.</li>
	<li><strong>Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c th&agrave;nh phần kh&aacute;c như:&nbsp;</strong>Aqua, Paraffinum Liquidum, Dicaprylyl Ether, Dimethicone, Cetyl Alcohol, Prunus Amygdalus Dulcis Oil, PEG 30 Stearate, Acrylate Crosspolymer, Dimethiconol, Benzyl Alcohol, Glyceryl Acrylate / Acrylic Copolymer Acid, Disodium EDTA&hellip;</li>
	<li>Sản phẩm kh&ocirc;ng chứa&nbsp;<strong>hương liệu,</strong>&nbsp;<strong>paraben, cồn kh&ocirc;</strong>&nbsp;v&agrave;&nbsp;<strong>chất</strong>&nbsp;<strong>tạo m&agrave;u&nbsp;</strong>nhưng c&oacute; chứa<strong>&nbsp;dầu kho&aacute;ng.</strong></li>
</ul>

<h3 dir="ltr"><strong>Kết cấu</strong></h3>

<p dir="ltr"><strong>Kem dưỡng ẩm&nbsp;Cetaphil</strong><strong>&nbsp;</strong>c&oacute; kết cấu dạng kem đặc, m&agrave;u trắng đục. Chất kem n&agrave;y đặc n&ecirc;n kh&aacute; kh&oacute; thấm, sau khi thoa kem sẽ c&oacute; cảm gi&aacute;c hơi d&iacute;nh v&agrave; mặt b&oacute;ng nhẹ.&nbsp;Với kết cấu kem như vậy, kem dưỡng ẩm Cetaphil sẽ ph&ugrave; hợp với c&aacute;c bạn c&oacute; l&agrave;n da kh&ocirc;, hỗn hợp thi&ecirc;n kh&ocirc;, hơn l&agrave; c&aacute;c bạn da dầu, hỗn hợp thi&ecirc;n dầu.</p>

<h3 dir="ltr"><strong>C&ocirc;ng dụng</strong></h3>

<p dir="ltr"><strong>Kem dưỡng ẩm Cetaphi</strong>l đem lại c&ocirc;ng dụng như ch&iacute;nh nh&agrave; sản xuất hứa hẹn, đ&acirc;y l&agrave; một trong những sản phẩm hiếm hoi m&agrave; nh&agrave; sản xuất l&agrave;m được những g&igrave; m&agrave; họ n&oacute;i. Sản phẩm gi&uacute;p cung cấp độ ẩm cho da, l&agrave;m mềm, mọng, mịn da, tạo lớp m&agrave;ng ẩm ngăn chặn qu&aacute; tr&igrave;nh mất nước của l&agrave;n da.</p>

<h3 dir="ltr"><strong>C&aacute;ch d&ugrave;ng&nbsp;</strong></h3>

<p dir="ltr">D&ugrave;ng sau khi ch&uacute;ng m&igrave;nh đ&atilde; thực hiện đầy đủ c&aacute;c bước tẩy trang, l&agrave;m sạch da để c&acirc;n bằng độ ẩm cho da hiệu quả.</p>

<p dir="ltr">Thoa kem Cetaphil 2-4 lần/ ng&agrave;y. D&ugrave;ng cho da mặt, tay, to&agrave;n th&acirc;n.</p>

<ul dir="ltr">
	<li>Khi kh&ocirc;ng d&ugrave;ng với nước: Cho nhiều kem l&ecirc;n da v&agrave; xoa nhẹ. Với c&ocirc;ng thức đặc biệt, &iacute;t tạo bọt, CETAPHIL sẽ nhẹ nh&agrave;ng l&agrave;m sạch l&agrave;n da. D&ugrave;ng một miếng vải mềm lau phần sữa c&ograve;n dư, để lại tr&ecirc;n da một m&agrave;ng sữa CETAPHIL mỏng. Đặc t&iacute;nh l&agrave;m mềm v&agrave; dịu của sữa sẽ giữ cho da mềm v&agrave; ẩm.</li>
	<li>Khi d&ugrave;ng với nước: B&ocirc;i sữa l&ecirc;n da v&agrave; xoa nhẹ, sau đ&oacute; rửa sạch bằng nước.</li>
	<li>Chỉ định: D&ugrave;ng cho da bị mụn trứng c&aacute;, ch&agrave;m thể tạng, eczema, r&ocirc;m sảy, hăm da, ngứa, da kh&ocirc;, da nhạy cảm, vảy c&aacute;, đỏ da, vảy nến, bỏng nắng, vi&ecirc;m da dị ứng, ch&agrave;m tiếp x&uacute;c, da bị l&atilde;o h&oacute;a, n&aacute;m da, da bị k&iacute;ch ứng khi sử dụng benzoyl peroxide, tretinoine, adapalene..</li>
</ul>

<p dir="ltr">V&igrave; kem dưỡng ẩm Cetaphil c&oacute; kết cấu đặc v&agrave; hơi kh&oacute; thấm, n&ecirc;n khi sử dụng c&aacute;c bạn n&ecirc;n chấm kem th&agrave;nh nhiều điểm tr&ecirc;n mặt thay v&igrave; chỉ c&oacute; năm điểm tr&ecirc;n mặt như th&ocirc;ng thường.&nbsp;Bạn lưu &yacute; để&nbsp;<strong>kem dưỡng ẩm Cetaphil&nbsp;</strong>ph&aacute;t huy tối đa t&aacute;c dụng, bạn n&ecirc;n uống đầy đủ nước, thực hiện chế độ ăn uống khoa học, ăn nhiều rau củ quả v&agrave; hạn chế những chất k&iacute;ch th&iacute;ch như: rượu, bia, thuốc l&aacute;&hellip; v&agrave; tr&aacute;nh những m&ocirc;i trường &ocirc; nhiễm bạn nh&eacute;.</p>
', 0, 0, 1, N'9f0c50a9-e464-48c4-a657-4c851d8f0cea.jpg', N'5c03bb9a-4e3f-41e4-b5a9-af28154f1d62.jpg', N'ff6c9e27-2573-48f7-abdf-7d0f1a515a7b.jpg', N'30e06edb-f93e-4a9b-b51a-68e6b2478b0a.jpg', NULL, N'Dưỡng ẩm là bước không thể thiếu khi chăm sóc da. Với kem dưỡng ẩm Cetaphil Moisturizing Cream, làn da của bạn sẽ tránh được tình trạng mất nước một cách tối ưu. Đặc biệt, sản phẩm còn phù hợp để sử dụng hàng ngày cho mọi loại da. ', CAST(N'2021-03-23T12:53:54.647' AS DateTime))
SET IDENTITY_INSERT [dbo].[Table_SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_ThuongHieu] ON 

INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (1, N'Hadalabo', N'0', N'hadalabo.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (2, N'Sulwhasoo', N'0', N'sulwhasoo.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (3, N'SKII', N'1', N'skii.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (4, N'Shuuemura', N'1', N'shuuemura.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (5, N'The Face Shop', N'0', N'thefaceshop.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (6, N'Tom Ford', N'1', N'tomford.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (7, N'Kiehl''s', N'0', N'kiehls.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (8, N'Laneige', N'1', N'laneige.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (9, N'Loréal', N'0', N'loreal.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (10, N'Inisfree', N'0', N'inisfree.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (11, N'Obagi', N'0', N'obagi.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (13, N'Olay', N'0', N'olay.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (14, N'Paula''s Choice', N'1', N'paulachoice.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (15, N'Maybeline', N'0', N'maybeline.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (17, N'Mamonde', N'0', N'mamonde.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (18, N'M.A.C', N'0', N'mac.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (19, N'Urban Decay', N'0', N'urbandecay.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (20, N'DHC', N'0', N'dhc.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (21, N'Estee Lauder', N'1', N'esteelauder.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (22, N'Clinique', N'1', N'clinique.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (24, N'Cetaphil', N'0', N'32d58700-843e-4ca5-9723-abae7cb0beac.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (25, N'Black Rouge', N'0', N'ec917c18-c7b9-44f6-bf37-cd214312a92e.jpg')
INSERT [dbo].[Table_ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [TinhTrangTH], [LogoTH]) VALUES (26, N'Merzy', N'0', N'de7ba62e-1e30-4671-85af-80ac7c42d4d2.jpg')
SET IDENTITY_INSERT [dbo].[Table_ThuongHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Table_TinTuc] ON 

INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (1, N'Review kem chống nắng Image 50 dành cho da hỗn hợp', N'73dffb41-38a3-405c-a63d-18c0984bb0a5.jpg', N'435d1bd0-82cd-4e90-98a4-90fec2991c84.jpg', N'<p>Kem chống nắng Image 50 được đ&aacute;nh gi&aacute; l&agrave; phương ph&aacute;p bảo vệ tối ưu d&agrave;nh cho l&agrave;n da hỗn hợp. Sản ph&acirc;̉m b&ocirc;̉ sung đ&ocirc;̣ &acirc;̉m v&agrave; nu&ocirc;i dưỡng da ngăn l&atilde;o h&oacute;a vượt trội.</p>

<h2>1/ Đ&ocirc;i n&eacute;t về bao b&igrave;, thiết kế của kem chống nắng Image 50</h2>

<p><a href="https://www.maihan.vn/image-skincare/" rel="nofollow" target="_blank">Image Skincare</a>&nbsp;l&agrave; thương hiệu dược mỹ phẩm uy t&iacute;n được th&agrave;nh lập từ năm 2003 tại Hoa Kỳ. Hiện nay, mỹ phẩm Image Skincare đ&atilde; được sử dụng phổ biến trong c&aacute;c trung t&acirc;m chăm s&oacute;c da, spa, clinic... v&agrave; c&oacute; mặt tại hơn 50 quốc gia tr&ecirc;n thế giới. Kem chống nắng Image Skincare 50 d&agrave;nh cho da thường, da hỗn hợp l&agrave; một trong những sản phẩm b&aacute;n chạy của h&atilde;ng Image Skincare v&agrave; g&acirc;y được tiếng vang lớn trong giới l&agrave;m đẹp ngay từ những ng&agrave;y đầu ra mắt với t&ecirc;n gọi đầy đủ l&agrave; Image Prevention+ Daily Ultimate Protection Moisturizer SPF 50.</p>

<p>Kh&ocirc;ng chỉ l&agrave; bảo vệ da khỏi t&aacute;c động của tin UV m&agrave; c&ograve;n chăm s&oacute;c da to&agrave;n diện l&agrave;n da. Sản phẩm được nhiều người ti&ecirc;u d&ugrave;ng tr&ecirc;n thế giới biết đến bởi t&iacute;nh an to&agrave;n, hiệu quả chống nắng cao.</p>

<p>Chống nắng Image 50 mang thiết kế với phong c&aacute;ch kh&aacute; đơn giản nhưng sang trọng, nhỏ gọn n&ecirc;n tiện lợi khi bạn mang theo mỗi khi đi du lịch. Sản phẩm c&oacute; t&ocirc;ng m&agrave;u trắng v&agrave;ng l&agrave;m chủ đạo tạo sự trẻ trung, c&aacute; t&iacute;nh v&agrave; rất bắt mắt.</p>

<p>Dung t&iacute;ch một tu&yacute;p fullsize đến 91g đựng trong tu&yacute;p nhựa cao cấp, mang đến sự tiện dụng khi sử dụng sản phẩm. Ngo&agrave;i ra, nh&atilde;n h&agrave;ng cũng c&oacute; sản xuất th&ecirc;m một sản phẩm dung t&iacute;ch 7.4g dạng tu&yacute;p để bạn d&ugrave;ng thử hoặc mang theo trong những chuyến đi ngắn ng&agrave;y.</p>

<p>Xem chi tiết sản phẩm tại đ&acirc;y:&nbsp;<a href="https://www.maihan.vn/image-skincare/kem-chong-nang-image-spf-50.html" rel="nofollow" target="_blank">https://www.maihan.vn/image-skincare/kem-chong-nang-image-spf-50.html</a></p>

<h2>2/ Review về th&agrave;nh phần nổi bật của kem chống nắng Image 50</h2>

<p>Mang đến hiệu quả chống nắng cao v&agrave; khả năng cung cấp nu&ocirc;i dưỡng l&agrave;n da nổi bật từ đ&oacute; kem chống nắng Image SPF 50 trở th&agrave;nh sản phẩm rất được y&ecirc;u th&iacute;ch tại nhiều quốc gia. Kh&ocirc;ng qu&aacute; kh&oacute; nghĩ khi kem chống nắng Image SPF 50 Prevention+ sở hữu nhiều c&ocirc;ng dụng ưu việt được c&aacute;c b&aacute;c sĩ da liễu, ph&ograve;ng kh&aacute;m da, spa, clinic&hellip; sử dụng trong c&aacute;c liệu tr&igrave;nh điều trị v&agrave; chăm s&oacute;c da.</p>

<p>Th&agrave;nh phần chi tiết trong sản phẩm bao gồm: 9% zinc oxide, 7.5% octinoxate, 5% octisalate, photosomes, bv-osc (vitamin c), thiophene, roxisomes.</p>

<p>● 9% Zinc oxide: Bảo vệ da khỏi tia UVA, UVB tốt hơn bất cứ th&agrave;nh phần chống nắng n&agrave;o m&agrave; kh&ocirc;ng g&acirc;y ra k&iacute;ch ứng tr&ecirc;n da. Kh&ocirc;ng g&acirc;y mụn, ngăn chặn sự t&iacute;ch tụ b&atilde; nhờn tr&ecirc;n da. Đồng thời giảm t&igrave;nh trạng vi&ecirc;m v&agrave; k&iacute;ch ứng tr&ecirc;n da.</p>

<p>● Hạt nho: Đ&acirc;y l&agrave; th&agrave;nh phần c&oacute; khả năng chống oxy h&oacute;a cực mạnh. C&aacute;c hoạt chất trong hạt nho gi&uacute;p dưỡng ẩm cho da lu&ocirc;n căng b&oacute;ng. Ngăn chặn sự h&igrave;nh th&agrave;nh dấu hiệu l&atilde;o h&oacute;a tr&ecirc;n da, ngăn chặn nếp nhăn.</p>

<table align="center">
	<tbody>
		<tr>
			<td>
			<p><img alt="Thành phần trong kem chống nắng Image 50." src="https://image.thanhnien.vn/660/uploaded/quochung.qc/2021_01_29/mh2/2_euid.jpg" /></p>

			<p>Th&agrave;nh phần trong kem chống nắng Image 50.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>● Photosomes: L&agrave; sự kết hợp giữa plankton extract v&agrave; lecithin ngăn ngừa oxy h&oacute;a, bổ sung độ ẩm v&agrave; phục hồi tổn thương. B&ecirc;n cạnh đ&oacute;, c&aacute;c chất n&agrave;y c&ograve;n c&oacute; t&aacute;c dụng nu&ocirc;i dưỡng c&aacute;c tế b&agrave;o da nhờ h&agrave;m lượng protein sống v&agrave; enzyme dồi d&agrave;o.</p>

<p>● Bv-osc (vitamin c): Chống oxy h&oacute;a g&acirc;y ra bởi &aacute;nh nắng mặt trời. Tăng cường sức đề kh&aacute;ng hỗ trợ vết thương nhanh ch&oacute;ng được l&agrave;m l&agrave;nh. Cải thiện l&agrave;n da tươi tắn, hồng h&agrave;o.</p>

<p>● Camellia sinensis: Chiết xuất từ l&aacute; tr&agrave; xanh, đ&acirc;y c&ugrave;ng l&agrave; một trong những th&agrave;nh phần chống oxy h&oacute;a hiệu quả thường xuất hiện trong c&aacute;c sản phẩm dưỡng da. B&ecirc;n cạnh đ&oacute; c&ograve;n gi&uacute;p l&agrave;m dịu da v&agrave; kh&aacute;ng vi&ecirc;m rất tốt.</p>

<p>● Arabidopsis thaliana: Chiết xuất từ c&acirc;y họ cải c&oacute; c&ocirc;ng dụng tuyệt vời trong việc chống oxy h&oacute;a, ngăn ngừa gốc tự do.</p>

<p>● Ergothioneine: Chiết xuất từ nấm c&oacute; t&aacute;c dụng chống oxy h&oacute;a. Khi th&agrave;nh phần n&agrave;y kết hợp với vitamin E v&agrave; C gi&uacute;p c&acirc;n bằng độ PH v&agrave; k&iacute;ch hoạt lẫn nhau ph&aacute;t huy t&aacute;c dụng.</p>

<p>● Glycerin: Th&agrave;nh phẩm cấp ẩm lu&ocirc;n lu&ocirc;n xuất hiện trong mỹ phẩm dưỡng da nhằm cung cấp độ ẩm cần thiết cho da, gi&uacute;p da lu&ocirc;n căng mọng v&agrave; tươi tắn. Hạn chế c&aacute;c vấn đề mất nước hoặc kh&ocirc; nhăn.</p>

<h2>3/ Review c&ocirc;ng dụng nổi bật của sản phẩm chống nắng Image 50</h2>

<p>Kem chống nắng Image 50 kh&ocirc;ng chỉ đơn thuần l&agrave; bảo vệ da chống lại c&aacute;c hại của tia UV m&agrave; c&ograve;n mang lại nhiều c&ocirc;ng dụng chăm s&oacute;c da vượt trội:</p>

<p>● Cơ chế hoạt động của Image SPF 50 Prevention+ kết hợp vật l&yacute; v&agrave; h&oacute;a học tạo n&ecirc;n c&ocirc;ng dụng chống nắng phổ rộng gi&uacute;p bảo vệ l&agrave;n da trước t&aacute;c hại của cả tia UVA, UVB v&agrave; m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>

<p>●&nbsp;<a href="https://www.maihan.vn/prevention/" rel="nofollow" target="_blank">Kem chống nắng Image</a>&nbsp;SPF 50 Prevention+ c&ograve;n c&oacute; khả năng cấp ẩm chuy&ecirc;n s&acirc;u l&agrave;m mềm da, nu&ocirc;i dưỡng l&agrave;n da mềm mại từ s&acirc;u b&ecirc;n trong.</p>

<table align="center">
	<tbody>
		<tr>
			<td>
			<p><img alt="Bảo vệ làn da khỏi tia UVA và UVB." src="https://image.thanhnien.vn/660/uploaded/quochung.qc/2021_01_29/mh2/3_eeir.jpg" /></p>

			<p>Bảo vệ l&agrave;n da khỏi tia UVA v&agrave; UVB.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>● C&aacute;c hoạt chất trong sản phẩm c&ograve;n gi&uacute;p g&oacute;p phần v&agrave;o việc phục hồi v&agrave; sửa chữa c&aacute;c tổn thương DNA.</p>

<p>● Kem chống nắng Image 50 c&ograve;n c&oacute; khả năng ngăn ngừa t&igrave;nh trạng sạm n&aacute;m da, chống lại qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a da hiệu quả.</p>

<p>● Chất kem mỏng, mịn với th&agrave;nh phần từ tự nhi&ecirc;n độc đ&aacute;o tạo n&ecirc;n 1 d&ograve;ng kem chống nắng rất dịu nhẹ, th&ocirc;ng tho&aacute;ng. Khi sử dụng tr&ecirc;n da kh&ocirc;ng g&acirc;y n&ecirc;n t&igrave;nh trạng k&iacute;ch ứng da, gi&uacute;p da lu&ocirc;n được khỏe mạnh v&agrave; tươi s&aacute;ng.</p>

<p>● Sản phẩm&nbsp;<a href="https://thanhnien.vn/suc-khoe/lam-dep/top-12-kem-chong-nang-duoc-san-lung-hien-nay-1324448.html" rel="" target="_blank">kem chống nắng&nbsp;</a>Image 50 ph&ugrave; hợp với l&agrave;n da hỗn hợp, da thường, da thường tiếp x&uacute;c với &aacute;nh nắng v&agrave; da mỏng yếu cần bảo vệ, phục hồi.</p>

<h2>4/ Cảm nhận thực tế sau khi sử dụng kem chống nắng SPF 50 của Image</h2>

<p>Chất kem rất mịn v&agrave; dạng lỏng v&agrave; c&oacute; m&ugrave;i thơm nhẹ dễ chịu. Khi được sử dụng tr&ecirc;n da tạo cảm gi&aacute;c nhẹ, thẩm thấu nhanh nhưng kh&ocirc;ng c&oacute; cảm gi&aacute;c bết d&iacute;nh.</p>

<p>D&ograve;ng n&agrave;y tạo lớp finish cực mượt gi&uacute;p da tr&ocirc;ng mịn m&agrave;ng v&agrave; kh&ocirc;ng bị kh&ocirc; căng. Khả năng kiểm so&aacute;t lượng dầu của sản phẩm gần như l&agrave; tuyệt vời v&igrave; đ&acirc;y l&agrave; sản phẩm d&agrave;nh cho l&agrave;n da hỗn hợp v&agrave; da thường.</p>

<p>Cuối c&ugrave;ng, đ&acirc;y l&agrave; sản phẩm c&oacute; chỉ số chống nắng l&agrave; SPF 50. Do vậy, sản phẩm hợp với những bạn đi học, đi l&agrave;m văn ph&ograve;ng, hoạc thường tiếp x&uacute;c trực tiếp với &aacute;nh nắng mặt trời, đi bơi.</p>

<p>Bạn chỉ cần vệ sinh da mặt thật sạch v&agrave; l&acirc;u kh&ocirc;. Lấy một lượng kem chống nắng vừa đủ cho mặt v&agrave; cổ. Thoa đều vừa massage nhẹ để c&aacute;c dưỡng chất thẩm thấu đều v&agrave;o s&acirc;u b&ecirc;n trong da.</p>

<p>N&ecirc;n thoa khoảng 15-30 ph&uacute;t trước khi ra ngo&agrave;i để kem kịp thẩm thấu v&agrave; ph&aacute;t huy t&aacute;c dụng. Thoa lại sau 2 giờ để hiệu quả bảo vệ da được li&ecirc;n tục.</p>

<table align="center">
	<tbody>
		<tr>
			<td>
			<p><img alt="Chất kem mỏng và nhẹ siêu thấm trên làn da." src="https://image.thanhnien.vn/660/uploaded/quochung.qc/2021_01_29/mh2/4_petr.jpg" /></p>

			<p>Chất kem mỏng v&agrave; nhẹ si&ecirc;u thấm tr&ecirc;n l&agrave;n da.</p>
			</td>
		</tr>
	</tbody>
</table>

<p>Ưu v&agrave; nhược điểm của kem chống nắng Image SPF 50 Prevention</p>

<p>Ưu điểm:</p>

<p>● Th&agrave;nh phần từ thi&ecirc;n nhi&ecirc;n an to&agrave;n khi sử dụng kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da.</p>

<p>Bảo vệ tối ưu l&agrave;n da trước t&aacute;c hại của tia UVA, UVB v&agrave; m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>

<p>● L&agrave;m mềm da, dưỡng ẩm chuy&ecirc;n s&acirc;u cho l&agrave;n da lu&ocirc;n mềm mại v&agrave; mịn m&agrave;ng.</p>

<p>● Nhanh ch&oacute;ng phục hồi v&agrave; sửa chữa c&aacute;c tổn thương DNA.</p>

<p>● Ngăn ngừa t&igrave;nh trạng sạm n&aacute;m da, đốm n&acirc;u, chống l&atilde;o h&oacute;a da hiệu quả.</p>

<p>● Ngừa da kh&ocirc; r&aacute;p, bong tr&oacute;c v&agrave; k&iacute;ch ứng da.</p>

<p>● Gi&uacute;p l&agrave;n da lu&ocirc;n được kh&ocirc; tho&aacute;ng, kh&ocirc;ng c&ograve;n xuất hiện b&oacute;ng dầu hay lỗ ch&acirc;n l&ocirc;ng b&iacute;t tắc.</p>

<p>● Giảm t&igrave;nh trạng k&iacute;ch ứng da, gi&uacute;p da khỏe mạnh v&agrave; tươi mới.</p>

<p>● Giữ g&igrave;n l&agrave;n da lu&ocirc;n chắc khỏe, mềm mượt, trắng s&aacute;ng v&agrave; tr&agrave;n đầy năng lượng.</p>

<p>● Sử dụng ph&ugrave; hợp cho cả phụ nữ mang thai, da nhạy cảm, da yếu.</p>

<p>Vấn đề n&agrave;o của da cũng c&oacute; thể giải quyết được nếu bạn biết c&aacute;ch chăm s&oacute;c v&agrave; lựa chọn sản phẩm điều trị ph&ugrave; hợp. Việc chống nắng cho da cũng tương tự như vậy. Nếu muốn t&igrave;m cho m&igrave;nh 1 d&ograve;ng sản phẩm chống nắng d&agrave;nh cho da hỗn hợp, gi&uacute;p bảo vệ to&agrave;n diện l&agrave;n da trước &aacute;nh nắng mặt trời th&igrave; &ldquo;giải ph&aacute;p&rdquo; ho&agrave;n hảo nhất bạn kh&ocirc;ng n&ecirc;n bỏ qua ch&iacute;nh l&agrave; sử dụng kem chống nắng cho da hỗn hợp Image Prevention+ Daily Ultimate Protection Moisturizer SPF50.</p>

<p>Nhược điểm:</p>

<p>Tuy mang lại rất nhiều ưu điểm m&agrave; rất &iacute;t sản phẩm chống nắng hiện nay c&oacute; được nhưng Image SPF50 kh&ocirc;ng phải kh&ocirc;ng tồn tại nhược điểm. Nhưng đ&acirc;y kh&ocirc;ng kh&ocirc;ng phải l&agrave; nhược điểm qu&aacute; lớn ảnh hưởng đến c&ocirc;ng dụng tuyệt vời của sản phẩm.</p>

<p>● Chứa nhiều th&agrave;nh phần nu&ocirc;i dưỡng da v&agrave; cấp ẩm n&ecirc;n hơi d&iacute;nh một ch&uacute;t tr&ecirc;n da.</p>

<p>● Gi&aacute; th&agrave;nh c&oacute; thể n&oacute;i l&agrave; hơi cao so với thu nhập của c&aacute;c bạn học sinh, sinh vi&ecirc;n. Tuy nhi&ecirc;n, so với những g&igrave; m&agrave; sản phẩm mang lại cho l&agrave;n da th&igrave; đ&acirc;y vẫn lu&ocirc;n l&agrave; sản phẩm rất đ&aacute;ng để bạn đầu tư.</p>

<h2>5/ Phản hồi của những kh&aacute;ch h&agrave;ng đ&atilde; sử dụng chống nắng Image 50</h2>

<p>Kem chống nắng Image n&oacute;i chung v&agrave; kem chống nắng Image SPF50 n&oacute;i ri&ecirc;ng được xem l&agrave; d&ograve;ng sản phẩm bảo vệ l&agrave;n da tối ưu nhất hiện nay. V&igrave; vậy, kh&ocirc;ng c&oacute; g&igrave; bất ngờ khi nhận được h&agrave;ng ng&agrave;n review của người d&ugrave;ng. C&aacute;c bạn c&oacute; thể xem qua một v&agrave;i đ&aacute;nh gi&aacute; ch&acirc;n thực v&agrave; kh&aacute;ch quan về d&ograve;ng sản phẩm kem chống nắng của nh&agrave; Image Skincare dưới đ&acirc;y:</p>

<p>Nguyễn Linh (18 tuổi &ndash; H&agrave; Nội): &ldquo;D&ugrave;ng kem chống nắng Image SPF 50 Prevention+ t&ocirc;i kh&ocirc;ng c&ograve;n lo lắng mỗi khi ra nắng hay đi bơi nữa, t&ocirc;i ho&agrave;n to&agrave;n tự tin mỗi khi ra ngo&agrave;i&rdquo;.</p>

<p>Jami (chuy&ecirc;n gia thẩm mỹ): &ldquo;SPF 50 h&agrave;ng ng&agrave;y rất quan trọng đối với t&ocirc;i v&agrave; đ&acirc;y cũng l&agrave; sản phẩm số một t&ocirc;i giới thiệu cho kh&aacute;ch h&agrave;ng. T&ocirc;i ho&agrave;n to&agrave;n th&iacute;ch Image Skincare v&igrave; n&oacute; bảo vệ tuyệt vời khỏi &aacute;nh nắng mặt trời v&agrave; cũng chứa chất chống oxy h&oacute;a để bảo vệ l&agrave;n da của bạn khỏi t&aacute;c hại của m&ocirc;i trường&rdquo;.</p>

<p>Chị Hồng &Acirc;n (27 tuổi - TP.HCM): &ldquo;Từ ng&agrave;y lựa chọn kem chống nắng n&agrave;y, t&ocirc;i đ&atilde; kh&ocirc;ng c&ograve;n lo lắng mỗi khi ra nắng v&igrave; da t&ocirc;i được bảo vệ rất tốt. Kh&ocirc;ng c&oacute; cảm gi&aacute;c đau r&aacute;t khi tiếp x&uacute;c với &aacute;nh nắng. Da cũng mềm mượt hẳn do kem n&agrave;y c&oacute; t&aacute;c dụng dưỡng ẩm. Đi đ&acirc;u t&ocirc;i cũng đem theo để sử dụng để kh&ocirc;ng lo da bị bắt nắng&rdquo;.</p>

<table align="center">
	<tbody>
		<tr>
			<td>
			<p><img alt="Phản hồi từ khách sau khi sử dụng kem chống nắng Image 50" src="https://image.thanhnien.vn/660/uploaded/quochung.qc/2021_01_29/mh2/5_rbnd.png" /></p>

			<p>Phản hồi từ kh&aacute;ch sau khi sử dụng kem chống nắng Image 50</p>
			</td>
		</tr>
	</tbody>
</table>

<h2>6/ N&ecirc;n mua sản phẩm kem chống nắng Image 50 ở đ&acirc;u ch&iacute;nh h&atilde;ng?</h2>

<p>Kem chống nắng Image 50 ng&agrave;y c&agrave;ng được y&ecirc;u chuộng n&ecirc;n t&igrave;nh trạng khan hiếm h&agrave;ng ch&iacute;nh h&atilde;ng thường xuy&ecirc;n diễn ra. B&ecirc;n cạnh đ&oacute;, tr&ecirc;n thị trường c&ograve;n xuất hiện h&agrave;ng k&eacute;m chất lượng, h&agrave;ng x&aacute;ch tay b&aacute;n rẻ hơn với h&agrave;ng ch&iacute;nh h&atilde;ng nhằm đ&aacute;nh v&agrave;o t&acirc;m l&yacute; ham h&agrave;ng rẻ của người d&ugrave;ng.</p>

<p>Do đ&oacute;, trước khi mua sản phẩm Image SPF 50 Prevention+ để sử dụng bạn cần t&igrave;m những nơi thật sự uy t&iacute;n để tr&aacute;nh mua phải h&agrave;ng giả, h&agrave;ng nh&aacute;i, tr&aacute;nh l&agrave;m ảnh hưởng đến sức khỏe cũng như ảnh hưởng đến l&agrave;n da sau khi d&ugrave;ng.</p>

<p>Bạn chỉ n&ecirc;n mua kem chống nắng Image SPF 50 Prevention+ Daily Ultimate Protection Moisturizer tại c&aacute;c đại l&yacute; ph&acirc;n phối b&aacute;n lẻ ch&iacute;nh h&atilde;ng của nh&agrave; Image. Vậy mua kem chống nắng Image ở đ&acirc;u ch&iacute;nh h&atilde;ng 100%?</p>

<p>Mai H&acirc;n mỹ phẩm đ&atilde; được Image Việt Nam lựa chọn l&agrave; đơn vị b&aacute;n lẻ Image Skincare tại Việt Nam. C&aacute;c bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi chọn mua kem chống nắng Image tại Mai H&acirc;n, h&agrave;ng ch&iacute;nh h&atilde;ng 100% c&ugrave;ng nhiều ưu đ&atilde;i hấp dẫn kh&aacute;c.</p>

<p>Từ khi xuất hiện tr&ecirc;n thị trường cho đến nay kem chống nắng Image 50 vẫn lu&ocirc;n nhận được rất nhiều sự y&ecirc;u th&iacute;ch từ chuy&ecirc;n gia v&agrave; người sử dụng mặt d&ugrave; c&oacute; thể gọi l&agrave; &ldquo; đắt xắt ra miếng&rdquo;. Với những chia sẻ tr&ecirc;n hy vọng sẽ gi&uacute;p bạn c&oacute; th&ecirc;m th&ocirc;ng tin để lựa chọn sản phẩm chống nắng ph&ugrave; hợp với l&agrave;n da của m&igrave;nh.</p>
', CAST(N'2021-03-23T09:57:33.023' AS DateTime), 1)
INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (2, N'Hướng Dẫn Xây Dựng Quy Trình Chăm Sóc Da Đúng Chuẩn', N'cbab5b82-5d5f-42d7-b2a4-c984bd0f2d49.jpg', N'4288e8b5-a186-4f53-bf4e-04e985830c8b.jpg', N'<p><strong>Bước đầu ti&ecirc;n bạn bắt buộc phải l&agrave;m trước khi x&acirc;y dựng 1 quy tr&igrave;nh chăm s&oacute;c da đ&oacute; l&agrave; hiểu r&otilde; da bạn thuộc loại n&agrave;o, nhu cầu thực sự l&agrave; g&igrave;?&nbsp;</strong></p>

<p><strong>L&agrave;m thế n&agrave;o để x&aacute;c định ?? V&ocirc; c&ugrave;ng đơn giản, bạn chỉ cần đăng nhập v&agrave;o ứng dụng di động của Happy Skin v&agrave; ho&agrave;n th&agrave;nh&nbsp;<a href="https://happyskin.vn/happy-skin-mobile-app-viet-review-nhan-qua-my-pham-hap-dan/" rel="noopener" target="_blank">b&agrave;i test da</a>; cảnh b&aacute;o trước l&agrave; rất d&agrave;i, nhưng rất đ&aacute;ng, v&igrave; c&aacute;c c&acirc;u hỏi sẽ đi chi tiết, s&acirc;u s&aacute;t từng vấn đề, th&oacute;i quen chăm s&oacute;c da của bạn, từ đ&oacute; đưa ra kết quả v&agrave; gợi &yacute; liệu tr&igrave;nh, c&aacute;c sản phẩm n&ecirc;n d&ugrave;ng.</strong></p>

<p><strong>C&ograve;n trong phạm vi b&agrave;i viết n&agrave;y, Happy Skin sẽ tổng hợp những nguy&ecirc;n tắc chung v&agrave; một số liệu tr&igrave;nh cho c&aacute;c loại da, vấn đề da phổ biến để những bạn kh&ocirc;ng c&oacute; cơ hội v&agrave;o app cũng tham khảo được.</strong></p>

<p><img alt="quy-trinh-cham-soc-da-21" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-21-630x420.jpg" style="height:420px; width:630px" /></p>

<p>Việc hiểu được những sản phẩm n&agrave;o kết hợp tốt với nhau, c&aacute;c sản phẩm c&oacute; lợi như thế n&agrave;o đối với l&agrave;n da, v&agrave; thứ tự sử dụng c&aacute;c sản phẩm l&agrave; v&ocirc; c&ugrave;ng quan trọng khi x&acirc;y dựng quy tr&igrave;nh chăm s&oacute;c da tốt nhất cho bạn.&nbsp;H&atilde;y nhớ rằng nếu bạn c&oacute; nhiều hơn một vấn đề về da, bạn c&oacute; thể sẽ cần sử dụng nhiều hơn một sản phẩm điều trị hoặc sản phẩm điều trị tập trung. Với một chu tr&igrave;nh chăm s&oacute;c da cao cấp hơn, một số thử nghiệm l&agrave; cần thiết để t&igrave;m hiểu phương ph&aacute;p v&agrave; tần suất sử dụng n&agrave;o c&oacute; t&aacute;c dụng tốt nhất.</p>

<h2>Tẩy trang</h2>

<p>Tẩy trang gi&uacute;p loại bỏ c&aacute;c bụi bẩn, dầu thừa v&agrave; lớp&nbsp;trang điểm. V&igrave; rửa mặt bằng nước kh&ocirc;ng đủ để l&agrave;m sạch da. Khi da&nbsp;sạch sẽ, c&aacute;c bước dưỡng sau mới ph&aacute;t huy t&aacute;c dụng được. Hơn nữa, nếu da bẩn sẽ dễ bị b&iacute; tắc lỗ ch&acirc;n l&ocirc;ng, sinh ra mụn.</p>

<p>Tr&ecirc;n thị trường c&oacute; 3&nbsp;loại tẩy trang phổ biến l&agrave; dầu v&agrave; micellar&nbsp;<a href="https://happyskin.vn/glossary/water/">water</a>, s&aacute;p, mức gi&aacute; cũng trải d&agrave;i từ b&igrave;nh d&acirc;n đến cao cấp, về cơ bản khả năng l&agrave;m sạch th&igrave; dầu v&agrave; s&aacute;p tương đương, tẩy sạch s&acirc;u; c&ograve;n micellar th&igrave; th&iacute;ch hợp để tẩy những ng&agrave;y makeup nhẹ hoặc tẩy nền, ri&ecirc;ng phần mắt v&agrave; m&ocirc;i bạn vẫn n&ecirc;n chọn c&aacute;c sản phẩm chuy&ecirc;n biệt v&igrave; 2 v&ugrave;ng da n&agrave;y rất nhạy cảm.</p>

<p>Một lưu &yacute; với những bạn da qu&aacute; nhạy cảm, mụn n&ecirc;n cẩn thận khi chọn sản phẩm, test kĩ để xem c&oacute; dị ứng với cồn, hương liệu,&nbsp;<a href="https://happyskin.vn/glossary/mineral-oil/">mineral oil</a>&nbsp;hay loại dầu n&agrave;o kh&ocirc;ng.</p>

<p><strong>Sản phẩm gợi &yacute;</strong></p>

<p>Micellar&nbsp;<a href="https://happyskin.vn/glossary/water/">water</a></p>

<p><img alt="quy-trinh-cham-soc-da" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-630x354.jpg" style="height:354px; width:630px" /></p>

<p>&nbsp;</p>

<p>Dầu tẩy trang</p>

<p><img alt="quy-trinh-cham-soc-da-6" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-6.png" style="height:325px; width:577px" /></p>

<p><a href="https://happyskin.vn/review-so-sanh-6-loai-dau-tay-trang-tu-trung-den-cao-cap/" rel="noopener" target="_blank">Top 6 dầu tẩy trang chất lượng tốt</a></p>

<p>S&aacute;p tẩy trang</p>

<p><img alt="quy-trinh-cham-soc-da-26" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-26-630x354.jpg" style="height:354px; width:630px" /></p>

<h2>Sữa rửa mặt</h2>

<p>Nhiều sản phẩm tẩy trang chưa loại bỏ ho&agrave;n to&agrave;n bụi bẩn, hoặc nhũ h&oacute;a chưa ho&agrave;n to&agrave;n vẫn c&ograve;n nhờn r&iacute;t; do đ&oacute; bạn cần d&ugrave;ng th&ecirc;m sữa rửa mặt để đảm bảo da sạch ho&agrave;n to&agrave;n.</p>

<p>Nguy&ecirc;n tắc chung khi chọn sữa rửa mặt l&agrave;&nbsp;<a href="https://happyskin.vn/glossary/ph/">pH</a>&nbsp;thấp hơn 7, c&aacute;c chất hoạt động bề mặt, tạo bọt phải thuộc danh s&aacute;ch an to&agrave;n, để da kh&ocirc;ng bị kh&ocirc;.&nbsp;Đối với da mụn, bạn n&ecirc;n t&igrave;m kiếm c&aacute;c sản phẩm c&oacute; chứa c&aacute;c th&agrave;nh phần trị mụn như&nbsp;<a href="https://happyskin.vn/glossary/salicylic-acid/">salicylic acid</a>&nbsp;(<a href="https://happyskin.vn/glossary/bha/">BHA</a>), alpha hydroxy&nbsp;<a href="https://happyskin.vn/glossary/axit/">acid</a>&nbsp;(thường sử dụng l&agrave; glycolic&nbsp;<a href="https://happyskin.vn/glossary/axit/">acid</a>) nếu&nbsp;<a href="https://happyskin.vn/glossary/benzoyl-peroxide/">benzoyl peroxide</a>&nbsp;qu&aacute; mạnh với bạn. Dịu nhẹ hơn nữa, c&oacute; thể t&igrave;m kiếm th&agrave;nh phần&nbsp;<a href="https://happyskin.vn/glossary/tea/">tea</a>&nbsp;tree oil (tinh dầu tr&agrave;).</p>

<p>Loại sữa rửa mặt tốt nhất cho da nhạy cảm l&agrave; loại c&oacute; chứa rất &iacute;t ho&aacute; chất, &iacute;t th&agrave;nh phần, kh&ocirc;ng chứa những th&agrave;nh phần g&acirc;y k&iacute;ch ứng như&nbsp;<a href="https://happyskin.vn/glossary/sodium-lauryl-sulfate/">sodium lauryl sulfate</a>&nbsp;(chất chuy&ecirc;n d&ugrave;ng để tạo bọt trong mỹ phẩm), alcohol (cồn), thay v&agrave;o đ&oacute; l&agrave; c&aacute;c th&agrave;nh phần dịu nhẹ, c&oacute; t&aacute;c dụng l&agrave;m dịu da như soy (đậu n&agrave;nh), chamomile (c&uacute;c), feverfew (c&uacute;c thanh nhiệt),&nbsp;<a href="https://happyskin.vn/glossary/aloe-vera/">aloe vera</a>&nbsp;(l&ocirc; hội), cucumber (dưa leo), red algea (tảo đỏ) hay thyme.</p>

<p>Tham khảo th&ecirc;m<a href="https://happyskin.vn/top-8-sua-rua-mat-ban-khong-the-bo-qua/" rel="noopener" target="_blank">8 loại sữa rửa mặt được c&aacute;c beauty blogger v&agrave; editor nh&agrave; Happy Skin y&ecirc;u th&iacute;ch</a>&nbsp;b&igrave;nh chọn.</p>

<p><img alt="quy-trinh-cham-soc-da-9" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-9-630x354.jpg" style="height:354px; width:630px" /></p>

<h2>Tẩy tế b&agrave;o chết</h2>

<p>Tổn thương từ &aacute;nh nắng mặt trời l&agrave;m cho bề mặt da trở n&ecirc;n d&agrave;y bất thường. Mụn trứng c&aacute; v&agrave; da dầu khiến vấn đề trở n&ecirc;n c&ograve;n phức tạp hơn nữa. Tẩy tế b&agrave;o chết gi&uacute;p loại bỏ c&aacute;c chất bẩn t&iacute;ch tụ &ndash; g&acirc;y tắc lỗ ch&acirc;n l&ocirc;ng, m&agrave;u da kh&ocirc;ng đồng đều, da xỉn m&agrave;u, v&agrave; nếp nhăn s&acirc;u.</p>

<h3>Sản phẩm gợi &yacute;</h3>

<p>C&oacute; 2 loại tẩy tế b&agrave;o chết phổ biến l&agrave; h&oacute;a học v&agrave; cơ học.</p>

<p><img alt="quy-trinh-cham-soc-da-17" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-17-630x354.jpg" style="height:354px; width:630px" /></p>

<p><a href="https://happyskin.vn/review-va-so-sanh-7-san-pham-tay-te-bao-chet-co-hoc/" rel="noopener" target="_blank">Top sản phẩm tẩy da chết cơ học</a></p>

<p>Nếu da bạn qu&aacute; nhạy cảm, mụn th&igrave; n&ecirc;n chọn c&aacute;c sản phẩm cơ học dạng gel kh&ocirc;ng hạt, hoặc h&oacute;a học nồng độ thấp như&nbsp;<a href="https://happyskin.vn/glossary/bha/">BHA</a>,&nbsp;<a href="https://happyskin.vn/glossary/aha/">AHA</a>.</p>

<p><img alt="quy-trinh-cham-soc-da-22" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-22-630x354.jpg" style="height:354px; width:630px" /></p>

<p>Bạn n&agrave;o da nhiều mụn ẩn, lỗ ch&acirc;n l&ocirc;ng lớn, hay tiết b&atilde; nhờn n&ecirc;n chọn&nbsp;<a href="https://happyskin.vn/glossary/bha/">BHA</a>; da kh&ocirc;, l&atilde;o h&oacute;a th&igrave;&nbsp;<a href="https://happyskin.vn/glossary/aha/">AHA</a>. Bạn vẫn c&oacute; thể kết hợp cả 2 loại tr&ecirc;n, nhưng cần lưu &yacute; t&igrave;nh trạng, phản ứng của da để điều chỉnh tần suất cũng như nồng độ hoạt chất; v&agrave; lu&ocirc;n nhớ chống nắng, dưỡng ẩm đầy đủ.</p>

<p><img alt="quy-trinh-cham-soc-da-20" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-20-630x354.png" style="height:354px; width:630px" /></p>

<h2>Toner</h2>

<p>Toner c&oacute; chứa th&agrave;nh phần phục hồi da v&agrave; bổ sung độ ẩm cho bề mặt da ngay lập tức sau khi rửa mặt. Ch&uacute;ng cũng gi&uacute;p giảm tấy đỏ v&agrave; da kh&ocirc; bong tr&oacute;c.</p>

<p>Toner được chia th&agrave;nh 3 loại:</p>

<p>&ndash;&nbsp;<strong>Skin Freshener:&nbsp;</strong>Đ&acirc;y l&agrave; loại toner &ecirc;m dịu nhất, ch&uacute;ng chứa nước v&agrave; chất h&uacute;t ẩm như glycerin v&agrave; rất &iacute;t cồn (từ 0-10%). Skin Freshener &ndash; như t&ecirc;n gọi của n&oacute;, mang chức năng cung cấp nước, refresh cho da, l&agrave;m m&aacute;t da. B&ecirc;n cạnh đ&oacute;, trong skin freshener c&ograve;n sử dụng nước chất tinh chất của c&aacute;c loại hoa như hoa hồng, hoa c&uacute;c chamomile, hoa oải hương, tr&agrave; xanh c&ugrave;ng với chiết xuất nha đam, thảo dược,&nbsp;<a href="https://happyskin.vn/glossary/collagen/">collagen</a>&nbsp;nước&hellip; để tăng cường dưỡng chất cho l&agrave;n da.&nbsp;Thường th&igrave; &lsquo;nước hoa hồng&rsquo; &ndash; thuật ngữ thường được d&ugrave;ng để n&oacute;i về toner trong tiếng Việt, thực ra l&agrave; để n&oacute;i đến loại Skin Freshener n&agrave;y.</p>

<p>&ndash;&nbsp;<strong>Skin tonics:&nbsp;</strong>Mạnh hơn một ch&uacute;t cho với Skin Freshener, Skin tonics c&oacute; lượng cồn khoảng 10-20% trong th&agrave;nh phần. Loại toner n&agrave;y c&oacute; khả năng l&agrave;m sạch da, thu nhỏ lỗ ch&acirc;n l&ocirc;ng , s&aacute;t khuẩn nhưng vẫn giữ cho da độ ẩm cần thiết.</p>

<p><strong>&ndash;&nbsp;<a href="https://happyskin.vn/glossary/chat-lam-se/">Astringent</a>:&nbsp;</strong>Đ&acirc;y l&agrave; loại toner mạnh nhất chứa 20-60% cồn. Ch&iacute;nh v&igrave; l&yacute; do n&agrave;y,&nbsp;<a href="https://happyskin.vn/glossary/chat-lam-se/">astringent</a>&nbsp;vấp phải sự phản đối của rất nhiều chuy&ecirc;n gia chăm s&oacute;c da v&igrave; qu&aacute; kh&ocirc;, c&oacute; khả năng g&acirc;y k&iacute;ch ứng. Tuy nhi&ecirc;n, toner cũng mang lại những c&ocirc;ng dụng nhất định l&agrave; s&aacute;t khuẩn, se lỗ ch&acirc;n l&ocirc;ng v&agrave; giảm nhờn cho da.</p>

<p>&ndash; Ngo&agrave;i ra, c&aacute;c h&atilde;ng Nhật, H&agrave;n hay gọi toner l&agrave; lotion, thường&nbsp;s&aacute;nh v&agrave; cấp ẩm nhiều hơn.</p>

<p><strong>Sản phẩm gợi &yacute;</strong></p>

<p>Tham khảo th&ecirc;m&nbsp;<a href="https://happyskin.vn/top-7-toner-than-thanh-ban-nhat-dinh-phai-thu/" rel="noopener" target="_blank">top 7 toner &ldquo;thần th&aacute;nh&rdquo;</a>&nbsp;được rất nhiều lời khen từ giới chuy&ecirc;n m&ocirc;n v&agrave; người d&ugrave;ng.</p>

<p><img alt="quy-trinh-cham-soc-da-7" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-7-630x354.jpg" style="height:354px; width:630px" /></p>

<p>&nbsp;</p>

<h2>Điều trị mụn (nếu c&oacute;)</h2>

<p>Nếu da bạn c&oacute; mụn, th&igrave; n&ecirc;n d&ugrave;ng c&aacute;c sản phẩm đặc trị mụn ngay sau toner, chấm thuốc l&ecirc;n c&aacute;c nốt mụn rồi đợi 15-20 ph&uacute;t. C&oacute; nhiều&nbsp;<a href="https://happyskin.vn/cac-san-pham-tri-mun-hoat-dong-nhu-the-nao/" rel="noopener" target="_blank">hoạt chất trị mụn d&agrave;nh ri&ecirc;ng cho c&aacute;c loại mụn kh&aacute;c nhau</a>, c&aacute;c bạn c&oacute; thể t&igrave;m đọc c&aacute;c b&agrave;i trong chuy&ecirc;n mục trị mụn của Happy Skin để t&igrave;m hiểu chi tiết hơn.</p>

<p>Sản phẩm gợi &yacute;</p>

<p><img alt="quy-trinh-cham-soc-da-24" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-24-630x354.jpg" style="height:354px; width:630px" /></p>

<p><a href="https://happyskin.vn/4-san-pham-ngan-ngua-va-tri-mun-moi-ban-nen-thu/" rel="noopener" target="_blank">4 sản phẩm ngăn ngừa v&agrave; trị mụn mới</a></p>

<p><img alt="nhung-dieu-can-biet-ve-mun-va-cach-kiem-soat-mun-noi-tiet-13" src="https://staticpro.happyskin.vn/images/content/2016/09/nhung-dieu-can-biet-ve-mun-va-cach-kiem-soat-mun-noi-tiet-13.jpg" style="height:400px; width:612px" /></p>

<p><img alt="top-san-pham-tri-mun-cover" src="https://staticpro.happyskin.vn/images/content/2015/04/top-san-pham-tri-mun-cover-630x355.png" style="height:355px; width:630px" /></p>

<p><a href="https://happyskin.vn/top-san-pham-dac-tri-mun-hieu-qua-nhat/" rel="noopener" target="_blank">Top sản phẩm trị mụn</a></p>

<h2>Điều trị th&acirc;m, n&aacute;m (nếu c&oacute;)</h2>

<p>Nếu da bạn c&oacute; c&aacute;c vấn đề về th&acirc;m mụn, t&agrave;n nhang hay đốm n&acirc;u, n&aacute;m th&igrave; n&ecirc;n sử dụng th&ecirc;m c&aacute;c sản phẩm đặc trị, gi&agrave;u th&agrave;nh phần l&agrave;m s&aacute;ng, k&iacute;ch th&iacute;ch da t&aacute;i tạo tế b&agrave;o mới</p>

<p>Sản phẩm gợi &yacute;</p>

<p><img alt="top-san-pham-duong-trang-nen-mua-ngay-dang-tung-dong" src="https://staticpro.happyskin.vn/images/content/2016/10/top-san-pham-duong-trang-nen-mua-ngay-dang-tung-dong1-630x370.jpg" style="height:370px; width:630px" /></p>

<p><a href="https://happyskin.vn/top-san-pham-duong-trang-nen-mua-ngay-vi-dang-tung-dong/" rel="noopener" target="_blank">Top c&aacute;c sản phẩm trị th&acirc;m, dưỡng trắng</a></p>

<h2>Serum chống l&atilde;o h&oacute;a</h2>

<p>Sử dụng buổi s&aacute;ng v&agrave; buổi tối,&nbsp;<a href="https://happyskin.vn/glossary/serum/">serum</a>&nbsp;chứa chất chống oxy h&oacute;a v&agrave; c&aacute;c th&agrave;nh phần chống l&atilde;o h&oacute;a kh&aacute;c gi&uacute;p bảo vệ l&agrave;n da của bạn khỏi t&aacute;c hại của m&ocirc;i trường, bao gồm cả &aacute;nh nắng mặt trời &nbsp;v&agrave; &ocirc; nhiễm.</p>

<p><strong>Sản phẩm gợi &yacute;</strong></p>

<p>C&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m danh s&aacute;ch&nbsp;<a href="https://happyskin.vn/top-serum-chong-lao-hoa-khong-the-bo-qua-khi-ngoai-25/" rel="noopener" target="_blank">top c&aacute;c serum chống l&atilde;o h&oacute;a hiệu quả tốt</a></p>

<p><img alt="bi-quyet-chon-serum-24" src="https://staticpro.happyskin.vn/images/content/2016/10/bi-quyet-chon-serum-24-630x354.png" style="height:354px; width:630px" /></p>

<h2>Serum dưỡng ẩm</h2>

<p>Nếu da bạn kh&ocirc;ng c&oacute; qu&aacute; nhiều vấn đề cần sử dụng c&aacute;c loại&nbsp;<a href="https://happyskin.vn/glossary/serum/">serum</a>&nbsp;đặc trị th&igrave; chỉ cần 1 loại&nbsp;<a href="https://happyskin.vn/glossary/serum/">serum</a>&nbsp;gi&agrave;u hoạt chất dưỡng ẩm l&agrave; đủ. Được y&ecirc;u th&iacute;ch v&agrave; l&agrave;nh t&iacute;nh nhất phải kể đến c&aacute;c loại&nbsp;<a href="https://happyskin.vn/glossary/serum/">serum</a>&nbsp;Hyaluronic&nbsp;<a href="https://happyskin.vn/glossary/axit/">acid</a>.</p>

<p><strong>Sản phẩm gợi &yacute;</strong></p>

<h2>&nbsp;<img alt="quy-trinh-cham-soc-da-16" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-16-630x354.jpg" style="height:354px; width:630px" /></h2>

<p><a href="https://happyskin.vn/so-sanh-3-serum-hyaluronic-acid-hieu-qua-duong-am-xuat-sac/" rel="noopener" target="_blank">Top serum Hyaluronic acid</a></p>

<h2><strong>Kem mắt</strong></h2>

<p>V&ugrave;ng da nhạy cảm v&agrave; dễ l&atilde;o h&oacute;a nhất lu&ocirc;n cần được chăm s&oacute;c kỹ lưỡng. Nếu bạn c&ograve;n trẻ, dưới 25, một loại kem mắt dưỡng ẩm cơ bản l&agrave; đủ; c&ograve;n đ&atilde; ngấp ng&eacute; tuổi l&atilde;o h&oacute;a, từ 25 trở l&ecirc;n n&ecirc;n chọn c&aacute;c sản phẩm gi&agrave;u chất chống oxy h&oacute;a, ngăn ngừa nếp nhăn.</p>

<p>Sản phẩm gợi &yacute;:</p>

<p><img alt="quy-trinh-cham-soc-da-5" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-5-630x353.png" style="height:353px; width:630px" /></p>

<p>Top c&aacute;c kem mắt được y&ecirc;u th&iacute;ch nhất bởi beauty blogger v&agrave; editor Happy Skin</p>

<h2>Dầu dưỡng</h2>

<p>Bạn c&oacute; thể d&ugrave;ng dầu dưỡng trước kem dưỡng, hoặc thay thế lu&ocirc;n kem nếu da đ&atilde; đủ ẩm. Da dầu n&ecirc;n chọn c&aacute;c loại dầu gi&agrave;u linoleic, da kh&ocirc; n&ecirc;n chọn dầu nhiều oleic. Ri&ecirc;ng&nbsp;da nhạy cảm th&igrave; n&ecirc;n test kĩ, để biết da m&igrave;nh hợp loại&nbsp;dầu n&agrave;o.</p>

<p>Happy Skin từng viết rất&nbsp;chi tiết hướng dẫn c&aacute;ch chọn dầu cho từng loại da rồi, c&aacute;c bạn c&oacute; thể t&igrave;m đọc lại.</p>

<p><strong>Gợi &yacute; sản phẩm</strong></p>

<p><a href="https://happyskin.vn/top-5-dau-duong-sieu-mong-nhe-cho-da-dau-hon-hop/" rel="noopener" target="_blank">Top dầu dưỡng cho da dầu</a></p>

<p><img alt="quy-trinh-cham-soc-da-8" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-8-630x339.png" style="height:339px; width:630px" /></p>

<p>&nbsp;</p>

<h2>Kem dưỡng</h2>

<p>Khi được sử dụng h&agrave;ng ng&agrave;y, chất dưỡng ẩm (kem, lotion, gel, hoặc kết cấu lỏng) cải thiện chức năng của da, kh&oacute;a ẩm cũng như gi&uacute;p da mịn m&agrave;ng v&agrave; mềm mại. Bạn c&oacute; thể (v&agrave; bạn n&ecirc;n) sử dụng ch&uacute;ng quanh v&ugrave;ng mắt; Tuy nhi&ecirc;n, nếu bạn th&iacute;ch d&ugrave;ng kem dưỡng mắt, bạn c&oacute; thể sử dụng n&oacute; ở b&ecirc;n tr&ecirc;n hoặc thay cho kem dưỡng ẩm quanh mắt.</p>

<p>Gợi &yacute; sản phẩm</p>

<p><img alt="quy-trinh-cham-soc-da-1" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-1-630x354.png" style="height:354px; width:630px" /></p>

<p>Danh s&aacute;ch top sản phẩm kem dưỡng cho da nhạy cảm</p>

<p><img alt="topmoisturisers" src="https://staticpro.happyskin.vn/images/content/2015/12/topmoisturisers-630x434.jpg" style="height:434px; width:630px" /></p>

<p>&nbsp;</p>

<p>C&aacute;c sản phẩm dưỡng cho m&ugrave;a đ&ocirc;ng</p>

<h2>Chống nắng</h2>

<p>T&aacute;c hại của tia UV đến da kinh khủng như thế n&agrave;o th&igrave; chắc hẳn c&aacute;c bạn đ&atilde; biết r&otilde; qua c&aacute;c b&agrave;i viết trước đ&acirc;y của Happy Skin. Do đ&oacute; d&ugrave; nắng hay mưa, đ&ocirc;ng hay h&egrave;, thậm ch&iacute; l&agrave; băng tuyết th&igrave; c&aacute;c n&agrave;ng nhớ bắt buộc phải thoa kem chống nắng đủ lượng trước khi ra ngo&agrave;i</p>

<p>Sản phẩm gợi &yacute;</p>

<p><img alt="quy-trinh-cham-soc-da-25" src="https://staticpro.happyskin.vn/images/content/2016/10/quy-trinh-cham-soc-da-25-630x354.jpg" style="height:354px; width:630px" /></p>

<p><a href="https://happyskin.vn/review-so-sanh-5-kem-chong-nang-sieu-thi-duoi-250-nghin/" rel="noopener" target="_blank">Top 5 chống nắng b&igrave;nh d&acirc;n</a></p>

<p><img alt="kem-chong-nang-tung-loai-da-2" src="https://staticpro.happyskin.vn/images/content/2016/06/kem-chong-nang-tung-loai-da-2-630x420.jpeg" style="height:420px; width:630px" /></p>

<p><img alt="kem-chong-nang-moi-he-2016" src="https://staticpro.happyskin.vn/images/content/2016/04/kem-chong-nang-moi-he-2016-630x393.jpg" style="height:393px; width:630px" /></p>

<p><a href="https://happyskin.vn/6-loai-kem-chong-nang-moi-ban-khong-the-khong-thu-trong-he-2016/" rel="noopener" target="_blank">Kem chống nắng mới 2016</a></p>

<h2>Gợi &yacute; quy tr&igrave;nh chăm s&oacute;c da&nbsp;s&aacute;ng v&agrave; tối</h2>

<p>Chu tr&igrave;nh chăm s&oacute;c da đơn giản, từng bước một n&agrave;y bao gồm c&aacute;c sản phẩm cơ bản m&agrave; tất cả mọi người đều n&ecirc;n sử dụng v&agrave; thứ tự sử dụng mỗi ng&agrave;y. Bạn c&oacute; thể &aacute;p dụng c&aacute;c bước cho tất cả c&aacute;c loại da.</p>

<h3>Cơ bản</h3>

<p>S&Aacute;NG</p>

<ol>
	<li>Sữa rửa mặt</li>
	<li>Toner</li>
	<li><a href="https://happyskin.vn/glossary/serum/">Serum</a>&nbsp;dưỡng ẩm</li>
	<li>Kem dưỡng ẩm</li>
	<li>Kem chống nắng</li>
</ol>

<p>TỐI</p>

<ol>
	<li>Tẩy trang</li>
	<li>Sữa rửa mặt</li>
	<li>Tẩy tế b&agrave;o chết (1-2 lần/1 tuần) với cơ học</li>
	<li>Toner</li>
	<li><a href="https://happyskin.vn/glossary/serum/">Serum</a></li>
	<li>Kem mắt</li>
	<li>Kem dưỡng ẩm/dầu dưỡng</li>
</ol>

<h2>N&acirc;ng cao</h2>

<p>Nếu bạn lo lắng về c&aacute;c dấu hiệu l&atilde;o h&oacute;a hoặc b&ugrave;ng ph&aacute;t mụn, chu tr&igrave;nh chăm s&oacute;c da n&acirc;ng cao n&agrave;y l&agrave; những g&igrave; bạn cần. N&oacute; bao gồm c&aacute;c phương ph&aacute;p điều trị tập trung được x&acirc;y dựng dựa tr&ecirc;n nền tảng của chu tr&igrave;nh chăm s&oacute;c da cơ bản để điều trị c&aacute;c mối quan t&acirc;m chăm s&oacute;c da c&aacute; nh&acirc;n của bạn, chẳng hạn như mụn trứng c&aacute;, c&aacute;c vết đỏ, nếp nhăn, tổn thương từ &aacute;nh nắng mặt trời, vết th&acirc;m, hoặc bệnh rosacea.</p>

<p>Chu tr&igrave;nh chăm s&oacute;c da n&acirc;ng cao: S&Aacute;NG</p>

<ol>
	<li>Sữa rửa mặt</li>
	<li>Toner</li>
	<li>Đặc trị</li>
	<li><a href="https://happyskin.vn/glossary/serum/">Serum</a></li>
	<li>Kem mắt</li>
	<li>Kem dưỡng ẩm</li>
	<li>Kem chống nắng</li>
</ol>

<p>Chu tr&igrave;nh chăm s&oacute;c da n&acirc;ng cao: TỐI</p>

<ol>
	<li>Tẩy trang</li>
	<li>Sữa rửa mặt</li>
	<li>Toner</li>
	<li>Tẩy tế b&agrave;o chết (<a href="https://happyskin.vn/glossary/bha/">BHA</a>,&nbsp;<a href="https://happyskin.vn/glossary/aha/">AHA</a>)</li>
	<li>Đặc&nbsp;trị</li>
	<li><a href="https://happyskin.vn/glossary/serum/">Serum</a></li>
	<li>Kem mắt</li>
	<li>Kem dưỡng ẩm/dầu dưỡng</li>
</ol>

<h2>D&ugrave;ng retinol ở bước n&agrave;o?</h2>

<p>Trong quy tr&igrave;nh n&acirc;ng cao, c&oacute; nhiều bạn hỏi n&ecirc;n d&ugrave;ng&nbsp;<a href="https://happyskin.vn/glossary/retinol/">retinol</a>&nbsp;ở bước n&agrave;o? Thực tế&nbsp;<a href="https://happyskin.vn/glossary/retinol/">retinol</a>&nbsp;c&oacute; thể d&ugrave;ng ở bất k&igrave; bước n&agrave;o ngay sau toner, tuy nhi&ecirc;n t&ugrave;y v&agrave;o khả năng chịu đựng của da để chọn thứ tự. Nếu da khỏe, bạn c&oacute; thể d&ugrave;ng sau toner; c&ograve;n da nhạy cảm c&oacute; thể d&ugrave;ng sau&nbsp;<a href="https://happyskin.vn/glossary/serum/">serum</a>&nbsp;hoặc thậm ch&iacute; l&agrave; sau kem dưỡng để giảm sự k&iacute;ch ứng. Một c&acirc;u hỏi nữa Happy Skin rất hay nhận được đ&oacute; l&agrave; d&ugrave;ng&nbsp;<a href="https://happyskin.vn/glossary/retinol/">retinol</a>&nbsp;v&agrave; da bị bong tr&oacute;c, lời khuy&ecirc;n cho bạn l&agrave; dưỡng ẩm, dưỡng ẩm thật kỹ v&agrave; đều đặn, đồng thời giảm tần suất d&ugrave;ng&nbsp;<a href="https://happyskin.vn/glossary/retinol/">retinol</a>&nbsp;lại.</p>

<h2>D&ugrave;ng mặt nạ ở bước n&agrave;o?</h2>

<p>Ngo&agrave;i ra, 1 tuần bạn c&oacute; thể d&ugrave;ng mặt nạ l&agrave;m sạch (b&ugrave;n, đất s&eacute;t, than hoạt t&iacute;nh) từ 1-2 lần, d&ugrave;ng ngay sau bước sữa rửa mặt. Ri&ecirc;ng c&aacute;c loại mặt nạ dưỡng th&igrave; 2-3 lần 1 tuần, d&ugrave;ng sau sữa rửa mặt với c&aacute;c sản phẩm phải rửa; v&agrave; sau toner nếu mặt nạ kh&ocirc;ng cần rửa lại.</p>

<p>Lời kết, m&igrave;nh chỉ xin nhấn mạnh 2 điều quan trọng: thứ nhất h&atilde;y hiểu r&otilde; da trước khi chọn d&ugrave;ng sản phẩm, đừng v&igrave; review khen tốt l&agrave; mua d&ugrave;ng, da mỗi người mỗi kh&aacute;c, tốt với bạn n&agrave;y nhưng ho&agrave;n to&agrave;n c&oacute; thể l&agrave; xấu với bạn. Thứ 2, lu&ocirc;n nhớ &ldquo;dục tốc bất đạt&rdquo;, dưỡng da l&agrave; một h&agrave;nh tr&igrave;nh d&agrave;i v&agrave; đ&ograve;i hỏi sự ki&ecirc;n tr&igrave;, đừng n&oacute;ng vội m&agrave; sử dụng qu&aacute; nhiều sản phẩm, hay nồng độ qu&aacute; cao, da kh&ocirc;ng những kh&ocirc;ng đẹp l&ecirc;n m&agrave; c&ograve;n c&oacute; thể chuyển biến ti&ecirc;u cực như dị ứng, breackout, nhạy cảm.</p>
', CAST(N'2021-03-23T09:58:37.843' AS DateTime), 1)
INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (3, N'Review 6 sản phẩm Kem chống nắng L’Oréal Paris UV Perfect', N'3bb75bee-620a-4873-a610-6cc6bbdf1d27.jpg', N'43dcde9e-a847-4df4-acf3-5c13b72c1ed5.jpg', N'<h2><strong>I &ndash; Th&ocirc;ng tin về thương hiệu L&rsquo;Or&eacute;al Paris</strong></h2>

<p><img alt="thương hiệu L’Oréal Paris" src="https://tudienlamdep.org/wp-content/uploads/2019/09/lorealparis.jpg" style="height:389px; width:600px" /></p>

<p>Với bề dầy lịch sử hơn 100 năm ph&aacute;t triển, L&rsquo;Or&eacute;al Paris l&agrave; Tập đo&agrave;n h&agrave;ng đầu thế giới về mỹ phẩm. Đ&acirc;y l&agrave; Tập đo&agrave;n chỉ kinh doanh v&agrave;o một ng&agrave;nh duy nhất. Ch&iacute;nh nhờ tập trung nguồn lực n&ecirc;n L&rsquo;Or&eacute;al Paris đ&atilde; kh&ocirc;ng ngừng mở rộng c&aacute;c d&ograve;ng sản phẩm từ chăm s&oacute;c da, t&oacute;c đến trang điểm. Hiện nay, C&ocirc;ng ty đ&atilde; c&oacute; đến 28 thương hiệu quốc tế được người ti&ecirc;u d&ugrave;ng tr&ecirc;n khắp thế giới ưa chuộng.</p>

<p><img alt="Các thương hiệu thuộc tập đoàn L''Oréal Paris" src="https://tudienlamdep.org/wp-content/uploads/2019/09/loreal_brands.jpg" style="height:224px; width:600px" /></p>

<p><em>C&aacute;c thương hiệu thuộc tập đo&agrave;n L&rsquo;Or&eacute;al Paris</em></p>

<p>Được sản xuất tr&ecirc;n nền tảng d&acirc;y chuyền c&ocirc;ng nghệ hiện đại c&ugrave;ng c&ocirc;ng thức độc đ&aacute;o, sản phẩm của L&rsquo;Or&eacute;al Paris đạt chất lượng cao, dễ sử dụng v&agrave; mức gi&aacute; ph&ugrave; hợp, đ&aacute;p ứng được nhu cầu l&agrave;m đẹp của phụ nữ khắp 5 ch&acirc;u.</p>

<p>Được vinh danh l&agrave; tập đo&agrave;n mỹ phẩm điển h&igrave;nh của thế kỷ 21, L&rsquo;Or&eacute;al Paris nỗ lực kh&ocirc;ng ngừng để đạt mục ti&ecirc;u ph&aacute;t triển bền vững. Nhờ thế, đến nay h&atilde;ng đ&atilde; c&oacute; mặt tr&ecirc;n 130 quốc gia.</p>

<p>V&agrave;o giữa năm 2007, Tập đo&agrave;n mỹ phẩm n&agrave;y đ&atilde; ch&iacute;nh thức c&oacute; chi nh&aacute;nh tại Việt Nam, đ&aacute;p ứng nhu cầu chăm s&oacute;c vẻ đẹp to&agrave;n diện của phụ nữ Việt.&nbsp;</p>

<h2><strong>II &ndash; Kem chống nắng L&rsquo;Or&eacute;al Paris c&oacute; g&igrave; đặc biệt?</strong></h2>

<p><img alt="Kem chống nắng L’Oréal Paris" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-review.jpg" style="height:397px; width:600px" /></p>

<p>Trước h&agrave;ng chục thương hiệu kem chống nắng kh&aacute;c nhau th&igrave; sản phẩm của&nbsp;L&rsquo;Or&eacute;al Paris kh&ocirc;ng hề bị l&eacute;p vế cho d&ugrave; đ&acirc;y chỉ l&agrave;&nbsp;<a href="https://tudienlamdep.org/kem-chong-nang/gia-re-binh-dan-tren-duoi-100-nghin/" rel="noopener" target="_blank">kem chống nắng gi&aacute; b&igrave;nh d&acirc;n</a>. Điều ấy l&agrave; bởi c&ocirc;ng nghệ độc quyền Meroxyl của thương hiệu.</p>

<p>M&agrave;ng lọc Mexoryl độc quyền của L&rsquo;Oreal Paris gồm 2 hoạt chất h&oacute;a học l&agrave;&nbsp;Mexoryl SX v&agrave; Mexoryl XL. Ch&uacute;ng c&oacute; hiệu quả cao trong việc chống lại tia UV. D&ugrave; mới được FDA chấp nhận mức độ an to&agrave;n trong sử dụng v&agrave;o năm 2006 nhưng Mexoryl SX/XL đ&atilde; được ứng dụng nhiều trong kem chống nắng tại Ch&acirc;u &Acirc;u, Canada từ 1990 như&nbsp;<strong><a href="https://tudienlamdep.org/kem-chong-nang/la-roche-posay-review/" rel="noopener" target="_blank">kem chống nắng La Roche Posay</a></strong>&nbsp;hay&nbsp;<strong><a href="https://tudienlamdep.org/kem-chong-nang/vichy-ideal-soleil/" rel="noopener" target="_blank">Vichy Ideal Soleil</a></strong>(Ph&aacute;p)<strong>,&nbsp;<a href="https://tudienlamdep.org/kem-chong-nang/kiehls-uv-defense/" rel="noopener" target="_blank">kem chống nắng Kiehl&rsquo;s</a>&nbsp;</strong>(Mỹ)</p>

<p>Như bạn biết, bước s&oacute;ng của UVB l&agrave;&nbsp;280 &ndash; 320nm v&agrave; UVA l&agrave;&nbsp;320 &ndash; 400nm. Trong khi đ&oacute;, bước s&oacute;ng của&nbsp;Mexoryl SX l&agrave; 290 &ndash; 390nm v&agrave;&nbsp;Mexoryl XL l&agrave; 290&nbsp;&ndash; 370 nm.&nbsp;Như vậy c&oacute; thể thấy, 2 th&agrave;nh phần n&agrave;y đ&atilde; gần đạt đến độ ho&agrave;n hảo trong việc cản ph&aacute; tia UV. (thực tế hiện nay, với bước s&oacute;ng 380nm &ndash; 400nm chỉ c&oacute; Avobenzone, Tinosorb M tối ưu nhất v&agrave; rất &iacute;t KCN c&oacute; thể cover được to&agrave;n dải s&oacute;ng).</p>

<p>Một điểm đặc biệt kh&aacute;c của m&agrave;ng lọc Mexoryl l&agrave; &iacute;t hoặc kh&ocirc;ng hấp thụ qua da. Từ đ&oacute;, sản phẩm sẽ an to&agrave;n ngay cả với l&agrave;n da nhạy cảm.</p>

<p>Cuối c&ugrave;ng, m&agrave;ng lọc Mexoryl cực kỳ ổn định dưới s&aacute;ng.</p>

<blockquote>
<p>Nh&igrave;n chung, đặc điểm của m&agrave;ng lọc Mexoryl l&agrave; bảo vệ da tốt, ổn định,&nbsp;k&eacute;o d&agrave;i thời gian chống nắng,&nbsp;kh&ocirc;ng l&agrave;m l&ecirc;n tone da,&nbsp;,&nbsp;kh&ocirc;ng g&acirc;y k&iacute;ch ứng, an to&agrave;n với da nhạy cảm</p>
</blockquote>

<h2><strong>III &ndash; Review: Kem chống nắng L&rsquo;Or&eacute;al Paris c&oacute; tốt kh&ocirc;ng?</strong></h2>

<p>L&rsquo;Or&eacute;al Paris c&oacute; tổng cộng 4 d&ograve;ng KCN. B&agrave;i viết n&agrave;y TuDienLamDep sẽ review đầy đủ 4 d&ograve;ng KCN của thương hiệu.</p>

<h3><strong>1. Kem chống nắng L&rsquo;Or&eacute;al Paris UV Perfect Instant White SPF50 PA+++</strong></h3>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Instant White SPF50 | PA+++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-instant-white-review-2.jpg" style="height:418px; width:600px" /></p>

<h4><strong>1.1. Th&agrave;nh phần</strong></h4>

<p>Đầu ti&ecirc;n, h&atilde;y c&ugrave;ng x&eacute;t&nbsp;<strong>m&agrave;ng lọc UV</strong>&nbsp;để xem khả năng bảo vệ của sản phẩm:</p>

<blockquote>
<p><strong>UV Filter:&nbsp;Titanium Dioxide [Nano]/ Titanium Dioxide, Octocrylene, Mexoryl XL, Avobenzone, Uvinul T150, Mexoryl XS</strong></p>
</blockquote>

<p>M&agrave;ng lọc chống nắng của sản phẩm n&agrave;y kh&aacute; đỉnh. Đầu ti&ecirc;n l&agrave; TiO2 ở dạng Nano gi&uacute;p tăng hiệu quả chống nắng v&agrave; tăng t&iacute;nh thẩm mỹ (giảm sự trắng phớ của dạng Non-nano). Octocrylene v&agrave; Uvinul T150 đều l&agrave; c&aacute;c hoạt chất chống UVB tối ưu nhất tr&ecirc;n thị trường hiện nay. M&agrave;ng lọc UVA c&oacute; cặp đ&ocirc;i Mexoryl XL/XS chống UVA tối ưu c&ugrave;ng Avobenzone vượt trội ở phổ 380nm-400nm gi&uacute;p sản phẩm chống nắng phổ rộng m&agrave; &iacute;t KCN cover được.</p>

<p>Nh&igrave;n chung, với m&agrave;ng lọc UV n&agrave;y c&ugrave;ng chỉ số SPF50 PA+++, bạn ho&agrave;n to&agrave;n c&oacute; thể tin tưởng ở khả năng bảo vệ của sản phẩm. Sản phẩm sẽ tạo&nbsp;lớp bảo vệ tối ưu, lọc tia UV tốt nhất, đảm bảo kh&ocirc;ng g&acirc;y hại cho l&agrave;n da.</p>

<p>Th&ecirc;m nữa, d&ograve;ng n&agrave;y bổ sung Vitamin Cg cho da s&aacute;ng v&agrave; đồng đều. Một loạt acid b&eacute;o&nbsp;(stearic acid, panmitic acid&hellip;) c&ugrave;ng cồn b&eacute;o&nbsp;(butylene glycol, benzyl alcohol&hellip;) c&oacute; hiệu quả t&iacute;ch cực trong việc cung cấp dưỡng ẩm cho da. (cồn b&eacute;o c&oacute; lợi cho da c&ograve;n cồn kh&ocirc; mới g&acirc;y hại nh&eacute; bạn)</p>

<h4><strong>1.2. C&ocirc;ng dụng:</strong></h4>

<ul>
	<li>Bảo vệ khỏi t&aacute;c hại của tia UV v&agrave; m&ocirc;i trường &ocirc; nhiễm.</li>
	<li>Gi&uacute;p đẩy l&ugrave;i t&igrave;nh trạng đốm n&acirc;u, vết th&acirc;m n&aacute;m, t&igrave;nh trạng sạm da v&agrave; l&atilde;o h&oacute;a.</li>
	<li>Dưỡng da trắng s&aacute;ng, gi&uacute;p l&agrave;m đều m&agrave;u da.</li>
</ul>

<h4><strong>1.3. Bao b&igrave;, texture:</strong></h4>

<p><strong>Bao b&igrave;:</strong></p>

<p>Sản phẩm c&oacute; bao b&igrave; m&agrave;u hồng pastel, l&agrave;m bằng nhựa, phần nắp bằng nhựa cứng m&agrave;u trắng. Phần nắp kh&aacute; chắc chắn. Thiết kế tu&yacute;p kem nhỏ nhắn n&ecirc;n bạn thoải m&aacute;i để trong t&uacute;i x&aacute;ch m&agrave; kh&ocirc;ng lo ngại kem bị nh&acirc;y ra ngo&agrave;i.</p>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Instant White review" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-instant-white-review.jpg" style="height:600px; width:600px" /></p>

<p>Đầu tu&yacute;p nhỏ, gi&uacute;p dễ d&agrave;ng lấy đủ kem v&agrave; kh&ocirc;ng l&atilde;ng ph&iacute;.&nbsp;N&oacute;i chung, theo m&igrave;nh thiết kế ổn.</p>

<p><strong>Texture:</strong></p>

<p>Kết cấu kem dạng sữa, mỏng v&agrave; c&oacute; m&agrave;u hồng nhạt. Khi test thử th&igrave; thấy lớp finish s&aacute;ng nhẹ nhưng nh&igrave;n vẫn tự nhi&ecirc;n. V&igrave; thế, bạn n&agrave;o da ngăm cũng kh&ocirc;ng sợ kem bị lộ nh&eacute;. Bề mặt da sau khi thoa kem c&oacute; b&oacute;ng nhẹ v&agrave; ch&uacute;t &iacute;t nhờn. Tuy nhi&ecirc;n t&igrave;nh trạng n&agrave;y sẽ mất đi sau 1 &ndash; 2 ph&uacute;t.&nbsp;</p>

<p><img alt="texture Kem chống nắng L’Oréal Paris UV Perfect Instant White SPF50 | PA+++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-instant-white-review-3.jpg" style="height:547px; width:600px" /></p>

<p>Sản phẩm c&oacute; m&ugrave;i thơm nhẹ v&agrave; b&aacute;m hơi l&acirc;u.</p>

<h4><strong>1.4. Cảm nhận:</strong></h4>

<p>Khi apply em ấy l&ecirc;n da mặt th&igrave; cảm gi&aacute;c vẫn giống như l&uacute;c test. Tone da kh&ocirc;ng thay đổi, nh&igrave;n c&oacute; s&aacute;ng ch&uacute;t nhưng kiểu tự nhi&ecirc;n. C&oacute; b&oacute;ng nhẹ, nhờn v&agrave; cũng nhanh ch&oacute;ng biến mất.&nbsp;<a href="https://tudienlamdep.org/kem-chong-nang/trang-diem-thay-kem-nen/" rel="noopener" target="_blank">Kem chống nắng gi&uacute;p che bớt khuyết điểm</a>&nbsp;nhẹ n&ecirc;n c&oacute; thể d&ugrave;ng l&agrave;m lớp l&oacute;t cũng ok.</p>

<p>Khả năng kiềm dầu d&ograve;ng n&agrave;y ở mức trung b&igrave;nh. V&ugrave;ng chữ T vẫn sẽ đổ dầu sau v&agrave;i giờ.</p>

<p><strong>Đ&aacute;nh gi&aacute;:</strong></p>

<p><strong>Ưu điểm:</strong></p>

<ul>
	<li>Thiết kế nhỏ gọn, nắp chắc chắn, dễ mang theo.</li>
	<li>M&agrave;u hồng nữ t&iacute;nh.</li>
	<li>Kem thấm nhanh.</li>
	<li>Bảng th&agrave;nh phần được xem l&agrave; tạm đẹp.</li>
	<li>Gi&aacute; b&igrave;nh d&acirc;n</li>
</ul>

<p><strong>Nhược điểm:</strong></p>

<ul>
	<li>M&ugrave;i nh&acirc;n tạo.</li>
	<li>Khả năng kiềm dầu chưa tốt.</li>
</ul>

<p><a href="https://go.isclix.com/deep_link/5028712634842682869/5127144557053758578?url=https%3A%2F%2Fwww.lazada.vn%2Fproducts%2Fkem-chong-nang-bao-ve-duong-da-trang-sang-tuc-thi-loreal-uv-perfect-rosyinstant-white-spf50-pa-30ml-i258028288-s357407044.html" rel="noopener nofollow" target="_blank" title="">Xem Gi&aacute; tr&ecirc;n Lazada</a><a href="https://shopee.prf.hn/click/camref:1100l7UI2/adref:/pubref:/destination:https%3A%2F%2Fshopee.vn%2Funiversal-link%2Fp-i.37251933.2666071457" rel="noopener nofollow" target="_blank" title="">Xem Gi&aacute; tr&ecirc;n Shopee</a></p>

<h3><strong>2. Kem chống nắng L&rsquo;Or&eacute;al Paris UV Perfect BB Max SPF50 PA+++</strong></h3>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect BB Max SPF50 | PA+++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-bb-max.jpg" style="height:340px; width:537px" /></p>

<h4><strong>2.1. Th&agrave;nh phần</strong></h4>

<blockquote>
<p><strong>UV Filter:&nbsp;</strong>Octinoxate, Mexoryl XL, TiO2, Mexoryl XS, Uvinul A+, Tinosorb S</p>
</blockquote>

<p>Ngo&agrave;i sử dụng m&agrave;ng lọc Mexoryl độc quyền, d&ograve;ng n&agrave;y sử dụng th&ecirc;m Octinoxate chống UVB kh&aacute; tốt. M&agrave;ng lọc UVA c&oacute; Tinosorb S với khả năng bảo vệ h&agrave;ng đầu thị trường. Uvinul A+ cũng được bổ sung tăng khả năng bảo vệ UVA1. Th&ecirc;m nữa, d&ograve;ng n&agrave;y c&ograve;n chứa TiO2 dạng non-nano với khả năng bảo vệ đồng đều dải s&oacute;ng.</p>

<p>D&ograve;ng n&agrave;y c&oacute; chỉ số chống nắng giống d&ograve;ng tr&ecirc;n l&agrave; SPF50 PA+++. Nh&igrave;n chung, m&agrave;ng lọc UV của em n&agrave;y rất tốt rồi n&ecirc;n bạn c&oacute; thể y&ecirc;n t&acirc;m.</p>

<p>Ngo&agrave;i ra, d&ograve;ng n&agrave;y chứa nhiều th&agrave;nh phần dưỡng ẩm như&nbsp;Glycerin,&nbsp;Propylene Glycol, Butylene Glycol, Caprylyl Glycol, Mannitol, c&aacute;c loại cồn b&eacute;o,&hellip;</p>

<p>Th&ecirc;m nữa, Detoxyl l&agrave; th&agrave;nh phần chống &ocirc; nhiễm nổi tiếng cũng được th&ecirc;m v&agrave;o. Detoxyl gi&uacute;p chống lại sự x&acirc;m nhập của bụi bẩn carbon cũng như c&aacute;c t&aacute;c nh&acirc;n m&ocirc;i trường c&oacute; hại kh&aacute;c.</p>

<p>Cuối c&ugrave;ng l&agrave; phức hợp chống oxy h&oacute;a, bảo vệ da khỏi gốc tự do g&acirc;y hại.</p>

<h4><strong>2.2. C&ocirc;ng dụng:</strong></h4>

<ul>
	<li>Bảo vệ da chống lại tia UV nhờ m&agrave;ng lọc UV đỉnh</li>
	<li>Chống oxy h&oacute;a, l&agrave;m tăng độ đ&agrave;n hồi cho da v&agrave; k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh sản sinh collagen.</li>
	<li>Che khuyết điểm v&agrave; gi&uacute;p da lu&ocirc;n tươi tắn.</li>
</ul>

<h4><strong>2.3. Bao b&igrave;, texture:</strong></h4>

<p><strong>Bao b&igrave;:</strong></p>

<p>Thiết kế tu&yacute;p kem nhựa dẹt, nhỏ gọn, thuận tiện mang theo khi đi du lịch hoặc đi học, đi l&agrave;m. Nắp vặn chắn chắn v&agrave; kh&ocirc;ng lo kem bị tr&agrave;n ra khi để trong t&uacute;i x&aacute;ch.</p>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect BB Max review" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-bb-max.jpg" style="height:340px; width:537px" /><img alt="phần nắp Kem chống nắng L’Oréal Paris UV Perfect BB Max" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-aqua-essence-spf-50-2.jpg" style="height:361px; width:537px" /></p>

<p>Đầu lấy kem nhỏ, n&ecirc;n bạn dễ d&agrave;ng canh chỉnh lượng kem khi sử dụng. Đặc biệt, đầu lấy kem rất dễ vệ sinh v&agrave; kh&ocirc;ng lo bị bẩn.</p>

<p><strong>Texture:</strong></p>

<p>Kem c&oacute; kết cấu dạng sữa, mềm mịn v&agrave; dễ t&aacute;n đều tr&ecirc;n da. Lớp finish mới b&ocirc;i xong sẽ thấy l&ecirc;n tone da một ch&uacute;t, nhưng đợi v&agrave;i ph&uacute;t l&agrave; tệp với m&agrave;u da. V&agrave; bạn n&agrave;o da ngăm ngăm cũng kh&ocirc;ng ngại bị lộ kem khi sử dụng.&nbsp;</p>

<h4><strong>2.4. Cảm nhận:</strong></h4>

<p>Khi apply l&ecirc;n da, th&igrave; kem thẩm thấu nhanh v&agrave; kh&ocirc;ng g&acirc;y bết d&iacute;nh. Lớp finish c&oacute; s&aacute;ng l&ecirc;n, nhưng sau đ&oacute; sẽ tệp m&agrave;u da n&ecirc;n kh&ocirc;ng khiến mặt bị &ldquo;biến đổi&rdquo; qu&aacute; đ&acirc;u.</p>

<p>Về khả năng chống nắng th&igrave; em n&agrave;y kh&aacute; ổn, tuy nhi&ecirc;n khả năng kiềm dầu ở mức trung b&igrave;nh. Do vậy, sản phẩm ph&ugrave; hợp hơn với da thường, da kh&ocirc;.&nbsp;</p>

<p>Th&ecirc;m nữa, d&ograve;ng n&agrave;y c&oacute; thể che được c&aacute;c khuyết điểm nhẹ như vết th&acirc;m mờ. Đối với c&aacute;c vết th&acirc;m lớn hơn th&igrave; kem gần như kh&ocirc;ng c&oacute; nhiều t&aacute;c dụng.</p>

<p><strong>Đ&aacute;nh gi&aacute;:</strong></p>

<p><strong>Ưu điểm:</strong></p>

<ul>
	<li>M&agrave;ng lọc UV đỉnh</li>
	<li>Thiết kế nhỏ, gọn, chỗ lấy kem tiện dụng, vệ sinh.</li>
	<li>Bảng th&agrave;nh phần kh&aacute; đẹp.</li>
	<li>Kem thấm nhanh.</li>
	<li>Lớp finish tệp m&agrave;u da.</li>
	<li>Ph&ugrave; hợp cho da kh&ocirc; v&agrave; da thường.</li>
	<li>Che khuyết điểm nhỏ.</li>
	<li>Gi&aacute; mềm.</li>
	<li>C&oacute; khả năng cover vết th&acirc;m nhỏ</li>
</ul>

<p><strong>Nhược điểm:</strong></p>

<ul>
	<li>Khả năng kiềm dầu trung b&igrave;nh</li>
</ul>

<h3><strong>3. Kem chống nắng L&rsquo;Or&eacute;al Paris UV Perfect Aqua Essence SPF50+ PA++++</strong></h3>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Aqua Essence SPF50+ PA++++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-aqua-essence-spf-50.jpg" style="height:405px; width:600px" /></p>

<h4><strong>3.1. Th&agrave;nh phần:</strong></h4>

<blockquote>
<p><strong>UV Filter:&nbsp;</strong>Uvinul T150, Tinosorb S, Uvinul A+, TiO2, Mexoryl XL</p>
</blockquote>

<p>Đặc trưng của m&agrave;ng lọc UV KCN L&rsquo;Oreal Paris l&agrave; m&agrave;ng lọc đều đỉnh cả. Sản phẩm sử dụng c&aacute;c hoạt chất quen thuộc, đ&atilde; ph&acirc;n t&iacute;ch ở tr&ecirc;n, bao gồm:</p>

<ul>
	<li>Uvinul T150: chống UVB tốt</li>
	<li>Tinosorb S v&agrave; Uvinul A+: bảo vệ UVA cực đỉnh</li>
	<li>TiO2: HCVL bảo vệ đồng đều tr&ecirc;n to&agrave;n dải s&oacute;ng</li>
	<li>Mexoryl XL &ndash; HCHH độc quyền của tập đo&agrave;n L&rsquo;Oreal.</li>
</ul>

<p>D&ograve;ng n&agrave;y c&ograve;n sự kết hợp của&nbsp;Adenosine v&agrave; Micronized. Đ&acirc;y&nbsp;l&agrave; 2 th&agrave;nh phần c&oacute; hiệu quả cao trong việc l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a, gi&uacute;p da mịn m&agrave;ng v&agrave; tăng độ đ&agrave;n hồi. Ngo&agrave;i ra, Micronized c&ograve;n l&agrave; một dạng kho&aacute;ng chất tự nhi&ecirc;n c&oacute; c&ocirc;ng dụng chống nắng nhờ v&agrave;o khả năng ngăn cản tia UV tối ưu.</p>

<p>Cuối c&ugrave;ng, sản phẩm bổ sung th&ecirc;m vitamin E v&agrave; Detoxyl. 2 th&agrave;nh phần n&agrave;y bảo vệ da chống lại t&aacute;c hại của c&aacute;c gốc tự do, &ocirc; nhiễm m&ocirc;i trường. Đồng thời, gi&uacute;p da trắng s&aacute;ng tự nhi&ecirc;n.</p>

<h4><strong>3.2. C&ocirc;ng dụng:</strong></h4>

<ul>
	<li>Tạo lớp m&agrave;ng chống nắng hiệu quả cho da.</li>
	<li>Cung cấp dưỡng chất gi&uacute;p da khỏe mạnh, chống lại sự l&atilde;o h&oacute;a.</li>
	<li>Gi&uacute;p da s&aacute;ng dần l&ecirc;n một c&aacute;ch tự nhi&ecirc;n.</li>
</ul>

<h4><strong>3.3. Bao b&igrave;, texture:</strong></h4>

<p><strong>Bao b&igrave;:</strong></p>

<p>Em n&agrave;y c&oacute; bao b&igrave; dẹt, được l&agrave;m từ nhựa, nắp vặn chắc chắn. Đầu lấy kem nhọn, dễ d&agrave;ng cho việc sử dụng v&agrave; vệ sinh.</p>

<p>Thiết kế bề ngo&agrave;i của em cũng tương đối b&igrave;nh d&acirc;n với m&agrave;u xanh pastel m&aacute;t mắt c&ugrave;ng nắp trắng.</p>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Aqua Essence review" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-aqua-essence-spf-50-review-2.jpg" style="height:413px; width:550px" /><img alt="Kem chống nắng L’Oréal Paris UV Perfect Aqua Essence review" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-aqua-essence-spf-50-review-3.jpg" style="height:550px; width:550px" /></p>

<p><strong>Texture:</strong></p>

<p>Kết cấu kem dạng sữa si&ecirc;u mỏng, mịn, m&agrave;u trắng ng&agrave;. Kem sẽ chuyển h&oacute;a th&agrave;nh nước khi tiếp x&uacute;c da n&ecirc;n thẩm thấu cực kỳ nhanh v&agrave; dễ t&aacute;n.</p>

<h4><strong>3.4. Cảm nhận:</strong></h4>

<p>Kem lỏng v&agrave; nhẹ n&ecirc;n dễ t&aacute;n đều tr&ecirc;n da. Sản phẩm m&ugrave;i nh&egrave; nhẹ, kh&ocirc;ng mang hương đặc trưng. Lớp finish hơi b&oacute;ng, kh&ocirc;ng tạo vệt trắng. Tuy nhi&ecirc;n, khi apply thấy hơi r&iacute;t. Sau khoảng 5p th&igrave; cảm gi&aacute;c n&agrave;y sẽ kh&ocirc;ng c&ograve;n.</p>

<p><img alt="texture Kem chống nắng L’Oréal Paris UV Perfect Aqua Essence SPF50+ PA++++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-aqua-essence-spf-50-review.jpg" style="height:531px; width:600px" /></p>

<p>Do lớp finish hơi b&oacute;ng n&ecirc;n da dầu v&agrave; da ngăm sẽ kh&ocirc;ng ưng em n&agrave;y lắm đ&acirc;u. Kiểu như đ&atilde; b&aacute;nh mật lại c&ograve;n b&oacute;ng dầu ấy. Th&ecirc;m nữa, d&ograve;ng n&agrave;y cũng kiềm dầu kh&ocirc;ng tốt.</p>

<p>Độ che phủ của d&ograve;ng n&agrave;y kh&aacute; tốt, c&oacute; khả năng cover được c&aacute;c vết th&acirc;m nhỏ đấy.</p>

<p><strong>Đ&aacute;nh gi&aacute;:</strong></p>

<p><strong>Ưu điểm:</strong></p>

<ul>
	<li>Chống nắng hiệu quả.</li>
	<li>C&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a v&agrave; dưỡng da trắng nhẹ.</li>
	<li>Gi&aacute; mềm.</li>
</ul>

<p><strong>Nhược điểm:</strong></p>

<ul>
	<li>Lớp finish b&oacute;ng v&agrave; hơi r&iacute;t.</li>
	<li>Khả năng kiềm dầu trung b&igrave;nh</li>
</ul>

<p><a href="https://go.isclix.com/deep_link/5028712634842682869/5127144557053758578?url=https%3A%2F%2Fwww.lazada.vn%2Fproducts%2Fkem-chong-nang-bao-ve-duong-da-loreal-paris-uv-perfect-spf50-pa-30ml-i259411331-s361895801.html" rel="noopener nofollow" target="_blank" title="">Xem Gi&aacute; tr&ecirc;n Lazada</a><a href="https://shopee.prf.hn/click/camref:1100l7UI2/adref:/pubref:/destination:https%3A%2F%2Fshopee.vn%2Funiversal-link%2Fp-i.37251933.2666071457" rel="noopener nofollow" target="_blank" title="">Xem Gi&aacute; tr&ecirc;n Shopee</a></p>

<h3><strong>4. Kem chống nắng L&rsquo;Or&eacute;al Paris UV Perfect Matte &amp; Fresh SPF50+ PA++++</strong></h3>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Matte &amp; Fresh SPF50+ PA++++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-matte-fresh-spf50.jpg" style="height:379px; width:600px" /></p>

<h4><strong>4.1. Th&agrave;nh phần:</strong></h4>

<blockquote>
<p><strong>UV Filter:&nbsp;</strong>Octisalate, Mexoryl XS, TiO2, Mexoryl XL,&nbsp;Ensulizole, Octocrylene, Uvinul T150, Avonbenzone</p>
</blockquote>

<p>D&ograve;ng n&agrave;y c&oacute; chỉ số chống nắng cao v&agrave; chứa nhiều hoạt chất chống nắng nhất trong cả 4 d&ograve;ng. M&agrave;ng lọc Mexoryl độc quyền c&ugrave;ng TiO2,&nbsp;Octocrylene, Uvinul T150, Avonbenzone đ&atilde; ph&acirc;n t&iacute;ch hết ở tr&ecirc;n. Ngo&agrave;i ra d&ograve;ng n&agrave;y c&ograve;n chứa&nbsp;Octisalate v&agrave;&nbsp;Ensulizole ổn định hoạt chất v&agrave; tăng khả năng chống nắng cho sản phẩm.</p>

<p>B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n chứa th&agrave;nh phần dưỡng ẩm, chăm s&oacute;c da chuy&ecirc;n s&acirc;u từ chiết xuất thảo dược kết hợp đất s&eacute;t gi&uacute;p l&agrave;m sạch da từ s&acirc;u b&ecirc;n trong, loại bỏ chất nhờn, se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.</p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, vitamin E c&oacute; trong kem chống nắng gi&uacute;p chống lại qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a, t&aacute;i tạo tế b&agrave;o da, mang đến một l&agrave;n da căng mịn, tăng độ đ&agrave;n hồi.</p>

<p>Điểm trừ l&agrave; sản phẩm c&oacute; chứa Alcohol Denat</p>

<h4><strong>4.2. C&ocirc;ng dụng:</strong></h4>

<ul>
	<li>Chống nắng hiệu quả cho da nhờn v&agrave; da bị mụn với m&agrave;ng lọc phổ quang rộng.&nbsp;</li>
	<li>Dưỡng ẩm cho da, kiểm so&aacute;t b&atilde; nhờn, đồng thời, ngăn ngừa c&aacute;c vết sạm, n&aacute;m do tia UV.</li>
	<li>Gi&uacute;p da sạch v&agrave; khỏe từ b&ecirc;n trong.</li>
</ul>

<h4><strong>4.3. Bao b&igrave;, texture:</strong></h4>

<p><strong>Bao b&igrave;:</strong></p>

<p>Bao b&igrave; l&agrave;m từ nhựa, c&oacute; m&agrave;u xanh l&aacute; c&acirc;y m&aacute;t mắt. Nắp hộp m&agrave;u trắng v&agrave; chắc chắn như những d&ograve;ng kem chống nắng kh&aacute;c của L&rsquo;Or&eacute;al Paris. Tổng quan về thiết kế th&igrave; em n&agrave;y cũng b&igrave;nh d&acirc;n.</p>

<p><img alt="Kem chống nắng L’Oréal Paris UV Perfect Matte &amp; Fresh review" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-matte-fresh-spf50-2.jpg" style="height:800px; width:600px" /></p>

<p><strong>Texture:</strong></p>

<p>Kem c&oacute; kết cấu dạng sữa, mịn, nhẹ, m&agrave;u trắng pha ch&uacute;t xanh. Khi thoa l&ecirc;n da th&igrave; thấm rất nhanh v&agrave; kh&ocirc;ng g&acirc;y nhờn r&iacute;t hay b&oacute;ng nhờn. D&ograve;ng n&agrave;y cũng kh&ocirc;ng tạo vệt trắng cho da mặt.</p>

<h4><strong>4.4. Cảm nhận:</strong></h4>

<p>Kem apply l&ecirc;n da thấm kh&aacute; nhanh v&agrave; kh&ocirc;ng tạo th&agrave;nh lớp b&oacute;ng nhờn hay r&iacute;t như em KCN L&rsquo;Oreal UV Perfect Aqua Essence. Lớp finish kh&ocirc;ng l&agrave;m l&ecirc;n tone da. Kem chứa Alcohol Denat n&ecirc;n cũng sẽ ngửi thấy m&ugrave;i cồn.</p>

<p><img alt="texture KCN L’Oréal Paris UV Perfect Matte &amp; Fresh SPF50+ PA++++" src="https://tudienlamdep.org/wp-content/uploads/2019/09/kem-chong-nang-loreal-uv-perfect-matte-fresh-spf50-texture.jpg" style="height:542px; width:600px" /></p>

<p>Em ấy c&oacute; t&aacute;c dụng chống nắng hiệu quả. Th&ecirc;m nữa l&agrave; khả năng kiềm dầu tốt n&ecirc;n rất th&iacute;ch hợp cho da nhờn hoặc da hỗn hợp bị mụn.&nbsp;</p>

<p>Ngo&agrave;i ra, do em n&agrave;y chứa nhiều silicones n&ecirc;n da sẽ tạo hiệu ứng mịn, mượt, lỗ ch&acirc;n l&ocirc;ng nhỏ đi. Về silicones trong KCN nhiều bạn nghĩ rằng sẽ b&iacute; da, l&ecirc;n mụn. Tuy nhi&ecirc;n, hầu như KCN n&agrave;o cũng chứa silicones v&igrave; silicones tăng khả năng chống nắng v&agrave; tăng t&iacute;nh thẩm mỹ. Bạn chỉ cần tẩy trang sạch sẽ l&agrave; kh&ocirc;ng lo l&ecirc;n mụn nh&eacute;. C&ograve;n nếu vẫn lo lắng, bạn c&oacute; thể xem b&agrave;i sau:</p>

<blockquote>
<p>Chi tiết:&nbsp;<strong><a href="https://tudienlamdep.org/kem-chong-nang/da-dau-mun/" rel="noopener" target="_blank">Note ngay 12 kem chống nắng cho da dầu mụn kiềm dầu tốt, kh&ocirc;ng breakout</a></strong></p>
</blockquote>

<p><strong>Đ&aacute;nh gi&aacute;:</strong></p>

<p><strong>Ưu điểm:</strong></p>

<ul>
	<li>Kem dễ thấm v&agrave;o da v&agrave; kh&ocirc;ng g&acirc;y nhờn r&iacute;t.</li>
	<li>T&aacute;c dụng chống nắng hiệu quả.</li>
	<li>Khả năng kiềm dầu tốt.</li>
	<li>Th&iacute;ch hợp cho da dầu v&agrave; da bị mụn.</li>
	<li>Bảng th&agrave;nh phần đẹp với c&aacute;c chất từ thi&ecirc;n nhi&ecirc;n.</li>
	<li>Gi&aacute; mềm</li>
</ul>

<p><strong>Nhược điểm:</strong></p>

<ul>
	<li>Chứa cồn kh&ocirc;, m&ugrave;i cồn hơi nồng.</li>
</ul>

<h2><strong>IV &ndash; Mua kem chống nắng L&rsquo;Or&eacute;al Paris ở đ&acirc;u? Gi&aacute; bao nhi&ecirc;u tiền?</strong></h2>

<p><img alt="L''Oreal Paris store" src="https://tudienlamdep.org/wp-content/uploads/2019/09/loreal-paris.jpg" style="height:364px; width:600px" /></p>

<p>C&aacute;c sản phẩm của L&rsquo;Or&eacute;al Paris rất dễ mua. Bạn c&oacute; thể mua tại c&aacute;c si&ecirc;u thị hay cửa h&agrave;ng mỹ phẩm. Hoặc tại website của Lyn&#39;s Cosmetics&nbsp;cũng c&oacute; b&aacute;n sản phẩm n&agrave;y.</p>

<p>Gi&aacute; kem chống nắng khoảng tr&ecirc;n dưới 150.000đ cho một sản phẩm 30ml</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; review 4 d&ograve;ng kem chống nắng của thương hiệu&nbsp;L&rsquo;Or&eacute;al&nbsp;Paris. Nếu bạn đ&atilde; từng trải nghiệm sản phẩm, h&atilde;y comment review lại cho Lyn&#39;s Cosmetics&nbsp;nh&eacute;.</p>

<p><a href="https://tudienlamdep.org/kem-chong-nang/loreal-paris/" rel="nofollow" target="_blank"><img alt="" src="https://tudienlamdep.org/kem-chong-nang/loreal-paris/" /></a></p>
', CAST(N'2021-03-23T10:01:33.047' AS DateTime), 1)
INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (4, N'5 cách ngăn ngừa mụn trứng cá trên mặt cực hiệu quả mà các bạn nữ nên biết', N'85fe0cc3-19b9-4f18-a1f8-a188f1b9ec3c.jpg', N'5f883f73-fc43-49f4-add7-796fbd5a4a66.jpg', N'<p>T&igrave;m c&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;tr&ecirc;n mặt hiệu quả lu&ocirc;n l&agrave; vấn đề kh&ocirc;ng chỉ chị em m&agrave; c&aacute;nh m&agrave;y r&acirc;u cũng v&ocirc; c&ugrave;ng quan t&acirc;m. Tuy nhi&ecirc;n, d&ugrave; bạn đ&atilde; thử nhiều c&aacute;ch nhưng mụn tr&ecirc;n mặt vẫn kh&ocirc;ng hề giảm đi. Bạn n&ecirc;n nhớ, để t&igrave;m được c&aacute;ch ngừa mụn hiệu quả, bạn cần hiểu r&otilde; về mụn tr&ecirc;n mặt. Khi biết r&otilde; về nguy&ecirc;n nh&acirc;n g&acirc;y mụn v&agrave; c&aacute;c giai đoạn ph&aacute;t triển của mụn, bạn sẽ t&igrave;m được c&aacute;ch trị mụn tận gốc. C&ugrave;ng t&igrave;m hiểu 5&nbsp;<strong>c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt</strong>&nbsp;hiệu quả ngay dưới đ&acirc;y:</p>

<p>Trước hết c&aacute;c bạn đ&atilde; biết Mụn l&agrave; g&igrave;? v&agrave; ph&acirc;n biệt c&aacute;c loại mụn chưa?</p>

<h2>Mụn l&agrave; g&igrave;?</h2>

<p>Tr&ecirc;n cơ thể c&oacute; h&agrave;ng trăm ng&agrave;n nang l&ocirc;ng. Nang l&ocirc;ng gi&uacute;p cơ thể b&agrave;i tiết mồ h&ocirc;i, b&atilde; nhờn, độc tố. Khi nội tiết tố thay đổi hay c&aacute;c yếu tố như m&ocirc;i trường, chế độ sinh hoạt t&aacute;c động sẽ khiến nang l&ocirc;ng tiết ra lượng b&atilde; nhờn nhiều hơn. Lượng b&atilde; nhờn c&ugrave;ng với tế b&agrave;o chết t&iacute;ch tụ sẽ g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng. Đ&acirc;y l&agrave; điều kiện để vi khuẩn sản sinh nơi lỗ ch&acirc;n l&ocirc;ng bị b&iacute;t tắc g&acirc;y n&ecirc;n mụn.</p>

<p><img alt="mụn trứng cá ở 2 bên má" src="https://acnes.com.vn/wp-content/uploads/2018/08/mun-trung-ca-tren-ma-1.jpg" style="height:467px; width:700px" /></p>

<p><em>Mụn trứng c&aacute; ở hai b&ecirc;n m&aacute;</em></p>

<h2>C&oacute; c&aacute;c loại mụn tr&ecirc;n mặt n&agrave;o?</h2>

<p>C&oacute; hai loại mụn tr&ecirc;n mặt thường gặp</p>

<ul>
	<li>Mụn kh&ocirc;ng vi&ecirc;m: Đ&acirc;y l&agrave; loại mụn c&oacute; nh&acirc;n mụn nhỏ, kh&ocirc;ng c&oacute; mủ. Mụn kh&ocirc;ng vi&ecirc;m kh&ocirc;ng g&acirc;y đau v&agrave; sưng đỏ. Ch&uacute;ng gồm c&oacute; mụn đầu đen,&nbsp;<a href="https://acnes.com.vn/tag/mun-dau-trang">mụn đầu trắng</a>.</li>
	<li>Mụn vi&ecirc;m: Khi mụn kh&ocirc;ng vi&ecirc;m kh&ocirc;ng thể tho&aacute;t ra b&ecirc;n ngo&agrave;i, ở lại b&ecirc;n trong nang l&ocirc;ng c&ugrave;ng với sự x&acirc;m nhập của vi khuẩn P.acnes g&acirc;y ra mụn vi&ecirc;m. Mụn vi&ecirc;m sẽ g&acirc;y cảm gi&aacute;c đau, sưng đỏ kh&oacute; chịu. Trị mụn vi&ecirc;m th&igrave; kh&oacute; hơn mụn kh&ocirc;ng vi&ecirc;m rất nhiều. Mụn vi&ecirc;m gồm:, mụn bọc, mụn nang, mụn mủ. Trong đ&oacute; mụn bọc l&agrave; loại mụn cứng đầu nhất.</li>
</ul>

<p>Sau khi t&igrave;m hiểu được mụn l&agrave; g&igrave; cũng như c&aacute;c loại mụn tr&ecirc;n da thường gặp . Bạn sẽ t&igrave;m ra c&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;tr&ecirc;n mặt ph&ugrave; hợp</p>

<p>C&aacute;c bạn xem th&ecirc;m b&agrave;i viết: &ldquo;<a href="https://acnes.com.vn/bi-quyet-tri-mun-dau-den-hieu-qua-tai-nha/">C&aacute;ch ngăn ngừa mụn đầu đen&rdquo;</a></p>

<h2>Vị tr&iacute; mụn tr&ecirc;n mặt n&oacute;i l&ecirc;n điều g&igrave; về cơ thể bạn?</h2>

<p>Mụn kh&ocirc;ng chỉ l&agrave; một bệnh ngo&agrave;i da. Mụn c&ograve;n n&oacute;i l&ecirc;n t&igrave;nh trạng sức khỏe của bạn. Khi mụn xuất hiện, bạn n&ecirc;n lưu &yacute; c&aacute;c vấn đề sau:</p>

<ul>
	<li>Mụn tr&ecirc;n mặt l&agrave; dấu hiệu của tuổi dậy th&igrave;, mang thai hay kỳ kinh nguyệt. Đ&acirc;y l&agrave; những giai đoạn hormone trong cơ thể thay đổi v&agrave; rối loạn.</li>
	<li>Mụn tr&ecirc;n mặt cảnh b&aacute;o về việc kh&ocirc;ng vệ sinh da sạch sẽ. Khi da kh&ocirc;ng được vệ sinh sạch sẽ, tế b&agrave;o chết v&agrave; bụi bẩn t&iacute;ch tụ tại lỗ ch&acirc;n l&ocirc;ng. Vi khuẩn g&acirc;y mụn được sản sinh v&agrave; mụn xuất hiện.</li>
	<li>Vị tr&iacute; mụn tr&ecirc;n mặt c&ograve;n l&agrave; dấu hiệu của bệnh tật. Khi mụn mọc tr&ecirc;n tr&aacute;n l&agrave; dấu hiệu của bệnh ti&ecirc;u h&oacute;a, mụn ở ấn đường l&agrave; dấu hiệu gan l&agrave;m việc qu&aacute; sức, mụn ở cằm b&aacute;o hiệu hormone thay đổi, mụn ở m&aacute; l&agrave; dấu hiệu bệnh h&ocirc; hấp.</li>
</ul>

<p><strong>Th&ocirc;ng điệp cơ thể qua c&aacute;c vị tr&iacute; mụn tr&ecirc;n mặt l&agrave; g&igrave;?</strong></p>

<h2>Nguy&ecirc;n nh&acirc;n g&acirc;y mụn v&agrave; c&aacute;c giai đoạn ph&aacute;t triển của mụn?</h2>

<h3>Nguy&ecirc;n nh&acirc;n g&acirc;y mụn</h3>

<p>Mụn c&oacute; rất nhiều nguy&ecirc;n nh&acirc;n. Th&ocirc;ng thường, mụn xuất hiện bởi c&aacute;c nguy&ecirc;n nh&acirc;n sau:</p>

<ul>
	<li>Rối loạn hormone dẫn đến qu&aacute; tr&igrave;nh cơ thể tiết ra nhiều chất nhờn g&acirc;y tắc nghẽn tại c&aacute;c lỗ ch&acirc;n l&ocirc;ng</li>
	<li>Sự t&iacute;ch tụ độc tố trong cơ thể: Khi ruột v&agrave; gan kh&ocirc;ng thể b&agrave;i tiết được hết c&aacute;c độc tố ở thực phẩm th&igrave; lượng độc tố đ&oacute; sẽ được b&agrave;i tiết qua lỗ ch&acirc;n l&ocirc;ng v&agrave; da dẫn đến g&acirc;y n&ecirc;n mụn</li>
	<li>Bị stress k&eacute;o d&agrave;i ảnh hưởng tới sự c&acirc;n bằng hormone. Điều n&agrave;y dẫn đến lượng dầu thừa tiết ra nhiều, tuyến b&atilde; nhờn hoạt động bị rối loạn</li>
	<li>Thiếu ngủ l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y mụn. Khi ngủ l&agrave; thời gian để cơ thể giải trừ độc tố, rất cần thiết cho sức khỏe. Việc bạn thiếu ngủ hay thức khuya sẽ khiến cơ thể t&iacute;ch tụ độc tố, g&acirc;y mụn</li>
	<li>Tiếp x&uacute;c với điện thoại v&agrave; m&aacute;y vi t&iacute;nh nhiều. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n nhiều bạn kh&ocirc;ng ngờ đến. &Aacute;nh s&aacute;ng từ điện thoại v&agrave; m&aacute;y vi t&iacute;nh sẽ g&acirc;y mụn tr&ecirc;n mặt khi tiếp x&uacute;c qu&aacute; nhiều</li>
	<li>Kh&ocirc;ng l&agrave;m sạch da đ&uacute;ng c&aacute;ch, t&iacute;ch tụ bụi bẩn v&agrave; vi khuẩn tr&ecirc;n da. Nguy&ecirc;n nh&acirc;n n&agrave;y thường thấy</li>
	<li>Yếu tố di truyền cũng quyết định đến việc bạn c&oacute; mụn hay kh&ocirc;ng. Khi bố mẹ bị mụn nhiều, con c&aacute;i sẽ c&oacute; nguy cơ bị mụn cao hơn</li>
</ul>

<p><img alt="lo lắng, lo âu cũng là nguyên nhân gây mụn" src="https://acnes.com.vn/wp-content/uploads/2018/08/lo-au-cang-thang.jpg" style="height:466px; width:700px" /></p>

<p><em>Lo &acirc;u v&agrave; căng thẳng cũng c&oacute; thể khiến bạn bị mụn</em></p>

<p>Biết được nguy&ecirc;n nh&acirc;n g&acirc;y mụn l&agrave; g&igrave;, bạn sẽ t&igrave;m được c&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;tr&ecirc;n mặt hiệu quả.</p>

<h3>C&aacute;c giai đoạn ph&aacute;t triển của mụn</h3>

<p>Mụn ph&aacute;t triển qua 4 giai đoạn như sau:</p>

<h4>Giai đoạn 1: Tắc nghẽn lỗ ch&acirc;n l&ocirc;ng</h4>

<p>C&aacute;c tế b&agrave;o b&agrave;o chết v&agrave; chất nhờn sẽ được đ&agrave;o thải qua ống ch&acirc;n l&ocirc;ng. Khi ch&uacute;ng kh&ocirc;ng được đ&agrave;o thải sẽ g&acirc;y tắc nghẽn lỗ ch&acirc;n l&ocirc;ng. Giai đoạn n&agrave;y, mụn ẩn sẽ h&igrave;nh th&agrave;nh tr&ecirc;n da.</p>

<p><img alt="mụn ẩn nằm sâu trong lỗ chân lông" src="https://acnes.com.vn/wp-content/uploads/2018/08/mun-an.jpg" style="height:464px; width:700px" /></p>

<p><em>Mụn ẩn nằm s&acirc;u trong lỗ ch&acirc;n l&ocirc;ng, miệng lỗ ch&acirc;n l&ocirc;ng bịt k&iacute;n</em></p>

<h4>Giai đoạn 2: Sự hoạt động qu&aacute; mức của tuyến b&atilde; nhờn</h4>

<p>Hormone testosterone k&iacute;ch th&iacute;ch hoạt động tuyến b&atilde; nhờn. Lượng testosterone ở nam được sản xuất nhiều hơn ở nữ. T&igrave;nh trạng tắc nghẽn lỗ ch&acirc;n l&ocirc;ng nặng hơn. Mụn trứng c&aacute; xuất hiện.</p>

<h4>Giai đoạn 3: Sự gia tăng hoạt động của vi khuẩn g&acirc;y mụn</h4>

<p>Vi khuẩn Propionibacterium Acnes xuất hiện khi da bị mụn trứng c&aacute;. Ch&uacute;ng kết hợp với chất nhờn, tế b&agrave;o chết ở ch&acirc;n l&ocirc;ng g&acirc;y sưng tấy ống ch&acirc;n l&ocirc;ng. L&uacute;c n&agrave;y mụn vi&ecirc;m xuất hiện.</p>

<h4>Giai đoạn 4: Ch&acirc;n l&ocirc;ng sưng tấy</h4>

<p>Khi kh&ocirc;ng c&oacute;&nbsp;<strong>c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt</strong>&nbsp;kịp thời, vi khuẩn Propionibacterium Acnes tấn c&ocirc;ng lỗ ch&acirc;n l&ocirc;ng, bề mặt của ống ch&acirc;n l&ocirc;ng sẽ bị sưng tấy. Nếu mụn vi&ecirc;m kh&ocirc;ng được chữa sẽ g&acirc;y nhiễm tr&ugrave;ng da.</p>

<p>Mụn sẽ ph&aacute;t triển nặng hơn khi bạn kh&ocirc;ng ngăn sự ph&aacute;t triển của ch&uacute;ng. Nếu mụn qu&aacute; nặng, việc điều trị sẽ kh&oacute; hơn rất nhiều. Ch&iacute;nh v&igrave; vậy bạn cần phải biết c&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;tr&ecirc;n mặt trước khi mụn xuất hiện.</p>

<p><strong>C&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt hiệu quả nhất</strong></p>

<p>C&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;tr&ecirc;n mặt hiệu quả nhất l&agrave; cần kết hợp chế độ ăn uống v&agrave; sinh hoạt hợp l&yacute;. Dưới đ&acirc;y l&agrave; 5 lưu &yacute; bạn cần biết để việc điều trị mụn dễ d&agrave;ng. Đặc biệt, đối với mụn v&ugrave;ng mũi, h&atilde;y thử tham khảo b&agrave;i viết về c&aacute;ch&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;ở mũi hiệu quả.</p>

<h2><strong>1. Bổ sung Vitamin</strong></h2>

<p><img alt="Thời điểm tốt nhất để uống các loại vitamin | Vinmec" src="https://vinmec-prod.s3.amazonaws.com/images/20190716_084721_141554_vitamin.max-800x800.jpg" /></p>

<p><em>Cung cấp vitamin gi&uacute;p l&agrave;m sạch da v&agrave; ngăn ngừa mụn</em></p>

<p>Vitamin B3 v&agrave; canxi l&agrave; những chất bổ sung gi&uacute;p phục hồi sức khỏe v&agrave; cho bạn một l&agrave;n da khỏe mạnh, bởi v&igrave; khi bạn bị căng thẳng, cơ thể tiết rất nhiều axit c&oacute; thể g&acirc;y tổn hại đến da. Bổ sung vitamin B3 sẽ rất hữu &iacute;ch nếu bạn bị thiếu hụt vitamin.</p>

<p>Ngo&agrave;i ra, vitamin B3 c&ograve;n g&oacute;p phần chữa trị mụn trứng c&aacute; v&igrave; n&oacute; gi&uacute;p điều chỉnh kh&aacute;ng sinh da. Vitamin B3 cũng gi&uacute;p k&iacute;ch hoạt c&aacute;c ph&acirc;n tử peptide nhỏ do da tiết ra. V&igrave; vậy nếu bạn gặp vấn đề về da th&igrave; đ&acirc;y l&agrave; một trong những loại vitamin tốt nhất bạn n&ecirc;n bổ sung v&agrave;o cơ thể.</p>

<h2><strong>2. Tẩy tế b&agrave;o chết</strong></h2>

<p>B&igrave;nh thường th&igrave; v&agrave;o cuối m&ugrave;a h&egrave;, l&agrave;n da của bạn sẽ trở n&ecirc;n kh&ocirc; v&agrave; xỉn m&agrave;u v&igrave; pahri tiếp x&uacute;c kh&aacute; nhiều với &aacute;nh nắng mặt trời. Đ&oacute; l&agrave; l&yacute; do tuyệt vời để bạn mở ngay một &ldquo;mini spa&rdquo; ng&agrave;y tại nh&agrave; nhằm tẩy tế b&agrave;o da chết v&agrave; phục hồi l&agrave;n da s&aacute;ng mịn.</p>

<p>Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều sản phẩm mặt nạ lột c&oacute; chứa glycolic v&agrave; axit salicylic với nồng độ kh&aacute;c nhau ở mọi cấp độ từ những thương hiệu phổ th&ocirc;ng đến những nh&atilde;n hiệu lớn c&oacute; uy t&iacute;n. Tẩy tế b&agrave;o chết đ&uacute;ng c&aacute;ch sẽ gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&agrave; gi&uacute;p l&agrave;m mới l&agrave;n da, đem lại một l&agrave;n da tươi s&aacute;ng gần như ngay lập tức.</p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, phương ph&aacute;p n&agrave;y c&oacute; thể cho bạn thấy kết quả tức thời v&agrave; c&ograve;n gi&uacute;p cho l&agrave;n da trở n&ecirc;n khỏe khoắn hơn, kh&ocirc;ng bị tắc nghẽn bởi bụi bẩn hay tế b&agrave;o chết.</p>

<h2><strong>3. Rửa mặt 2 lần/ng&agrave;y</strong></h2>

<p>H&atilde;y rửa mặt hai lần mỗi ng&agrave;y. Nếu bạn thường trang điểm, đừng bỏ qua bước tẩy trang trước khi rửa mặt. H&atilde;y sử dụng loại sửa rửa mặt ph&ugrave; hợp với l&agrave;n da của bạn (sửa rửa mặt dạng gel cho da dầu, dạng kem cho da kh&ocirc; v&agrave; sữa đặc trị cho da nhạy cảm&hellip;).</p>

<p><img alt="REVIEW] TOP 10 Sữa sữa rửa mặt tốt nhất giá bình dân năm 2021" src="https://blogchamsoc.com/wp-content/uploads/2020/02/rua-mat-ky.jpg" /></p>

<p><em>Rửa mặt đ&uacute;ng c&aacute;ch gi&uacute;p loại sạch bụi bẩn</em></p>

<p>Rửa mặt đ&uacute;ng c&aacute;ch sẽ gi&uacute;p loại bỏ bụi bẩn v&agrave; c&aacute;c tế b&agrave;o chết l&agrave;m tắc nghẽn lỗ ch&acirc;n l&ocirc;ng tr&ecirc;n da. Nếu bạn thường xuy&ecirc;n mệt mỏi đến mức kh&ocirc;ng muốn bước ra khỏi giường để rửa mặt, th&igrave; h&atilde;y nhớ để một g&oacute;i khăn ướt tẩy trang ngay b&ecirc;n cạnh giường v&agrave; &iacute;t nhất h&atilde;y lau qua khu&ocirc;n mặt để c&oacute; thể l&agrave;m sạch da, x&oacute;a đi lớp trang điểm cũng như những lớp bụi b&aacute;m v&agrave;o da bạn trong suốt một ng&agrave;y d&agrave;i.</p>

<h2>4. Thoa kem chống nắng mỗi ng&agrave;y</h2>

<p>Chỉ số SPF (sun protection factor &ndash; chỉ số chống nắng) của loại kem chống nắng bạn d&ugrave;ng n&ecirc;n được điều chỉnh cao hơn b&igrave;nh thường trong những th&aacute;ng h&egrave;. C&aacute;c tia nắng mặt trời c&oacute; thể g&acirc;y tổn thương da nghi&ecirc;m trọng, v&agrave; nếu bạn đang thực hiện tẩy tế b&agrave;o chết, việc sử dụng kem chống nắng để bảo vệ l&agrave;n da nhạy cảm l&agrave; điều thiết yếu.</p>

<h2>5. Chế độ ăn uống hợp l&yacute;</h2>

<p>Chế độ ăn uống quyết định đến sức khỏe v&agrave; cả t&igrave;nh trạng của l&agrave;n da. Một chế độ ăn uống hợp l&yacute; cho da kh&ocirc;ng mụn gồm:</p>

<ul>
	<li>Kh&ocirc;ng n&ecirc;n ăn nhiều đường, đồ ngọt đặc biệt l&agrave; đường h&oacute;a học trong b&aacute;nh kẹo, nước ngọt đ&oacute;ng chai</li>
	<li>Hạn chế ăn hoa quả chứa nhiều đường. Thay v&agrave;o đ&oacute; bạn n&ecirc;n ăn những loại hoa quả gi&agrave;u vitamin, thanh m&aacute;t như cam, bưởi, t&aacute;o, l&ecirc;&hellip;</li>
	<li>Hạn chế ăn tinh bột từ cơm, khoai, sắn. Thay v&agrave;o đ&oacute; bạn c&oacute; thể sử dụng c&aacute;c loại ngũ cốc như yến mạch, gạo lứt vẫn đảm bảo đủ năng lượng m&agrave; kh&ocirc;ng g&acirc;y mụn</li>
	<li>Ăn nhiều rau xanh, hoa quả tươi c&oacute; chứa nhiều vitamin, chất xơ c&oacute; lợi cho da v&agrave; cơ thể</li>
	<li>Ăn đủ 3 bữa trong ng&agrave;y, kh&ocirc;ng n&ecirc;n nhịn ăn giảm c&acirc;n. Quan trọng nhất l&agrave; bữa s&aacute;ng</li>
	<li>Uống đủ 2 l&iacute;t nước mỗi ng&agrave;y</li>
	<li>C&oacute; thể bổ sung vitamin bằng thực phẩm chức năng</li>
</ul>

<p><img alt="ăn nhiều trái cây giúp ngăn ngừa mụn" src="https://acnes.com.vn/wp-content/uploads/2018/08/trai-cay-tuoi.jpg" style="height:525px; width:700px" /></p>

<p><em>Ăn nhiều tr&aacute;i c&acirc;y v&agrave; rau xanh sẽ gi&uacute;p ngăn ngừa mụn hiệu quả</em></p>

<h2>6. Ngủ đủ giấc v&agrave; ngủ sớm quyết định hiệu quả của c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt</h2>

<p>Giấc ngủ sẽ quyết định sức khỏe của bạn. Ngủ s&acirc;u v&agrave; đủ giấc sẽ gi&uacute;p bạn c&oacute; tinh thần thư th&aacute;i, cơ thể khỏe mạnh. Kh&ocirc;ng n&ecirc;n ngủ sau 11 giờ đ&ecirc;m v&igrave; đ&acirc;y l&agrave; thời gian cơ thể b&agrave;i tiết chất độc hại. Khi chất độc kh&ocirc;ng được b&agrave;i tiết da sẽ xấu v&agrave; xuất hiện nhiều mụn. Bạn n&ecirc;n ngủ từ 7 &ndash; 8 tiếng một ng&agrave;y v&agrave; ngủ trước 22 giờ. Ngủ đủ giấc v&agrave; ngủ sớm sẽ khiến da bạn đẹp l&ecirc;n rất nhiều.</p>

<h2>7. L&agrave;m sạch da mặt l&agrave; c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt hiệu quả nhất</h2>

<p>L&agrave;m sạch da mặt l&agrave; bước quan trọng để loại bỏ mụn. Da mặt sạch, lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng, tế b&agrave;o chết được loại bỏ sẽ hạn chế nguy&ecirc;n nh&acirc;n g&acirc;y mụn. Để da mặt sạch mụn cần sử dụng c&aacute;c sản phẩm rửa mặt chuy&ecirc;n dụng cho da mụn. Khi mua sản phẩm rửa mặt ngừa mụn bạn cần quan t&acirc;m đến th&agrave;nh phần của ch&uacute;ng. C&aacute;c th&agrave;nh phần ngừa mụn hiệu quả c&oacute; thể kể đến như: Salicylic Acid, Stearyl Glycyrrhetinate, Sodium Ascorbyl Phosphate ,&hellip; Nếu bạn đang quan t&acirc;m để sửa rửa mặt ngừa mụn, bạn c&oacute; thể tham khảo sản phẩm sữa rửa mặt 3S ngừa mụn của Acnes.</p>

<p>Để da mặt sạch nhất, bạn cần rửa mặt đ&uacute;ng c&aacute;ch nhằm&nbsp;<strong>ngăn ngừa mụn</strong>. C&aacute;c b&aacute;c sĩ Acnes đ&atilde; nghi&ecirc;n cứu phương ph&aacute;p rửa mặt cho da mụn như sau:</p>

<p>Bước 1: Rửa mặt bằng nước ấm để lỗ ch&acirc;n l&ocirc;ng mở</p>

<p>Bước 2: Lấy lượng sữa rửa mặt vừa đủ ( bằng hạt đậu) ra l&ograve;ng b&agrave;n tay, bạo bọt</p>

<p>Bước 3: Rửa mặt trong l&ograve;ng 30 s &ndash; 1 ph&uacute;t kết hợp m&aacute;t xa mặt</p>

<p>Bước 4: Rửa lại bằng nước lạnh v&agrave; lau kh&ocirc; mặt bằng khăn sạch</p>

<p><img alt="làm sạch da hàng ngày" src="https://acnes.com.vn/wp-content/uploads/2018/08/rua-mat.jpg" style="height:394px; width:700px" /></p>

<p><em>Đừng qu&ecirc;n l&agrave;m sạch da hằng ng&agrave;y để da kh&ocirc;ng c&ograve;n mụn</em></p>

<p>Nếu bước l&agrave;m sạch da mặt kh&ocirc;ng đ&uacute;ng c&aacute;ch, mụn ẩn sẽ ngay lập tức xuất hiện. Mụn ẩn thường xuất hiện tại c&aacute;c vị tr&iacute; tr&ecirc;n mặt như: tr&aacute;n, hai b&ecirc;n m&aacute;, cằm. Nếu kh&ocirc;ng&nbsp;<strong>ngăn ngừa mụn</strong>&nbsp;ẩn kịp thời, da sẽ xuất hiện mụn trứng c&aacute;, mụn vi&ecirc;m, sưng đỏ. Nếu l&agrave;n da mặt gặp vấn đề với mụn ẩn. Bạn đang cần điều trị mụn ẩn kịp thời? Bạn c&oacute; thể tham khảo b&agrave;i viết&nbsp;<a href="https://acnes.com.vn/5-cach-ngan-ngua-mun-an-don-gian/">5 c&aacute;ch ngăn ngừa mụn ẩn đơn giản</a></p>

<h2>8. Tập thể dục l&agrave; c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt kh&ocirc;ng phải ai cũng biết</h2>

<p>Theo một nghi&ecirc;n cứu của Viện nghi&ecirc;n cứu Cơ xương khớp v&agrave; Da liễu Hoa K&igrave;, tập luyện thể dục thể thao l&agrave;m tăng cường lưu lượng m&aacute;u trong cơ thể v&agrave; bề mặt da. Điều n&agrave;y gi&uacute;p bổ sung th&ecirc;m những chất chống oxy h&oacute;a v&agrave; dưỡng chất cho l&agrave;n da.Tập thể dục khiến mồ h&ocirc;i tho&aacute;t ra nhiều. Mồ h&ocirc;i được tạo n&ecirc;n chủ yếu từ nước, c&ugrave;ng một lượng nhỏ amoniac, ure, muối v&agrave; đường. Mồ h&ocirc;i mang theo chất độc hại của cơ thể. Mồ h&ocirc;i ra nhiều gi&uacute;p lưu lượng m&aacute;u tăng, c&aacute;c lỗ ch&acirc;n l&ocirc;ng gi&atilde;n nở c&oacute; t&aacute;c dụng hữu &iacute;ch trong việc ngăn ngừa c&aacute;c triệu chứng về mụn. Kh&ocirc;ng những vậy, tập thể dục gi&uacute;p giảm căng thẳng, thư th&aacute;i tinh thần, giảm mụn hiệu quả.</p>

<p>Tuy nhi&ecirc;n, việc tập thể dục chỉ c&oacute; lợi trong việc giảm mụn khi:</p>

<ul>
	<li>Tắm nhanh sau khi tập: Sau khi tập n&ecirc;n nghỉ ngơi khoảng 15 ph&uacute;t sau đ&oacute; đi tắm. Tr&aacute;nh mặc &aacute;o d&iacute;nh mồ h&ocirc;i l&acirc;u g&acirc;y mụn</li>
	<li>Kh&ocirc;ng chạm tay v&agrave;o da sau khi tập thể dục v&igrave; l&uacute;c n&agrave;y tại c&oacute; nhiều vi khuẩn</li>
	<li>Chọn quần &aacute;o Cotton khi tập để mồ h&ocirc;i tho&aacute;t ra tốt hơn</li>
	<li>Tẩy trang kỹ mỹ phẩm tr&ecirc;n mặt trước khi tập thể dục. Tr&aacute;nh mỹ phẩm chui v&agrave;o lỗ ch&acirc;n l&ocirc;ng khi cơ thể to&aacute;t mồ h&ocirc;i</li>
</ul>

<h2>9. Sử dụng thành ph&acirc;̀n &ldquo;Non-comedogenic&rdquo; trong sản ph&acirc;̉m chăm sóc da và mỹ ph&acirc;̉m</h2>

<p>&ldquo;Non-comedogenic&rdquo; là g&igrave;? Đ&oacute; l&agrave; t&ecirc;n gọi c&aacute;c sản phẩm kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng. Nguy&ecirc;n nh&acirc;n g&acirc;y da mụn trứng cá như đ&atilde; n&oacute;i ở tr&ecirc;n, phần lớn do lỗ ch&acirc;n l&ocirc;ng b&iacute;t tắc, tạo điều kiện để vi khuẩn t&iacute;ch tụ. Mỹ phẩm c&oacute; chứa c&aacute;c th&agrave;nh phần g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng. Ch&iacute;nh v&igrave; vậy bạn cần chọn Non-comedogenic để hạn chế việc ch&acirc;n l&ocirc;ng b&iacute;t tắc. Ngo&agrave;i ra, da bạn sẽ bị dị ứng với một số th&agrave;nh phần trong mỹ phẩm như cồn hay Paraben. Bạn cần lưu &yacute; rất kỹ c&aacute;c th&agrave;nh phần n&agrave;y để tr&aacute;nh việc dị ứng g&acirc;y nổi mụn.</p>

<p><img alt="Lựa chọn kem phù hợp giúp ngăn ngừa mụn hiệu quả" src="https://acnes.com.vn/wp-content/uploads/2018/06/Tri-tham-mun-van-de-muon-thuo-trong-ngay-he-da-co-giai-phap-1.jpg" style="height:457px; width:700px" /></p>

<p><em>Việc lựa chọn th&agrave;nh phần của sản phẩm dưỡng da rất quan trọng&nbsp;</em></p>

<p>Ngo&agrave;i ra, nếu bạn quan t&acirc;m đến vấn đề mụn tuổi dậy th&igrave;, h&atilde;y tham khảo b&agrave;i viết&nbsp;<a href="https://acnes.com.vn/thuoc-tri-mun-tuoi-day-thi-hieu-qua/">Lựa chọn thuốc trị mụn tuổi dậy th&igrave; hiệu quả an to&agrave;n</a>&nbsp;để c&oacute; th&ecirc;m nhiều kiến thức chăm s&oacute;c da hữu &iacute;ch.</p>

<p>Muốn da đẹp trước hết cần sạch mụn. Khi mụn tiến triển nặng sẽ rất kh&oacute; chữa trị v&agrave; khi điều trị mụn sẽ dễ để lại sẹo v&agrave; vết th&acirc;m. Ch&iacute;nh v&igrave; vậy cần phải c&oacute; c&aacute;c&nbsp;<strong>c&aacute;ch ngăn ngừa mụn tr&ecirc;n mặt</strong>&nbsp;kịp thời để l&agrave;n da lu&ocirc;n khỏe đẹp.</p>
', CAST(N'2021-03-23T10:07:23.497' AS DateTime), 1)
INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (5, N'Review mỹ phẩm Cocoon có tốt không? Top sản phẩm Cocoon tốt nhất hiện nay', N'a5827ad1-ba5a-4dcb-b10c-0ea63a18e5f5.jpg', N'53be6cf1-f3aa-4af0-ad3e-7c6497e8ffc2.jpg', N'<p>Tại thị trường mỹ phẩm Việt Nam hiện nay c&oacute; kh&aacute; nhiều c&aacute;c thương hiệu nổi tiếng từ nước ngo&agrave;i v&agrave; đ&atilde; được người ti&ecirc;u d&ugrave;ng ưa chuộng sử dụng; tuy nhi&ecirc;n với một số thương hiệu mỹ phẩm Việt Nam lại dường như chưa d&agrave;nh được cho m&igrave;nh ưu thế tr&ecirc;n thị trường.</p>

<p>Cho đến thời điểm hiện tại, c&oacute; lẽ thương hiệu mỹ phẩm đang thực sự nổi bật nhất trong lĩnh vực chăm s&oacute;c sắc đẹp ch&iacute;nh l&agrave; Cocoon. D&ugrave; mới chỉ ra mắt trong thời gian gần đ&acirc;y, tuy nhi&ecirc;n Cocoon đ&atilde; v&agrave; đang trở n&ecirc;n thịnh h&agrave;nh bởi những sản phẩm chăm s&oacute;c da của h&atilde;ng đều mang lại hiệu quả cao, ph&ugrave; hợp cho l&agrave;n da của người Ch&acirc;u &Aacute;.&nbsp;</p>

<h2>Cocoon l&agrave; g&igrave;?</h2>

<p>Khi nhắc đến c&aacute;c thương hiệu&nbsp;<a href="https://macherie.vn/">mỹ phẩm Việt Nam</a>, chắc hẳn &iacute;t ai c&oacute; thể biết đến một số d&ograve;ng sản phẩm nổi bật của c&aacute;c h&atilde;ng cũng như một số thương hiệu nổi tiếng tại tr&ecirc;n thị trường hiện nay.</p>

<p>Một phần cũng l&agrave; v&igrave; c&aacute;c thương hiệu mỹ phẩm nước ngo&agrave;i đ&atilde; dần trở n&ecirc;n thịnh h&agrave;nh v&agrave; được nhiều người ưa chuộng sử dụng kể từ khi mới du nhập v&agrave;o thị trường Việt Nam, ch&iacute;nh v&igrave; thế m&agrave; c&aacute;c thương hiệu thuần Việt cũng dần mất đi chỗ đứng.</p>

<p><img alt="Mỹ phẩm Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/My-pham-cocoon.jpeg" style="height:965px; width:1280px" /></p>

<p>Nhưng cho đến thời gian gần đ&acirc;y, Cocoon &ndash; thương hiệu mỹ phẩm thuần Việt đ&atilde; tạo n&ecirc;n sức h&uacute;t đến người d&ugrave;ng bởi c&aacute;c d&ograve;ng sản phẩm chăm s&oacute;c da hiệu quả, b&ecirc;n cạnh đ&oacute; c&ograve;n khẳng định được t&ecirc;n tuổi của m&igrave;nh đại điện cho thương hiệu mỹ phẩm Việt Nam.</p>

<p>C&aacute;c d&ograve;ng sản phẩm của Cocoon đều được chiết xuất từ tự nhi&ecirc;n như b&iacute; đao, cao vỏ bưởi c&ugrave;ng với một số hoạt chất thiết yếu kh&aacute;c gi&uacute;p điều trị c&aacute;c dạng mụn v&agrave; đồng thời nu&ocirc;i dưỡng l&agrave;n da cực kỳ tốt. Ch&iacute;nh những lợi &iacute;ch n&agrave;y m&agrave; Cocoon lu&ocirc;n thu h&uacute;t được người d&ugrave;ng lựa chọn trong việc điều trị mụn hay ngăn ngừa một số t&aacute;c nh&acirc;n kh&aacute;c g&acirc;y hại cho l&agrave;n da.</p>

<h2>C&aacute;c loại sản phẩm của Cocoon</h2>

<p>Hầu hết c&aacute;c d&ograve;ng sản phẩm của h&atilde;ng đều được điều chế ho&agrave;n to&agrave;n từ tự nhi&ecirc;n, l&agrave;nh t&iacute;nh do đ&oacute; rất th&iacute;ch hợp cho mọi l&agrave;n da, kể cả da nhạy cảm hay da kh&ocirc;. Điểm nổi bật trong c&aacute;c loại sản phẩm chăm s&oacute;c da ch&iacute;nh l&agrave; th&agrave;nh phần chiết xuất từ b&iacute; đao, rau m&aacute;,&hellip; mang khả năng chống vi&ecirc;m, kh&aacute;ng khuẩn cao gi&uacute;p loại bỏ triệt để mọi nốt mụn v&agrave; đồng thời ngăn ngừa t&igrave;nh trạng da bị vi&ecirc;m, sưng.</p>

<p>Kh&ocirc;ng chỉ dừng lại ở việc điều trị mụn, h&atilde;ng c&ograve;n cho ra mắt một số d&ograve;ng sản phẩm dưỡng da như son dưỡng, tẩy tế b&agrave;o chết, tinh chất dưỡng da,&hellip; cũng mang lại hiệu quả cực kỳ tốt. Kh&aacute;c với một số thương hiệu mỹ phẩm kh&aacute;c, thương hiệu Cocoon lu&ocirc;n đề cao về t&iacute;nh an to&agrave;n cho l&agrave;n da của người d&ugrave;ng; ch&iacute;nh v&igrave; vậy m&agrave; c&aacute;c sản phẩm của h&atilde;ng kh&ocirc;ng hề chứa bất kỳ hoạt chất độc hại hay chất bảo quản n&agrave;o g&acirc;y hại cho l&agrave;n da.&nbsp;</p>

<p>Một số loại sản phẩm nổi bật của h&atilde;ng bao gồm:</p>

<ul>
	<li>Cao b&iacute; đao Cocoon</li>
	<li>Cao vỏ bưởi Cocoon.</li>
	<li>Cao tinh nghệ Cocoon.</li>
	<li>Cao khổ qua Cocoon.</li>
	<li>Than hoạt t&iacute;nh &ndash; Blackhead Scrub.</li>
	<li>Dưỡng t&oacute;c tinh dầu bưởi &ndash; Pomelo.</li>
	<li>Son dưỡng m&ocirc;i &ndash; Lip Care.</li>
	<li>Dầu c&aacute;m gạo.</li>
	<li>Dầu Olive.</li>
	<li>Dầu dừa.</li>
</ul>

<p><img alt="Sản phẩm Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/San-pham-cocoon.jpg" style="height:1000px; width:1000px" /></p>

<h2>Top 5 sản phẩm tốt nhất của thương hiệu Cocoon</h2>

<h3>Cao mặt nạ thi&ecirc;n nhi&ecirc;n Cocoon</h3>

<p>N&oacute;i về loại cao mặt nạ thi&ecirc;n nhi&ecirc;n của h&atilde;ng, chắc chắn ai cũng sẽ gật đầu t&aacute;n th&agrave;nh về những hiệu quả dưỡng da cũng như khả năng trị mụn của loại sản phẩm n&agrave;y. Điểm nổi bật của loại sản phẩm n&agrave;y ch&iacute;nh l&agrave; sự đa dạng, ở loại cao mặt nạ thi&ecirc;n nhi&ecirc;n n&agrave;y được điều chế th&agrave;nh 4 loại kh&aacute;c nhau với mỗi c&ocirc;ng dụng đặc trị ri&ecirc;ng.</p>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Loại mặt nạ n&agrave;y c&oacute; khả năng loại bỏ triệt để mụn đầu đen, mụn ẩn hiệu quả r&otilde; rệt sau khi sử dụng.</li>
	<li>Th&agrave;nh phần hoạt chất b&ecirc;n trong được chiết xuất ho&agrave;n to&agrave;n từ tự nhi&ecirc;n v&agrave; l&agrave;nh t&iacute;nh, gi&uacute;p cho việc trị mụn hiệu quả m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho l&agrave;n da, kể cả da nhạy cảm.</li>
	<li>Gi&uacute;p cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng v&agrave; căng b&oacute;ng tự nhi&ecirc;n hơn, đồng thời ngăn ngừa t&igrave;nh trạng da tiết ra dầu nhờn nhiều kh&aacute; tốt.</li>
	<li>Hương thơm từ tr&agrave;m tr&agrave; v&agrave; b&iacute; đao tạo cảm gi&aacute;c dễ chịu cho người d&ugrave;ng.</li>
</ul>

<p><img alt="Cao mặt nạ Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/Cao-mat-na-Cocoon.jpg" style="height:760px; width:1248px" /></p>

<p><strong>Nhược điểm</strong></p>

<p>Loại sản phẩm n&agrave;y cần phải sử dụng thường xuy&ecirc;n trong thời gian d&agrave;i để ph&aacute;t huy tốt hiệu quả. Ngo&agrave;i ra n&ecirc;n sử dụng kết hợp với c&aacute;c loại sản phẩm kh&aacute;c để gi&uacute;p cho việc điều trị mụn được tốt hơn.</p>

<p><strong>Gi&aacute; b&aacute;n</strong></p>

<p><strong>Cao mặt nạ thi&ecirc;n nhi&ecirc;n Cocoon&nbsp;</strong>thường c&oacute; gi&aacute; b&aacute;n tr&ecirc;n thị trường v&agrave;o khoảng 45.000 đồng/hũ.</p>

<h3>Gel rửa mặt b&iacute; đao Cocoon</h3>

<p>Trong số c&aacute;c d&ograve;ng sản phẩm nổi bật của h&atilde;ng kh&ocirc;ng thể kh&ocirc;ng thiếu loại gel rửa mặt b&iacute; đao. Ngo&agrave;i khả năng l&agrave;m sạch cho l&agrave;n da, sản phẩm n&agrave;y được chiết xuất từ tinh chất b&iacute; đao, rau m&aacute;,&hellip; mang hoạt t&iacute;nh kh&aacute;ng khuẩn, chống vi&ecirc;m gi&uacute;p ngăn ngừa sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của c&aacute;c nốt mụn cực kỳ tốt.</p>

<p><img alt="Gel rửa mặt bí đao" src="https://madefresh.com.vn/wp-content/uploads/2020/10/Gel-rua-mat-bi-dao.jpg" style="height:2000px; width:1600px" /></p>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Chứa đựng tinh chất tr&agrave;m tr&agrave;, rau m&aacute;, b&iacute; đao,&hellip; gi&uacute;p điều trị mụn v&agrave; đồng thời ngăn ngừa tốt mọi t&aacute;c nh&acirc;n g&acirc;y hại cho l&agrave;n da.</li>
	<li>Chất gel dạng lỏng, nhẹ gi&uacute;p thẩm thấu nhanh v&agrave; s&acirc;u b&ecirc;n trong l&agrave;n da; qua đ&oacute; gi&uacute;p l&agrave;m sạch ho&agrave;n to&agrave;n mọi bụi bẩn, tạp chất hay b&atilde; nhờn dư thừa trong c&aacute;c lỗ ch&acirc;n l&ocirc;ng.</li>
	<li>Kiểm so&aacute;t lượng dầu nhờn tiết ra tr&ecirc;n da mặt kh&aacute; tốt.</li>
	<li>Loại gel rửa mặt n&agrave;y c&oacute; độ pH vừa phải, ph&ugrave; hợp cho mọi l&agrave;n da; kh&ocirc;ng g&acirc;y ra t&igrave;nh trạng kh&ocirc; da sau khi sử dụng.</li>
</ul>

<p><strong>Nhược điểm</strong></p>

<p>&nbsp;Về khả năng kiểm so&aacute;t dầu nhờn tr&ecirc;n da mặt chưa được đ&aacute;nh gi&aacute; cao.</p>

<p><strong>Gi&aacute; b&aacute;n</strong></p>

<p><strong>Gel rửa mặt b&iacute; đao Cocoon&nbsp;</strong>thường được b&agrave;y b&aacute;n tr&ecirc;n thị trường với gi&aacute; th&agrave;nh khoảng 175.000 đồng/chai 140ml.</p>

<h3>Nước c&acirc;n bằng da Cocoon Winter Melon Toner</h3>

<p>Với c&aacute;c tinh chất từ b&iacute; đao, rau m&aacute;,&hellip; v&agrave; một số hoạt chất dưỡng ẩm kh&aacute;c gi&uacute;p c&acirc;n bằng độ pH cho l&agrave;n da, đồng thời nu&ocirc;i dưỡng l&agrave;n da cực kỳ tốt; loại toner n&agrave;y thực sự l&agrave; loại sản phẩm kh&ocirc;ng thể thiếu trong quy tr&igrave;nh dưỡng da.</p>

<p><img alt="Nước cân bằng bí đao Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/Nuoc-can-bang-bi-dao-cocoon.jpg" style="height:1024px; width:1024px" /></p>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Th&agrave;nh phần tinh chất b&iacute; đao, rau m&aacute; gi&uacute;p kiểm so&aacute;t lượng dầu nhờn tiết ra tr&ecirc;n l&agrave;n da, đồng thời ngăn ngừa t&igrave;nh trạng mụn h&igrave;nh th&agrave;nh tr&ecirc;n da.</li>
	<li>Se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng hiệu quả, gi&uacute;p cung cấp độ ẩm thiết yếu cho l&agrave;n da duy tr&igrave; sự mịn m&agrave;ng v&agrave; căng b&oacute;ng tự nhi&ecirc;n.</li>
	<li>Hương thơm tr&agrave;m tr&agrave; của sản phẩm tạo cảm gi&aacute;c dễ chịu cho người d&ugrave;ng.</li>
	<li>Gi&aacute; th&agrave;nh kh&aacute; rẻ so với thị trường chung.</li>
</ul>

<p><strong>Nhược điểm</strong></p>

<p>Gi&aacute; th&agrave;nh c&oacute; thể cao hơn so với một số loại toner th&ocirc;ng thường.</p>

<p><strong>Gi&aacute; b&aacute;n&nbsp;</strong></p>

<p><strong>Nước c&acirc;n bằng da Cocoon Winter Melon Toner&nbsp;</strong>thường được b&agrave;y b&aacute;n với gi&aacute; khoảng 175.000 đồng/chai 140ml.</p>

<h3>Tẩy tế b&agrave;o chết c&agrave; ph&ecirc; Đắk Lắk</h3>

<p>Đ&acirc;y cũng l&agrave; thực sự l&agrave; một trong những loại sản phẩm tốt nhất hiện nay của h&atilde;ng v&agrave; được nhiều người ưa chuộng sử dụng trong thời gian gần đ&acirc;y. Ấn tượng nhất ch&iacute;nh l&agrave; thiết kế của sản phẩm kh&aacute; bắt mắt, chuy&ecirc;n nghiệp; hơn nữa những lợi &iacute;ch m&agrave; loại sản phẩm n&agrave;y mang lại cho người d&ugrave;ng cũng l&agrave; điểm thu h&uacute;t cho người d&ugrave;ng.</p>

<p><img alt="Tẩy tế bào chết cà phê Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/Tay-te-bao-chet-cocoon.jpg" style="height:1200px; width:1200px" /></p>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Loại bỏ ho&agrave;n to&agrave;n mọi tế b&agrave;o chết, tạp chất hay b&atilde; nhờn dư thừa tr&ecirc;n l&agrave;n da.</li>
	<li>Th&agrave;nh phần hoạt chất được chiết xuất từ c&agrave; ph&ecirc; gi&uacute;p n&acirc;ng cao khả năng tẩy tế b&agrave;o chết v&agrave; đồng thời tạo cảm gi&aacute;c mịn m&agrave;ng, th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng.</li>
	<li>C&aacute;c hạt tinh thể m&aacute;t xa lỏng, dễ t&aacute;n đều n&ecirc;n thẩm thấu s&acirc;u trong l&agrave;n da v&agrave; loại bỏ hiệu quả mọi bụi bẩn, tạp chất dư thừa.</li>
	<li>Hương thơm c&agrave; ph&ecirc; tạo cảm gi&aacute;c dễ chịu cho người d&ugrave;ng.</li>
</ul>

<p><strong>Nhược điểm</strong></p>

<p>T&aacute;c dụng trắng da của sản phẩm chưa được đ&aacute;nh gi&aacute; cao.</p>

<p><strong>Gi&aacute; b&aacute;n</strong></p>

<p><strong>Tẩy tế b&agrave;o chết c&agrave; ph&ecirc; Đắk Lắk Cocoon&nbsp;</strong>thường được b&agrave;y b&aacute;n tr&ecirc;n thị trường với gi&aacute; khoảng 115.000 đồng/hũ 200ml.</p>

<h3>Tinh dầu bưởi dưỡng t&oacute;c (Pomelo Hair Tonic)</h3>

<p>Ngo&agrave;i c&aacute;c sản phẩm chăm s&oacute;c da, Cocoon cũng đ&atilde; cho ra mắt d&ograve;ng sản phẩm chăm s&oacute;c t&oacute;c mang đến hiệu quả cực kỳ tốt. Đối với những người c&oacute; m&aacute;i t&oacute;c xơ, hư tổn nhiều th&igrave; đ&acirc;y ch&iacute;nh l&agrave; giải ph&aacute;p tối ưu cho việc phục hồi t&oacute;c hiệu quả chỉ sau v&agrave;i lần sử dụng.&nbsp;</p>

<p><strong>Ưu điểm</strong></p>

<ul>
	<li>Tinh chất được chiết xuất từ vỏ bưởi gi&uacute;p cho việc phục hồi v&agrave; nu&ocirc;i dưỡng m&aacute;i t&oacute;c một c&aacute;ch hiệu quả.&nbsp;</li>
	<li>Giảm thiểu t&igrave;nh trạng g&atilde;y rụng, m&aacute;i t&oacute;c thưa thường xuy&ecirc;n gặp phải, nhất l&agrave; những người c&oacute; m&aacute;i t&oacute;c mỏng v&agrave; yếu.</li>
	<li>Một số th&agrave;nh phần hoạt chất gi&uacute;p nu&ocirc;i dưỡng m&aacute;i t&oacute;c v&agrave; da đầu cực kỳ tốt, qua đ&oacute; cho m&aacute;i t&oacute;c lu&ocirc;n được b&oacute;ng mượt v&agrave; chắc khỏe.</li>
</ul>

<p><img alt="Tinh dầu bưởi dưỡng tóc Cocoon" src="https://madefresh.com.vn/wp-content/uploads/2020/10/Tinh-dau-buoi-duong-toc-Cocoon.jpg" style="height:1084px; width:1193px" /></p>

<p><strong>Nhược điểm</strong></p>

<p>Khả năng kiểm so&aacute;t dầu nhờn tr&ecirc;n da đầu chưa ph&aacute;t huy được hiệu quả.</p>

<p><strong>Gi&aacute; b&aacute;n</strong></p>

<p><strong>Tinh dầu bưởi dưỡng t&oacute;c (Pomelo Hair Tonic)&nbsp;</strong>thường c&oacute; gi&aacute; b&aacute;n khoảng 125.000 đồng/chai 140ml.</p>

<h2>Mua mỹ phẩm Cocoon ở đ&acirc;u?</h2>

<p>Hiện nay bạn c&oacute; thể t&igrave;m mua sản phẩm ch&iacute;nh h&atilde;ng của thương hiệu Cocoon tại c&aacute;c cửa h&agrave;ng mỹ phẩm uy t&iacute;n hoặc li&ecirc;n hệ trực tiếp tại website của h&atilde;ng để được tư vấn r&otilde; hơn về c&aacute;c sản phẩm.</p>

<h2>Mỹ phẩm Cocoon c&oacute; tốt kh&ocirc;ng?</h2>

<p>Hầu hết c&aacute;c loại sản phẩm của h&atilde;ng đều được chiết xuất từ tự nhi&ecirc;n, th&agrave;nh phần hoạt chất l&agrave;nh t&iacute;nh vừa mang lại hiệu quả cao vừa ph&ugrave; hợp cho mọi l&agrave;n da. Với tinh chất tr&agrave;m tr&agrave;, b&iacute; đao, rau m&aacute; gi&uacute;p cho việc điều trị c&aacute;c nốt mụn hay một số vấn đề về da kh&aacute;c cực kỳ tốt.</p>
', CAST(N'2021-03-23T10:12:34.520' AS DateTime), 1)
INSERT [dbo].[Table_TinTuc] ([MaTinTuc], [TieuDe], [AnhBia], [AnhTinTuc], [NoiDung], [NgayDang], [TinhTrangTT]) VALUES (6, N'Kem trộn và những tác hại bạn không lường trước được cho làn da và sức khỏe của bạn! ', N'0f565c19-3918-418a-a7fb-61a5e9f21b32.jpg', N'7d3bbcc9-b2a4-4cf0-9c28-637619d101be.jpg', N'<h2><strong>Tại sao lại gọi l&agrave; kem trộn?</strong></h2>

<p>V&igrave; loại kem n&agrave;y được tạo n&ecirc;n bởi nhiều loại thuốc kh&aacute;c nhau, hoặc c&aacute;c loại kem từ c&aacute;c nh&atilde;n hiệu kem kh&aacute;c kh&ocirc;ng r&otilde; nguồn gốc tr&ecirc;n thị trường.</p>

<p>Đặc điểm chung của kem trộn l&agrave; chứa c&aacute;c&nbsp;<strong><em>th&agrave;nh phần</em></strong>&nbsp;như: Aspirin, Vitamin E, Cortibion,&hellip; v&agrave; đặc biệt l&agrave; chất tẩy/ b&agrave;o m&ograve;n da si&ecirc;u mạnh &ndash; Corticoid.</p>

<p>V&igrave; Corticoid b&agrave;o m&ograve;n da nhanh, mạnh v&agrave; l&agrave;m &ldquo;chết&rdquo; tế b&agrave;o sắc tố da, ức chế hệ miễn dịch của da dẫn đến t&igrave;nh trạng da ngậm nước, n&ecirc;n chỉ sau 24h, l&agrave;n da của bạn sẽ căng v&agrave; trắng hơn rất nhiều. Điều n&agrave;y khiến nhiều bạn lầm tưởng kem trộn c&oacute; hiệu quả tức th&igrave; trong việc l&agrave;m trắng, điều trị khuyết điểm da kh&ocirc;, k&eacute;m mịn mượt.</p>

<h2><strong>Nhận biết kem trộn bằng c&aacute;ch n&agrave;o?</strong></h2>

<p>Một số đặc điểm đơn giản m&agrave; bạn c&oacute; thể&nbsp;<strong>nhận biết</strong>&nbsp;ngay loại kem dưỡng n&agrave;o đ&oacute; c&oacute; phải l&agrave; kem trộn hay kh&ocirc;ng:</p>

<ul>
	<li>Bao b&igrave; nh&igrave;n na n&aacute; nhau, in ấn sơ s&agrave;i, đ&ocirc;i khi kh&ocirc;ng c&oacute; nh&atilde;n hiệu v&agrave; mực in th&igrave; lem luốc.</li>
	<li>Sản phẩm c&oacute; hoặc kh&ocirc;ng ghi r&otilde; th&agrave;nh phần sản phẩm. Kh&ocirc;ng in hạn sử dụng.</li>
	<li>Sản phẩm c&oacute; m&agrave;u v&agrave;ng nhạt hoặc hơi đục, m&ugrave;i hơi chua chua.</li>
</ul>

<p><a href="https://skinclinic.vn/wp-content/uploads/2017/09/kem-tr%E1%BB%99n-nh%E1%BA%ADn-bi%E1%BA%BFt.jpg"><img alt="Kem trộn và những tác hại bạn không lường trước được!" src="https://skinclinic.vn/wp-content/uploads/2017/09/kem-tr%E1%BB%99n-nh%E1%BA%ADn-bi%E1%BA%BFt.jpg" style="height:630px; width:960px" /></a></p>

<p>Tuy nhi&ecirc;n, hiện nay c&oacute; một số nh&atilde;n hiệu kem trộn cực k&igrave; tinh vi với mẫu m&atilde; bắt mắt, thậm ch&iacute; c&ograve;n c&oacute; chứng nhận về chất lượng, lẫn giải thưởng d&agrave;nh cho doanh nghiệp c&oacute; đ&oacute;ng g&oacute;p cho ng&agrave;nh l&agrave;m đẹp,&hellip; k&igrave; thực đ&acirc;y l&agrave; những giải thưởng do &ldquo;bỏ tiền t&uacute;i&rdquo; để mua.</p>

<p>V&igrave; vậy, h&atilde;y t&igrave;m hiểu thận trọng v&agrave; chỉ n&ecirc;n sử dụng những sản phẩm uy t&iacute;n, l&acirc;u năm tr&ecirc;n thế giới để kh&ocirc;ng phải &ldquo;tiền mất tật mang&rdquo;.</p>

<h2><strong>Những t&aacute;c hại m&agrave; kem trộn g&acirc;y ra cho l&agrave;n da của bạn</strong></h2>

<p>H&atilde;y thử kiểm tra xem t&igrave;nh trạng da của m&igrave;nh c&oacute; giống như những đặc điểm m&agrave; ch&uacute;ng t&ocirc;i liệt k&ecirc; dưới đ&acirc;y kh&ocirc;ng, để x&aacute;c định đ&oacute; c&oacute; phải l&agrave; kem trộn hay kh&ocirc;ng nh&eacute;!</p>

<p><a href="https://skinclinic.vn/wp-content/uploads/2017/09/da-nhi%E1%BB%85m-corticoid.jpg"><img alt="Kem trộn và những tác hại bạn không lường trước được!" src="https://skinclinic.vn/wp-content/uploads/2017/09/da-nhi%E1%BB%85m-corticoid.jpg" style="height:740px; width:960px" /></a></p>

<h3><strong><em>Nhẹ:</em></strong></h3>

<ul>
	<li>Da trắng bật t&ocirc;ng, mịn v&agrave; căng b&oacute;ng chỉ sau&nbsp;<strong>24h</strong>.</li>
	<li>T&igrave;nh trạng mụn c&aacute;m được giải quyết chỉ sau&nbsp;<strong>2 &ndash; 3 ng&agrave;y</strong>&nbsp;sử dụng.</li>
	<li>Sờ v&agrave;o da c&oacute; cảm gi&aacute;c mềm, lu&ocirc;n căng v&agrave; mọng nước (đ&acirc;y l&agrave; t&igrave;nh trạng da bị ức chế miễn dịch, ngậm nước).</li>
	<li>Những biểu hiện của da l&atilde;o h&oacute;a như: nếp nhăn v&ugrave;ng mắt, sạm n&aacute;m đều được giải quyết chỉ sau 10 ng&agrave;y.</li>
</ul>

<h3><strong><em>Nặng:</em></strong></h3>

<ul>
	<li>Da trắng một c&aacute;ch bất thường,&nbsp;<em><strong>trắng bạch tạng</strong></em>&nbsp;v&agrave; nếu bạn kh&ocirc;ng sử dụng kem trộn cho cả body, bạn sẽ thấy sự kh&aacute;c biệt r&otilde; rệt ở m&agrave;u da v&agrave; t&igrave;nh trạng da.</li>
	<li>V&ugrave;ng da m&aacute; ửng hồng v&igrave; c&aacute;c mao mạch bị d&atilde;n, c&oacute; hiện tượng l&ograve;i sợi m&aacute;u nhỏ.</li>
	<li>L&uacute;c n&agrave;y mảng n&aacute;m bắt đầu lan rộng với m&agrave;u sắc nhạt nhưng tốc độ lan cực k&igrave; nhanh.</li>
	<li>C&agrave;ng về sau mảng n&aacute;m c&agrave;ng sậm m&agrave;u v&agrave; chuyển sang m&agrave;u n&acirc;u hoặc x&aacute;m chỉ v&igrave; gốc n&aacute;m đ&atilde; bắt rễ, ăn s&acirc;u v&agrave;o c&aacute;c tầng da.</li>
	<li>Da cực k&igrave; mỏng, mạch m&aacute;u dưới da lộ r&otilde; v&agrave; da lu&ocirc;n trong t&igrave;nh trạng như bị bỏng, r&aacute;t, ngứa.</li>
</ul>

<p>Đồng thời, khi sử dụng kem trộn, c&oacute; chứa&nbsp;<em><strong>Corticoid</strong></em>, lượng&nbsp;Demodex&nbsp;&ndash; lo&agrave;i c&ocirc;n tr&ugrave;ng k&iacute; sinh thường tr&uacute; tr&ecirc;n biểu da cũng sẽ tăng l&ecirc;n đ&aacute;ng kể, g&acirc;y ra t&igrave;nh trạng ngứa ng&aacute;y, mưng mủ, vi&ecirc;m da,&hellip; người d&ugrave;ng kem trộn v&agrave;o buổi tối sẽ c&oacute; cảm gi&aacute;c như kiến b&ograve;, kh&oacute; chịu v&agrave; ngứa ng&aacute;y rất nhiều.</p>

<p><a href="https://skinclinic.vn/wp-content/uploads/2017/09/gi%E1%BA%A3i-ph%C3%A1p-peel-da-an-o%C3%A0n-cho-c%C3%A1c-spa-chuy%C3%AAn-nghi%E1%BB%87p.jpg"><img alt="Kem trộn và những tác hại bạn không lường trước được!" src="https://skinclinic.vn/wp-content/uploads/2017/09/gi%E1%BA%A3i-ph%C3%A1p-peel-da-an-o%C3%A0n-cho-c%C3%A1c-spa-chuy%C3%AAn-nghi%E1%BB%87p.jpg" style="height:640px; width:960px" /></a></p>

<p>Bạn thấy đấy, với những g&igrave; kem trộn g&acirc;y ra cho l&agrave;n da, mọi người m&agrave; đặc biệt l&agrave; chị em phụ nữ cần t&igrave;m hiểu thật kỹ, chọn lựa sản phẩm l&agrave;m trắng, điều trị cần dựa v&agrave;o &yacute; kiến chuy&ecirc;n gia để l&agrave;n da được chăm s&oacute;c khoa học, lu&ocirc;n khỏe &ndash; đẹp như bạn mong muốn!</p>
', CAST(N'2021-03-23T10:15:55.970' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Table_TinTuc] OFF
GO
ALTER TABLE [dbo].[Table_DonHang] ADD  CONSTRAINT [DF_Table_DonHang_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Table_GioHang] ADD  CONSTRAINT [DF_Table_GioHang_SoLuongMua]  DEFAULT ((1)) FOR [SoLuongMua]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_TinhTrang]  DEFAULT ((1)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[Table_SanPham] ADD  CONSTRAINT [DF_Table_SanPham_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Table_TinTuc] ADD  CONSTRAINT [DF_Table_TinTuc_NgayDang]  DEFAULT (getdate()) FOR [NgayDang]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Table_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_Table_BinhLuan_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Table_BinhLuan] CHECK CONSTRAINT [FK_Table_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[Table_BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_Table_BinhLuan_Table_TinTuc] FOREIGN KEY([MaTinTuc])
REFERENCES [dbo].[Table_TinTuc] ([MaTinTuc])
GO
ALTER TABLE [dbo].[Table_BinhLuan] CHECK CONSTRAINT [FK_Table_BinhLuan_Table_TinTuc]
GO
ALTER TABLE [dbo].[Table_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_Table_ChiTietDonHang_Table_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[Table_DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[Table_ChiTietDonHang] CHECK CONSTRAINT [FK_Table_ChiTietDonHang_Table_DonHang]
GO
ALTER TABLE [dbo].[Table_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_Table_ChiTietDonHang_Table_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[Table_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[Table_ChiTietDonHang] CHECK CONSTRAINT [FK_Table_ChiTietDonHang_Table_SanPham]
GO
ALTER TABLE [dbo].[Table_DonHang]  WITH CHECK ADD  CONSTRAINT [FK_Table_DonHang_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Table_DonHang] CHECK CONSTRAINT [FK_Table_DonHang_AspNetUsers]
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
