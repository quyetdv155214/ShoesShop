USE [master]
GO
/****** Object:  Database [ShoesShop]    Script Date: 12/9/2016 12:55:31 AM ******/
CREATE DATABASE [ShoesShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoesShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShoesShop.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoesShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShoesShop_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoesShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoesShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoesShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoesShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoesShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoesShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoesShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoesShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoesShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoesShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoesShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShoesShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoesShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoesShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoesShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoesShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoesShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoesShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoesShop] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoesShop] SET  MULTI_USER 
GO
ALTER DATABASE [ShoesShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoesShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoesShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoesShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoesShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoesShop]
GO
/****** Object:  Table [dbo].[BrandTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandTBL](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NULL,
 CONSTRAINT [PK_BrandTBL] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriTBL](
	[CategoeiID] [int] IDENTITY(1,1) NOT NULL,
	[CategoriName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CategoriTBL] PRIMARY KEY CLUSTERED 
(
	[CategoeiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiscountTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountTBL](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [nvarchar](50) NULL,
 CONSTRAINT [PK_DiscountTBL] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KindTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KindTBL](
	[KindID] [int] IDENTITY(1,1) NOT NULL,
	[KindName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kind] PRIMARY KEY CLUSTERED 
(
	[KindID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTBL](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Email] [nvarchar](200) NULL,
 CONSTRAINT [PK_OrderTBL] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTBL](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[BrandID] [int] NULL,
	[TypeID] [int] NULL,
	[DiscountID] [int] NULL,
	[CategoriID] [int] NULL,
	[KindID] [int] NULL,
	[Url] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductTBL] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTBL](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeTBL] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTBL]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTBL](
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[MobieNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserTBL] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BrandTBL] ON 

INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (1, N'Roadstar')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (2, N'Tornado')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (3, N'Kissan')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (4, N'Oakley')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (5, N'Manga')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (6, N'Wega')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (7, N'Kings')
INSERT [dbo].[BrandTBL] ([BrandID], [BrandName]) VALUES (8, N'Zumba')
SET IDENTITY_INSERT [dbo].[BrandTBL] OFF
SET IDENTITY_INSERT [dbo].[CategoriTBL] ON 

INSERT [dbo].[CategoriTBL] ([CategoeiID], [CategoriName]) VALUES (1, N'Running')
INSERT [dbo].[CategoriTBL] ([CategoeiID], [CategoriName]) VALUES (2, N'Foot Ball')
INSERT [dbo].[CategoriTBL] ([CategoeiID], [CategoriName]) VALUES (3, N'Daily')
INSERT [dbo].[CategoriTBL] ([CategoeiID], [CategoriName]) VALUES (4, N'Sneakers')
SET IDENTITY_INSERT [dbo].[CategoriTBL] OFF
SET IDENTITY_INSERT [dbo].[DiscountTBL] ON 

INSERT [dbo].[DiscountTBL] ([DiscountID], [DiscountName]) VALUES (1, N'Upto-10%')
INSERT [dbo].[DiscountTBL] ([DiscountID], [DiscountName]) VALUES (2, N'40%-50%')
INSERT [dbo].[DiscountTBL] ([DiscountID], [DiscountName]) VALUES (3, N'30%-20%')
INSERT [dbo].[DiscountTBL] ([DiscountID], [DiscountName]) VALUES (4, N'10%-5%')
INSERT [dbo].[DiscountTBL] ([DiscountID], [DiscountName]) VALUES (5, N'Other')
SET IDENTITY_INSERT [dbo].[DiscountTBL] OFF
SET IDENTITY_INSERT [dbo].[KindTBL] ON 

INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (1, N'Men')
INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (2, N'Women')
INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (3, N'Kids')
SET IDENTITY_INSERT [dbo].[KindTBL] OFF
SET IDENTITY_INSERT [dbo].[OrderTBL] ON 

INSERT [dbo].[OrderTBL] ([OrderID], [ProductID], [Quantity], [Email]) VALUES (1, 25, 2, N'ahihi@gmail.com')
INSERT [dbo].[OrderTBL] ([OrderID], [ProductID], [Quantity], [Email]) VALUES (2, 24, 4, N'ahihi@gmail.com')
SET IDENTITY_INSERT [dbo].[OrderTBL] OFF
SET IDENTITY_INSERT [dbo].[ProductTBL] ON 

INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (6, N'Nike Air Footscape Woven Chkka SE', 1, 1, 1, 1, 1, N'resource\image\Man\air-footscape-woven-chukka-se-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (7, N'Nike Air Force 1 07 LV8', 1, 6, 1, 3, 1, N'resource\image\Man\air-force-1-07-lv8-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (8, N'Air Jordan 1 Mid', 1, 1, 1, 4, 1, N'resource\image\Man\air-jordan-1-mid-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (9, N'Air Jordan 9 Retro', 2, 1, 1, 4, 1, N'resource\image\Man\air-jordan-9-retro-shoe.jpg', 300, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (10, N'Nike Air Presto Mid Utility', 3, 1, 1, 4, 1, N'resource\image\Man\air-presto-mid-utility-shoe.jpg', 220, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (11, N'Nike Flylon Train Dynamic', 7, 1, 1, 2, 1, N'resource\image\Man\flylon-train-dynamic-training-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (12, N'Nike Free RN Distance', 8, 8, 1, 3, 1, N'resource\image\Man\free-rn-distance-running-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (13, N'Nike LunarGlide 8', 6, 8, 1, 1, 1, N'resource\image\Man\free-rn-running-shoe.jpg', 170, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (14, N'Nike Hyperdunk 2016', 4, 8, 1, 4, 1, N'resource\image\Man\hyperdunk-2016-basketball-shoe.jpg', 250, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (15, N'Jordan Extra Fly', 5, 1, 1, 1, 1, N'resource\image\Man\jordan-extrafly-basketball-shoe.jpg', 250, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (16, N'Kobe XI', 2, 4, 1, 1, 1, N'resource\image\Man\kobe-xi-basketball-shoe (1).jpg', 300, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (17, N'Kobe XI(Black-Silver)', 2, 4, 1, 1, 1, N'resource\image\Man\kobe-xi-basketball-shoe (2).jpg', 300, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (18, N'Kobe XI(White)', 2, 4, 1, 1, 1, N'resource\image\Man\kobe-xi-basketball-shoe.jpg', 300, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (19, N'Nike Lunar Force 1 Duckboot', 1, 4, 1, 4, 1, N'resource\image\Man\lunar-force-1-duckboot-boot.jpg', 280, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (20, N'NikeID X Will Leather Good', 4, 4, 1, 3, 1, N'resource\image\Man\metcon-2-training-shoe.jpg', 280, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (21, N'Nike Sock Dart SE Premium', 1, 4, 1, 1, 1, N'resource\image\Man\sock-dart-se-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (22, N'Nike Zoom Lebron Soldier 10', 3, 4, 1, 4, 1, N'resource\image\Man\zoom-lebron-soldier-10-basketball-shoe.jpg', 160, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (23, N'Nike Air Huarache Ultra', 2, 1, 1, 1, 2, N'resource\image\Women\air-huarache-ultra-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (24, N'Nike Air Max 90 Ultra Breathe', 5, 1, 1, 1, 2, N'resource\image\Women\air-max-90-ultra-breathe-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (25, N'Nike Air Max Thea Mid', 2, 1, 1, 3, 2, N'resource\image\Women\air-max-thea-mid-shoe.jpg', 220, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (26, N'Nike Air Max Thea SE', 2, 1, 1, 4, 2, N'resource\image\Women\air-max-thea-se-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (27, N'Nike Air Zoom Prgasus 33', 6, 1, 1, 1, 2, N'resource\image\Women\air-zoom-pegasus-33-running-shoe.jpg', 170, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (28, N'Nike Cortez Ultra SE', 4, 6, 1, 3, 2, N'resource\image\Women\cortez-ultra-se-shoe.jpg', 130, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (29, N'Nike Flyknit Air Max ID', 1, 6, 1, 1, 2, N'resource\image\Women\download (1).png', 400, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (30, N'Nike Flyknit Air Max ID(Dark Violet)', 1, 6, 1, 1, 2, N'resource\image\Women\download (2).png', 400, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (31, N'Nike Flyknit Air Max ID(Special)', 1, 6, 1, 1, 2, N'resource\image\Women\download.png', 440, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (32, N'Nike LunarGiles 8ID', 7, 6, 1, 1, 2, N'resource\image\Women\free-rn-running-shoe (1).jpg', 220, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (33, N'Nike LunarGiles 8ID(Pink)', 7, 6, 1, 1, 2, N'resource\image\Women\free-rn-running-shoe (2).jpg', 220, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (34, N'Nike LunarGiles 8ID(Orange)', 7, 6, 1, 1, 2, N'resource\image\Women\free-rn-running-shoe (3).jpg', 220, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (35, N'Nike Air Max 201', 1, 1, 1, 1, 3, N'resource\image\Kid\air-max-2017-older-running-shoe (1).jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (36, N'Nike Air Max 201(Back Ocean)', 1, 1, 1, 1, 3, N'resource\image\Kid\air-max-2017-older-running-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (37, N'Nike Air Max 90 SE Leather', 2, 1, 1, 4, 3, N'resource\image\Kid\air-max-90-se-leather-older-shoe.jpg', 130, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (38, N'Nike Air Max 90 Ultra PT', 7, 1, 1, 4, 3, N'resource\image\Kid\air-max-90-ultra-pt-older-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (39, N'Nike Air Max Tavas', 8, 1, 1, 1, 3, N'resource\image\Kid\air-max-tavas-older-shoe.jpg', 150, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (40, N'Nike Air Zoom Pegasus 33', 3, 1, 1, 3, 3, N'resource\image\Kid\air-zoom-pegasus-33-older-running-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (41, N'Nike Air Zoom Pegasus 33 Shield', 4, 1, 1, 1, 3, N'resource\image\Kid\air-zoom-pegasus-33-shield-older-running-shoe (1).jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (42, N'Nike Air Zoom Pegasus 33 Shield', 3, 1, 1, 1, 3, N'resource\image\Kid\air-zoom-pegasus-33-shield-older-running-shoe.jpg', 200, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (43, N'Nike Air Free RN', 4, 1, 1, 1, 3, N'resource\image\Kid\free-rn-older-running-shoe.jpg', 180, N'')
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (44, N'Nike Air Huarache', 4, 1, 1, 4, 3, N'resource\image\Kid\huarache-older-shoe.jpg', 200, N'')
SET IDENTITY_INSERT [dbo].[ProductTBL] OFF
SET IDENTITY_INSERT [dbo].[TypeTBL] ON 

INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (1, N'Air Max')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (2, N'Armagadon')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (3, N'Helium')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (4, N'Kyron')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (5, N'Napolean')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (6, N'Foot Rock')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (7, N'Radiated')
INSERT [dbo].[TypeTBL] ([TypeID], [TypeName]) VALUES (8, N'Spiked')
SET IDENTITY_INSERT [dbo].[TypeTBL] OFF
INSERT [dbo].[UserTBL] ([FirstName], [LastName], [Email], [Password], [MobieNumber]) VALUES (N'Admin', N'Dep trai', N'admin@google.com', N'admin', N'0123456789')
INSERT [dbo].[UserTBL] ([FirstName], [LastName], [Email], [Password], [MobieNumber]) VALUES (N'Do', N'Quyet', N'ahihi@gmail.com', N'MTIzNDU2', N'0164999999')
ALTER TABLE [dbo].[OrderTBL]  WITH CHECK ADD  CONSTRAINT [FK_OrderTBL_ProductTBL] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductTBL] ([ProductID])
GO
ALTER TABLE [dbo].[OrderTBL] CHECK CONSTRAINT [FK_OrderTBL_ProductTBL]
GO
ALTER TABLE [dbo].[OrderTBL]  WITH CHECK ADD  CONSTRAINT [FK_OrderTBL_UserTBL] FOREIGN KEY([Email])
REFERENCES [dbo].[UserTBL] ([Email])
GO
ALTER TABLE [dbo].[OrderTBL] CHECK CONSTRAINT [FK_OrderTBL_UserTBL]
GO
ALTER TABLE [dbo].[ProductTBL]  WITH CHECK ADD  CONSTRAINT [FK_ProductTBL_BrandTBL] FOREIGN KEY([BrandID])
REFERENCES [dbo].[BrandTBL] ([BrandID])
GO
ALTER TABLE [dbo].[ProductTBL] CHECK CONSTRAINT [FK_ProductTBL_BrandTBL]
GO
ALTER TABLE [dbo].[ProductTBL]  WITH CHECK ADD  CONSTRAINT [FK_ProductTBL_CategoriTBL] FOREIGN KEY([CategoriID])
REFERENCES [dbo].[CategoriTBL] ([CategoeiID])
GO
ALTER TABLE [dbo].[ProductTBL] CHECK CONSTRAINT [FK_ProductTBL_CategoriTBL]
GO
ALTER TABLE [dbo].[ProductTBL]  WITH CHECK ADD  CONSTRAINT [FK_ProductTBL_DiscountTBL] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[DiscountTBL] ([DiscountID])
GO
ALTER TABLE [dbo].[ProductTBL] CHECK CONSTRAINT [FK_ProductTBL_DiscountTBL]
GO
ALTER TABLE [dbo].[ProductTBL]  WITH CHECK ADD  CONSTRAINT [FK_ProductTBL_KindTBL] FOREIGN KEY([KindID])
REFERENCES [dbo].[KindTBL] ([KindID])
GO
ALTER TABLE [dbo].[ProductTBL] CHECK CONSTRAINT [FK_ProductTBL_KindTBL]
GO
ALTER TABLE [dbo].[ProductTBL]  WITH CHECK ADD  CONSTRAINT [FK_ProductTBL_TypeTBL] FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeTBL] ([TypeID])
GO
ALTER TABLE [dbo].[ProductTBL] CHECK CONSTRAINT [FK_ProductTBL_TypeTBL]
GO
/****** Object:  StoredProcedure [dbo].[ChangePassword]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ChangePassword]
	-- Add the parameters for the stored procedure here
	
	@email nvarchar(200),
	@password nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	UPDATE [UserTBL]
	SET  [Password] = @password
	WHERE  Email = @email
END


GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckLogin]
	-- Add the parameters for the stored procedure here
	@email nvarchar(200),
	@password nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from UserTBL u where u.Email = @email and u.Password = @password
END


GO
/****** Object:  StoredProcedure [dbo].[CreatOrder]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatOrder]
	-- Add the parameters for the stored procedure here
	@productID int,
	@quantity int,
	@email nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		INSERT INTO [dbo].[OrderTBL]
           ([ProductID]
           ,[Quantity]
           ,[Email])
     VALUES
           (@productID
           ,@quantity
           ,@email)
END


GO
/****** Object:  StoredProcedure [dbo].[CreatUser]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatUser]
	-- Add the parameters for the stored procedure here
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@email nvarchar(200),
	@password nvarchar(50),
	@mobileNumber nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	INSERT INTO [dbo].[UserTBL]
           ([FirstName]
           ,[LastName]
           ,[Email]
           ,[Password]
           ,[MobieNumber])
     VALUES
           (@firstName,
           @lastName,
           @email,
           @password,
           @mobileNumber)
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteOrder]
	-- Add the parameters for the stored procedure here
	@productID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[OrderTBL]
      WHERE ProductID = @productID
END


GO
/****** Object:  StoredProcedure [dbo].[getBrand]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getBrand]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from BrandTBL
END


GO
/****** Object:  StoredProcedure [dbo].[getCategori]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCategori]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from CategoriTBL
END


GO
/****** Object:  StoredProcedure [dbo].[getDiscount]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDiscount]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from DiscountTBL
END


GO
/****** Object:  StoredProcedure [dbo].[getKind]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getKind]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	SELECT  *   FROM [ShoesShop].[dbo].[KindTBL]

END


GO
/****** Object:  StoredProcedure [dbo].[getOrderOfUser]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getOrderOfUser]
	-- Add the parameters for the stored procedure here
	@email nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from OrderTBL o where o.email = @email
END


GO
/****** Object:  StoredProcedure [dbo].[getPagerProduct]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getPagerProduct]
	-- Add the parameters for the stored procedure here
	@pageHead int,
	@pageTail int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ProductID]
      ,[ProductName]
      ,[BrandID]
      ,[TypeID]
      ,[DiscountID]
      ,[CategoriID]
      ,[KindID]
      ,[Url]
      ,[Price]
      ,[Detail],RowNum
  FROM  (select ROW_NUMBER() over ( order by [ProductID] asc ) as RowNum  , * from ProductTBL p ) RowNum where RowNum between @pageHead and @pageTail

END

/****** 
SELECT p.ProductName , k.KindName, c.CategoriName, b.BrandName , t.TypeName, d.DiscountName
  FROM (([ShoesShop].[dbo].[ProductTBL] p join CategoriTBL c on c.CategoeiID = p.CategoriID)
  join BrandTBL b on b.BrandID = p.BrandID)
  join DiscountTBL d on d.DiscountID = p.DiscountID
  join KindTBL k on k.KindID = p.KindID
  join TypeTBL t on t.TypeID = p.TypeID 
  group by k.KindName, c.CategoriName, b.BrandName , t.TypeName, d.DiscountName, p.ProductName
  
  ******/

GO
/****** Object:  StoredProcedure [dbo].[getProductByKind]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getProductByKind]
	-- Add the parameters for the stored procedure here
	@kindID int,
	@pageHead int,
	@pageTail int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

		SELECT [ProductID]
      ,[ProductName]
      ,[BrandID]
      ,[TypeID]
      ,[DiscountID]
      ,[CategoriID]
      ,[KindID]
      ,[Url]
      ,[Price]
      ,[Detail],RowNum
  FROM  (select ROW_NUMBER() over ( order by [ProductID] asc ) as RowNum  , * from ProductTBL p where p.KindID=@kindID ) RowNum where RowNum between @pageHead and @pageTail


END


GO
/****** Object:  StoredProcedure [dbo].[getType]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getType]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TypeTBL
END


GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 12/9/2016 12:55:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[search]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	select COUNT(*) as totalRecord from  (SELECT *  FROM  (select ROW_NUMBER() over ( order by [ProductID] asc ) as RowNum  , * from ProductTBL p where p.KindID = 1 ) result) re

END


GO
USE [master]
GO
ALTER DATABASE [ShoesShop] SET  READ_WRITE 
GO
