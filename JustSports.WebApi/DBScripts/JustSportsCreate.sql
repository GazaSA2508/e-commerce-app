
GO
/****** Object:  Table [dbo].[Basket]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basket](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItem]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BasketId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[PurchasePrice] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_BasketItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](60) NULL,
	[Surname] [varchar](60) NULL,
	[CellNumber] [varchar](15) NULL,
	[Email] [varchar](250) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetimeoffset](7) NOT NULL,
	[OrderNumber] [varchar](15) NOT NULL,
	[AmountInclVat] [decimal](18, 0) NOT NULL,
	[Vat] [decimal](18, 0) NOT NULL,
	[AmountExclVat] [decimal](18, 0) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[BasketId] [bigint] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[PurchasePrice] [decimal](18, 0) NOT NULL,
	[Quantity] [nchar](10) NOT NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2022/06/17 06:50:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](120) NULL,
	[ImageUrl] [varchar](150) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[QuantityAvailable] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Basket] ON 

INSERT [dbo].[Basket] ([Id], [CreatedDate], [CustomerId], [IsDeleted]) VALUES (9, CAST(N'2022-06-17T06:16:13.6063660+02:00' AS DateTimeOffset), 9, 1)
INSERT [dbo].[Basket] ([Id], [CreatedDate], [CustomerId], [IsDeleted]) VALUES (10, CAST(N'2022-06-17T06:23:56.2808644+02:00' AS DateTimeOffset), 9, 1)
INSERT [dbo].[Basket] ([Id], [CreatedDate], [CustomerId], [IsDeleted]) VALUES (11, CAST(N'2022-06-17T06:27:42.9796945+02:00' AS DateTimeOffset), 9, 1)
INSERT [dbo].[Basket] ([Id], [CreatedDate], [CustomerId], [IsDeleted]) VALUES (12, CAST(N'2022-06-17T06:30:39.3348249+02:00' AS DateTimeOffset), 9, 1)
INSERT [dbo].[Basket] ([Id], [CreatedDate], [CustomerId], [IsDeleted]) VALUES (13, CAST(N'2022-06-17T06:34:58.3551067+02:00' AS DateTimeOffset), 9, 1)
SET IDENTITY_INSERT [dbo].[Basket] OFF
GO
SET IDENTITY_INSERT [dbo].[BasketItem] ON 

INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (17, 9, 1, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (18, 9, 2, CAST(250 AS Decimal(18, 0)), 2)
INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (19, 10, 1, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (20, 11, 1, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (21, 12, 1, CAST(150 AS Decimal(18, 0)), 1)
INSERT [dbo].[BasketItem] ([Id], [BasketId], [ProductId], [PurchasePrice], [Quantity]) VALUES (22, 13, 1, CAST(150 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[BasketItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Cycling')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Running 22')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Swimming')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Fishing')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Surfing')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Diving')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Kiteboarding')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Water Polo')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (9, N'Golf')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (10, N'Tennis')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (11, N'Rugby')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (12, N'Soccer')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (13, N'Cricket')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (14, N'Hockey')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (15, N'American Football - NFL')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (16, N'zzz')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Surname], [CellNumber], [Email], [Password], [IsEmailVerified]) VALUES (9, N'', N'', N'', N'garreth@digitalcrayon.co.za', N'02C7F6D98465638C4AC5A1C7A744D92B', 0)
INSERT [dbo].[Customer] ([Id], [Name], [Surname], [CellNumber], [Email], [Password], [IsEmailVerified]) VALUES (10, N'', N'', N'', N'garreth@test.com', N'02C7F6D98465638C4AC5A1C7A744D92B', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [AmountInclVat], [Vat], [AmountExclVat], [OrderStatus], [BasketId], [CustomerId]) VALUES (1, CAST(N'2022-06-17T06:23:01.1300001+02:00' AS DateTimeOffset), N'ORD-9-0001', CAST(650 AS Decimal(18, 0)), CAST(98 AS Decimal(18, 0)), CAST(553 AS Decimal(18, 0)), 1, 9, 9)
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [AmountInclVat], [Vat], [AmountExclVat], [OrderStatus], [BasketId], [CustomerId]) VALUES (2, CAST(N'2022-06-17T06:24:21.4752616+02:00' AS DateTimeOffset), N'ORD-9-0002', CAST(150 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), CAST(128 AS Decimal(18, 0)), 1, 10, 9)
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [AmountInclVat], [Vat], [AmountExclVat], [OrderStatus], [BasketId], [CustomerId]) VALUES (3, CAST(N'2022-06-17T06:28:00.9343965+02:00' AS DateTimeOffset), N'ORD-9-0003', CAST(150 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), CAST(128 AS Decimal(18, 0)), 1, 11, 9)
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [AmountInclVat], [Vat], [AmountExclVat], [OrderStatus], [BasketId], [CustomerId]) VALUES (4, CAST(N'2022-06-17T06:30:51.8236779+02:00' AS DateTimeOffset), N'ORD-9-0004', CAST(150 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), CAST(128 AS Decimal(18, 0)), 1, 12, 9)
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [AmountInclVat], [Vat], [AmountExclVat], [OrderStatus], [BasketId], [CustomerId]) VALUES (5, CAST(N'2022-06-17T06:35:10.3836917+02:00' AS DateTimeOffset), N'ORD-9-0005', CAST(150 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)), CAST(128 AS Decimal(18, 0)), 1, 13, 9)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (5, 1, 1, CAST(150 AS Decimal(18, 0)), N'1         ')
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (6, 1, 2, CAST(250 AS Decimal(18, 0)), N'2         ')
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (7, 2, 1, CAST(150 AS Decimal(18, 0)), N'1         ')
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (8, 3, 1, CAST(150 AS Decimal(18, 0)), N'1         ')
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (9, 4, 1, CAST(150 AS Decimal(18, 0)), N'1         ')
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [PurchasePrice], [Quantity]) VALUES (10, 5, 1, CAST(150 AS Decimal(18, 0)), N'1         ')
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (1, N'Sports Team T-Shirt', N'assets/prodImages/prod1.jpg', CAST(350 AS Decimal(18, 0)), 50, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (2, N'Baseball Mitt', N'assets/prodImages/prod2.jpg', CAST(250 AS Decimal(18, 0)), 50, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (3, N'Basketball Shoes', N'assets/prodImages/prod3.jpg', CAST(1750 AS Decimal(18, 0)), 10, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (4, N'Sports Shoes', N'assets/prodImages/prod4.jpg', CAST(875 AS Decimal(18, 0)), 10, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (5, N'Soccer Boots', N'assets/prodImages/prod5.jpg', CAST(1250 AS Decimal(18, 0)), 25, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (6, N'Volley Ball', N'assets/prodImages/prod6.jpg', CAST(299 AS Decimal(18, 0)), 5, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (7, N'Gym Towel', N'assets/prodImages/prod7.jpg', CAST(100 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (8, N'Practice T-Shirt', N'assets/prodImages/prod8.jpg', CAST(699 AS Decimal(18, 0)), 12, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (9, N'Golf Tee', N'assets/prodImages/prod9.jpg', CAST(450 AS Decimal(18, 0)), 17, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (10, N'Soccer Gloves', N'assets/prodImages/prod10.jpg', CAST(390 AS Decimal(18, 0)), 22, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (11, N'Fitness T-Shirt', N'assets/prodImages/prod11.jpg', CAST(225 AS Decimal(18, 0)), 18, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (12, N'Soccer Ball', N'assets/prodImages/prod12.jpg', CAST(225 AS Decimal(18, 0)), 22, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (13, N'NFL Helmet', N'assets/prodImages/prod13.jpg', CAST(700 AS Decimal(18, 0)), 10, 1)
INSERT [dbo].[Product] ([Id], [Name], [ImageUrl], [Price], [QuantityAvailable], [CategoryId]) VALUES (14, N'Ladies Soccer Balll', N'assets/prodImages/prod14.jpg', CAST(225 AS Decimal(18, 0)), 11, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Basket] ADD  CONSTRAINT [DF_Basket_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsVerified]  DEFAULT ((0)) FOR [IsEmailVerified]
GO
ALTER TABLE [dbo].[Basket]  WITH CHECK ADD  CONSTRAINT [FK_CustomerBasket] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Basket] CHECK CONSTRAINT [FK_CustomerBasket]
GO
ALTER TABLE [dbo].[BasketItem]  WITH CHECK ADD  CONSTRAINT [FK_Basket_BasketItem] FOREIGN KEY([BasketId])
REFERENCES [dbo].[Basket] ([Id])
GO
ALTER TABLE [dbo].[BasketItem] CHECK CONSTRAINT [FK_Basket_BasketItem]
GO
ALTER TABLE [dbo].[BasketItem]  WITH CHECK ADD  CONSTRAINT [FK_Product_BasketItem] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[BasketItem] CHECK CONSTRAINT [FK_Product_BasketItem]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_BasketOrder] FOREIGN KEY([BasketId])
REFERENCES [dbo].[Basket] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_BasketOrder]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_CustomerOrder] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_CustomerOrder]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderItem] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_Order_OrderItem]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_Product_OrderItem] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_Product_OrderItem]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProduct] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_CategoryProduct]
GO
