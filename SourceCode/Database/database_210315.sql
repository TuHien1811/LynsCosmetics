USE [master]
GO
/****** Object:  Database [CosmeticsShop]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/15/2021 5:38:42 PM ******/
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
/****** Object:  Table [dbo].[Table_DanhMuc]    Script Date: 3/15/2021 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NULL,
	[TinhTrangDM] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_SanPham]    Script Date: 3/15/2021 5:38:42 PM ******/
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
	[GhiChu] [nvarchar](50) NULL,
	[GioiThieu] [ntext] NULL,
 CONSTRAINT [PK_Table_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_ThuongHieu]    Script Date: 3/15/2021 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](100) NULL,
	[TinhTrangTH] [nvarchar](50) NULL,
	[LogoTH] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/15/2021 5:38:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
