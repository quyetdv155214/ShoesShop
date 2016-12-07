USE [ShoesShop]
GO
/****** Object:  Table [dbo].[BrandTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  Table [dbo].[CategoriTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriTBL](
	[CategoriName] [nvarchar](50) NULL,
	[CategoeiID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CategoriTBL] PRIMARY KEY CLUSTERED 
(
	[CategoeiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiscountTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountTBL](
	[DiscountName] [nvarchar](50) NULL,
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DiscountTBL] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KindTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  Table [dbo].[OrderTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  Table [dbo].[ProductTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  Table [dbo].[TypeTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  Table [dbo].[UserTBL]    Script Date: 12/6/2016 10:34:59 PM ******/
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

INSERT [dbo].[CategoriTBL] ([CategoriName], [CategoeiID]) VALUES (N'Running', 1)
INSERT [dbo].[CategoriTBL] ([CategoriName], [CategoeiID]) VALUES (N'Foot Ball', 2)
INSERT [dbo].[CategoriTBL] ([CategoriName], [CategoeiID]) VALUES (N'Daily', 3)
INSERT [dbo].[CategoriTBL] ([CategoriName], [CategoeiID]) VALUES (N'Sneakers', 4)
SET IDENTITY_INSERT [dbo].[CategoriTBL] OFF
SET IDENTITY_INSERT [dbo].[DiscountTBL] ON 

INSERT [dbo].[DiscountTBL] ([DiscountName], [DiscountID]) VALUES (N'Upto-10%', 1)
INSERT [dbo].[DiscountTBL] ([DiscountName], [DiscountID]) VALUES (N'40%-50%', 2)
INSERT [dbo].[DiscountTBL] ([DiscountName], [DiscountID]) VALUES (N'30%-20%', 3)
INSERT [dbo].[DiscountTBL] ([DiscountName], [DiscountID]) VALUES (N'10%-5%', 4)
INSERT [dbo].[DiscountTBL] ([DiscountName], [DiscountID]) VALUES (N'Other', 5)
SET IDENTITY_INSERT [dbo].[DiscountTBL] OFF
SET IDENTITY_INSERT [dbo].[KindTBL] ON 

INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (1, N'Men')
INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (2, N'Women')
INSERT [dbo].[KindTBL] ([KindID], [KindName]) VALUES (3, N'Kids')
SET IDENTITY_INSERT [dbo].[KindTBL] OFF
SET IDENTITY_INSERT [dbo].[OrderTBL] ON 

INSERT [dbo].[OrderTBL] ([OrderID], [ProductID], [Quantity], [Email]) VALUES (1, 2, 5, N'admin@google.com')
SET IDENTITY_INSERT [dbo].[OrderTBL] OFF
SET IDENTITY_INSERT [dbo].[ProductTBL] ON 

INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (1, N'Shoe1', 1, 1, 1, 1, 1, NULL, 100, NULL)
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (2, N'Shoe2', 2, 2, 2, 2, 2, NULL, 200, NULL)
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (3, N'Shoe3', 3, 3, 3, 3, 3, NULL, 300, NULL)
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (4, N'Shoe4', 4, 4, 4, 4, 3, NULL, 400, NULL)
INSERT [dbo].[ProductTBL] ([ProductID], [ProductName], [BrandID], [TypeID], [DiscountID], [CategoriID], [KindID], [Url], [Price], [Detail]) VALUES (5, N'Shoe5', 5, 5, 5, 1, 1, NULL, 500, NULL)
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
/****** Object:  StoredProcedure [dbo].[ChangePassword]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CreatOrder]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CreatUser]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getAllProduct]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAllProduct]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL
END

GO
/****** Object:  StoredProcedure [dbo].[getOrderOfUser]    Script Date: 12/6/2016 10:34:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[getProductByBrand]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getProductByBrand]
	-- Add the parameters for the stored procedure here
	@brandID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL p where p.BrandID = @brandID
END

GO
/****** Object:  StoredProcedure [dbo].[getProductByCategori]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getProductByCategori]
	-- Add the parameters for the stored procedure here
	@categoriID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL p where p.CategoriID = @categoriID
END

GO
/****** Object:  StoredProcedure [dbo].[getProductByDiscount]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getProductByDiscount]
	-- Add the parameters for the stored procedure here
	@discountID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL p where p.DiscountID = @discountID
END

GO
/****** Object:  StoredProcedure [dbo].[getProductByKind]    Script Date: 12/6/2016 10:34:59 PM ******/
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
	@kindID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL p where p.KindID = @kindID
END

GO
/****** Object:  StoredProcedure [dbo].[getProductByType]    Script Date: 12/6/2016 10:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getProductByType]
	-- Add the parameters for the stored procedure here
	@typeID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from ProductTBL p where p.TypeID = @typeID
END

GO
