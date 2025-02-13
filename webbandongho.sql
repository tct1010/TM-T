USE master
GO
create database watchstore2
GO
USE watchstore2
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableId] [int] NULL,
	[ParentId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CustemerId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Updated_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [int] NULL,
	[Trash] [int] NULL,
	[DeliveryPaymentMethod] [nvarchar](max) NULL,
	[StatusPayment] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topid] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
	[Created_By] [int] NULL,
	[Updated_At] [datetime] NOT NULL,
	[Updated_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRate]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[CreateAt] [datetime] NULL,
 CONSTRAINT [PK_ProductRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[ProRate] [float] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/19/2021 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Dong ho Nam', N'dong-ho-nam', 8, NULL, N'Đồng hồ nam', N'Đồng hồ nam', CAST(N'2021-03-31T21:49:13.243' AS DateTime), 21, CAST(N'2021-03-31T21:49:13.243' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Đồng hồ nữ', N'dong-ho-nu', 8, NULL, N'Đồng hồ nữ', N'Đồng hồ nữ', CAST(N'2021-03-31T22:10:14.160' AS DateTime), 21, CAST(N'2021-03-31T22:10:14.160' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Dây đồng hồ', N'day-dong-ho', 8, NULL, N'Dây đồng hồ', N'Dây đồng hồ', CAST(N'2021-03-31T21:49:34.903' AS DateTime), 21, CAST(N'2021-03-31T21:49:34.903' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', 0, NULL, N'Cao Cấp - Sang Trọng', N'Cao Cấp - Sang Trọng', CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, 0)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'Đồng hồ', N'dong-ho', 0, NULL, N'Đồng hồ', N'Đồng hồ', CAST(N'2021-03-31T21:47:40.227' AS DateTime), 21, CAST(N'2021-03-31T21:47:40.227' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'WEIMAR', N'weimar', 1, NULL, N'WEIMAR
', N'Là thành phố được biết đến như cái nôi của nghệ thuật Bauhaus đỉnh cao, Weimar đại diện cho những giá trị khởi nguồn đầy cảm hứng. Với thiết kế theo hơi hướng cổ điển nhưng không hề rườm rà, đồng hồ Weimar chính là điểm nhấn trên cổ tay của các tín đồ yêu sự tối giản.', CAST(N'2021-03-31T15:55:50.977' AS DateTime), 21, CAST(N'2021-03-31T15:55:50.977' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'COLOSSEUM', N'colosseum', 1, NULL, N'COLOSSEUM
', N'Lấy cảm hứng từ Đấu trường La Mã lịch sử, Colosseum ra đời đại diện cho sự mãnh mẽ, phiêu lưu và lòng quyết tâm chinh phục mọi khao khát của một người đàn ông trưởng thành. Thiết kế mặt 42mm hiện đại, vững chắc cùng 2 sub-dial độc đáo sẽ khiến bạn trở nên nổi bật và cá tính hơn bao giờ hết.', CAST(N'2021-03-31T15:56:10.457' AS DateTime), 21, CAST(N'2021-03-31T15:56:10.457' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'KASHMIR', N'kashmir', 1, NULL, N'KASHMIR', N'Là dòng đồng hồ đầu tiên của Curnon, Kashmir định hình một triết lí thiết kế tối giản, hiện đại và đại diện cho sự tự tin. Thời trang, kiến tạo và khát khao tuổi trẻ chính là tuyên ngôn bạn sẽ mang theo bên mình cùng với Kashmir.

', CAST(N'2021-03-31T21:48:52.607' AS DateTime), 21, CAST(N'2021-03-31T21:48:52.607' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'MELISSANI', N'melissani', 2, NULL, N'MELISSANI
', N'Lấy cảm hứng từ vẻ đẹp thiên nhiên hoang sơ được ví như "nàng tiên bước ra từ thần thoại", Melissani mang đầy đủ những nét đẹp của chiếc đồng hồ đáng mơ ước cho phái nữ: cá tính, quyến rũ và đầy bí ẩn. Đường kính 32mm, dễ dàng kết hợp cùng dây da và dây kim loại, phù hợp với mọi phong cách thời trang bạn yêu thích.', CAST(N'2021-03-31T15:57:26.453' AS DateTime), 21, CAST(N'2021-03-31T15:57:26.453' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'MORAINE', N'moraine', 2, NULL, N'MORAINE', N'Là dòng đồng hồ 28mm đầu tiên của Curnon, Moraine dành cho những cô gái có cổ tay nhỏ và yêu thích sự tối giản theo triết lí "Less is more". Các tông màu trung tính hay vàng hồng sang trọng luôn phù hợp để bạn tỏa sáng trong mọi dịp.

', CAST(N'2021-03-31T15:57:56.427' AS DateTime), 21, CAST(N'2021-03-31T15:57:56.427' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (14, N'BEVERLY', N'beverly', 2, NULL, N'BEVERLY
', N'Cảm giác bước đi trên ngọn đồi Beverly Hills sang trọng bậc nhất Hollywood sẽ thế nào? Đó chính là sự mềm mại, thanh lịch được truyền tải qua thiết kế tối giản với điểm nhấn là hình ảnh chiếc lá của Beverly.', CAST(N'2021-03-31T15:58:46.127' AS DateTime), 21, CAST(N'2021-03-31T15:58:46.127' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (15, N'DÂY DA BROWN', N'day-da-brown', 3, NULL, N'DÂY DA BROWN', N'DÂY DA BROWN', CAST(N'2021-03-31T16:00:29.110' AS DateTime), 21, CAST(N'2021-03-31T16:00:29.110' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (16, N'DÂY DA COGNAC', N'day-da-cognac', 3, NULL, N'DÂY DA COGNAC
', N'DÂY DA COGNAC
', CAST(N'2021-03-31T16:00:51.873' AS DateTime), 21, CAST(N'2021-03-31T16:00:51.873' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (17, N'DÂY KIM LOẠI', N'day-kim-loai', 3, NULL, N'DÂY KIM LOẠI
', N'DÂY KIM LOẠI
', CAST(N'2021-03-31T16:01:15.070' AS DateTime), 21, CAST(N'2021-03-31T16:01:15.070' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (19, N'Phụ kiện', N'phu-kien', 0, NULL, N'Phụ kiện', N'Phụ kiện', CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (20, N'Phụ kiện nam', N'phu-kien-nam', 19, NULL, N'Phụ kiện nam', N'Phụ kiện nam', CAST(N'2021-03-31T21:50:49.380' AS DateTime), 21, CAST(N'2021-03-31T21:50:49.380' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (21, N'Phụ kiện nữ', N'phu-kien-nu', 19, NULL, N'Phụ kiện nam', N'Phụ kiện nam', CAST(N'2021-03-31T21:51:01.077' AS DateTime), 21, CAST(N'2021-03-31T21:51:01.077' AS DateTime), 21, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Lê Gia Lai', N'lelaii200398@gmail.com', 364242261, N'1', N'1', 1, N'Đã trả lời', CAST(N'2021-02-14T09:56:30.000' AS DateTime), CAST(N'2021-02-16T19:38:35.147' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (2, N'd', N'd@gmail.com', 1, N'1', N'1', 1, N'ok', CAST(N'2021-02-14T22:34:46.000' AS DateTime), CAST(N'2021-02-16T22:34:44.707' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Lê Gia Lai', N'lelaii200398@gmail.com', 364242261, N'Test liên hệ 1', N'Test liên hệ 1', 0, NULL, CAST(N'2021-02-18T17:04:26.477' AS DateTime), CAST(N'2021-02-18T17:04:26.477' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (4, N'Lê Gia Lai', N'lelaii200398@gmail.com', 364242261, N'Test liên hệ 1', N'Test liên hệ 1', 0, NULL, CAST(N'2021-02-18T17:31:37.407' AS DateTime), CAST(N'2021-02-18T17:31:37.407' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (1, N'Đồng hồ nam', N'dong-ho-nam', N'category', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (2, N'Tin công ty', N'tin-cong-ty', N'topic', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (3, N'Đồng hồ nữ', N'dong-ho-nu', N'category', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (4, N'Dây đồng hồ', N'day-dong-ho', N'category', 3)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (5, N'Phụ Kiên', N'phu-kien', N'category', 4)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (6, N'Tư vấn mua laptop', N'tu-van-mua-laptop', N'topic', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (7, N'Giới thiệu', N'gioi-thieu', N'page', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (8, N'Hướng dẫn mua hàng', N'huong-dan-mua-hang', N'page', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (9, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', N'category', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (10, N'Cao Cấp - Sang Trọng done', N'cao-cap---sang-trong-done', N'category', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (11, N'Chính sách đổi, trả hàng', N'chinh-sach-doi--tra-hang', N'page', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (12, N'Laptop Đồ Họa', N'laptop-do-hoa', N'category', 7)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (13, N'Đồng hồ', N'dong-ho', N'category', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (14, N'WEIMAR', N'weimar', N'category', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (15, N'COLOSSEUM', N'colosseum', N'category', 10)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (16, N'KASHMIR', N'kashmir', N'category', 11)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (17, N'MELISSANI', N'melissani', N'category', 12)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (18, N'MORAINE', N'moraine', N'category', 13)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (19, N'BEVERLY', N'beverly', N'category', 14)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (20, N'DÂY DA BROWN', N'day-da-brown', N'category', 15)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (21, N'DÂY DA COGNAC', N'day-da-cognac', N'category', 16)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (22, N'DÂY KIM LOẠI', N'day-kim-loai', N'category', 17)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (23, N'Đồng hồ', N'dong-ho', N'category', 18)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (24, N'Phụ kiện', N'phu-kien', N'category', 19)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (25, N'Phụ kiện nam', N'phu-kien-nam', N'category', 20)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (26, N'Phụ kiện nữ', N'phu-kien-nu', N'category', 21)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (27, N'Thông tin web', N'thong-tin-web', N'topic', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (28, N'gioi thieu', N'gioi-thieu', N'page', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (30, N'Dưới 1 triệu', N'Dưới 1 triệu', N'category', NULL)
SET IDENTITY_INSERT [dbo].[Links] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Liên hệ', N'lien-he', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-14T09:56:13.000' AS DateTime), NULL, CAST(N'2021-02-18T17:38:08.937' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tin tức', N'tin-tuc', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:23:14.240' AS DateTime), NULL, CAST(N'2021-02-15T09:23:16.033' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Giới thiệu', N'gioi-thieu', N'page', 5, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:32:52.000' AS DateTime), NULL, CAST(N'2021-02-16T20:26:33.993' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (7, 7, 56, 3100000, 2, 6200000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (8, 10, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (9, 11, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (10, 16, 52, 3390000, 1, 3390000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (11, 17, 56, 3100000, 2, 6200000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (12, 18, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (13, 19, 52, 3390000, 1, 3390000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (14, 20, 53, 3390000, 1, 3390000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (15, 20, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (16, 21, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (17, 22, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (18, 23, 51, 3200000, 9, 28800000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (19, 24, 51, 3200000, 1, 3200000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (20, 25, 57, 3500000, 1, 3500000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (21, 26, 55, 3500000, 2, 7000000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (22, 27, 45, 2200000, 1, 2200000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (23, 28, 45, 2200000, 2, 4400000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (1, N'20210214090220', 1, CAST(N'2021-02-14T09:59:20.390' AS DateTime), CAST(N'2021-02-16T18:50:02.983' AS DateTime), N'123 tăng nhơn phú', N'Lê Gia Lai', N'01', N'lelaii200398@gmail.com', 1, CAST(N'2021-02-16T19:16:16.423' AS DateTime), 3, 0, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (2, N'20210218050227', 1, CAST(N'2021-02-18T17:05:27.907' AS DateTime), NULL, N'123 tăng nhơn phú', N'Lê Gia Lai', N'01', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (3, N'20210218050226', 2, CAST(N'2021-02-18T17:33:26.357' AS DateTime), CAST(N'2021-02-18T17:34:12.903' AS DateTime), N'123 tăng nhơn phú', N'Lê Gia Lai', N'0364242261', N'', 1, CAST(N'2021-02-18T17:34:12.903' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (4, N'20210323070357', 21, CAST(N'2021-03-23T19:24:57.953' AS DateTime), CAST(N'2021-03-23T19:28:59.807' AS DateTime), N'123 tăng nhơn phú', N'Quang anh day', N'098723972', N'', 21, CAST(N'2021-03-23T19:28:59.807' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (5, N'20210323070305', 21, CAST(N'2021-03-23T19:36:05.423' AS DateTime), NULL, N'123 tăng nhơn phú', N'Quang anh day', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (6, N'20210323070312', 21, CAST(N'2021-03-23T19:43:12.687' AS DateTime), NULL, N'123 tăng nhơn phú', N'Quang anh day', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (7, N'20210412050446', 20, CAST(N'2021-04-12T17:00:46.197' AS DateTime), NULL, N'Hà nội', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-14T18:09:02.560' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (10, N'20210412050438', 20, CAST(N'2021-04-12T17:03:38.963' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-12T18:13:48.173' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (11, N'20210412050435', 20, CAST(N'2021-04-12T17:06:35.370' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-12T18:13:47.190' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (12, N'20210412050426', 20, CAST(N'2021-04-12T17:09:26.507' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (13, N'20210412050427', 20, CAST(N'2021-04-12T17:09:27.873' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (14, N'20210412050416', 20, CAST(N'2021-04-12T17:16:16.627' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (15, N'20210412050417', 20, CAST(N'2021-04-12T17:16:17.933' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (16, N'20210412050459', 20, CAST(N'2021-04-12T17:36:59.167' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-12T18:13:45.960' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (17, N'20210412060418', 20, CAST(N'2021-04-12T18:05:18.650' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-14T18:09:01.297' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (18, N'20210412060401', 20, CAST(N'2021-04-12T18:08:01.827' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', 1, CAST(N'2021-04-12T18:13:40.697' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (19, N'20210412060404', 20, CAST(N'2021-04-12T18:10:04.253' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', 1, CAST(N'2021-04-12T18:13:39.707' AS DateTime), 1, 1, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (20, N'20210414060418', 20, CAST(N'2021-04-14T18:17:18.540' AS DateTime), NULL, N'', N'Quang Anh Tong', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (21, N'20210414060403', 20, CAST(N'2021-04-14T18:18:03.013' AS DateTime), NULL, N'204 Hoang Mai', N'123@gmail.com', N'098723972', N'', 1, CAST(N'2021-04-14T22:52:14.360' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (22, N'20210414060444', 20, CAST(N'2021-04-14T18:18:44.330' AS DateTime), NULL, N'204 Hoang Mai', N'123@gmail.com', N'098723972', N'', 1, CAST(N'2021-04-14T22:50:44.683' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (23, N'20210414060432', 20, CAST(N'2021-04-14T18:20:32.880' AS DateTime), NULL, N'Test', N'123@gmail.com', N'098723972', N'', 1, CAST(N'2021-04-15T00:29:02.540' AS DateTime), 2, 0, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (24, N'20210415090407', 20, CAST(N'2021-04-15T21:28:08.000' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (25, N'20210415090456', 20, CAST(N'2021-04-15T21:30:56.197' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (26, N'20210415090447', 20, CAST(N'2021-04-15T21:33:47.240' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (27, N'20210415090401', 20, CAST(N'2021-04-15T21:38:01.470' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (28, N'20210415090410', 20, CAST(N'2021-04-15T21:39:10.323' AS DateTime), NULL, N'204 Hoang Mai', N'Quang Anh Tong', N'098723972', N'123@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (9, 5, N'gioi thieu', N'gioi-thieu', N'<p># Được th&agrave;nh lập từ 1987 tại NewYork,perpetualtime.com&nbsp;l&agrave; đơn vị kinh doanh đồng hồ ch&iacute;nh h&atilde;ng l&agrave;m việc trực tiếp với c&aacute;c h&atilde;ng đồng hồ lớn để c&oacute; được mức gi&aacute; cạnh tranh nhất. So với gi&aacute; tại c&aacute;c cửa h&agrave;ng đồng hồ tại Việt Nam, ch&uacute;ng t&ocirc;i cam kết gi&aacute; sẽ thấp hơn từ 30-90%<em>.&nbsp;</em>Đ&acirc;y l&agrave; một lựa chọn cực kỳ kinh tế cho những người đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch đồng hồ.</p>

<p>perpetualtime.com&nbsp;lọt v&agrave;o top 10 c&aacute;c website thương mại điện tử đ&aacute;ng tin cậy nhất (https://otalliance.org/news-events/press-releases/online-trust-alliance-names-2015-most-trustworthy-ecommerce-sites). Với những nỗ lực hơn 20 năm trong ng&agrave;nh đồng hồ, đ&acirc;y l&agrave; sự đ&aacute;nh gi&aacute; rất đ&aacute;ng ghi nhận. V&agrave; như một lời hứa, Jomashop Vietnam cũng sẽ nỗ lực hết m&igrave;nh để mang đến cho những &ldquo;t&iacute;n đồ&rdquo; đồng hồ tại Việt Nam một chất lượng tuyệt vời như thế.</p>

<p># Với nhiều năm kinh nghiệm ph&acirc;n phối sản phẩm của&nbsp;perpetualtime.com;&nbsp;Jomashop Vietnam l&agrave; đơn vị kinh doanh đồng hồ, kh&ocirc;ng phải c&ocirc;ng ty vận chuyển n&ecirc;n sản phẩm đến tay bạn sẽ được đảm bảo điều kiện tốt nhất, kh&ocirc;ng sợ tr&aacute;o h&agrave;ng, đổi h&agrave;ng. Ngo&agrave;i ra bạn c&ograve;n nhận được dịch vụ hậu m&atilde;i, tư vấn, bảo h&agrave;nh ho&agrave;n hảo từ ch&uacute;ng t&ocirc;i.<br />
C&aacute;c sản phẩm c&oacute; link tr&ecirc;n&nbsp;perpetualtime.com;&nbsp;đều c&oacute; sẵn tại Kho h&agrave;ng b&ecirc;n Mỹ, sản phẩm sẽ đến tay bạn từ 2-3 tuần kể từ khi đặt cọc.</p>
', N'gioi-thieu.png', N'page', NULL, NULL, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductRate] ON 

INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (19, 57, 20, 5, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:37:28.723' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (20, 45, 20, 5, N'ok', N'Quang Anh Tong', CAST(N'2021-04-15T21:38:50.150' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (21, 45, 20, 3, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:39:18.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductRate] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (45, N'SWANK', N'swank', 11, N'swank.png', NULL, 2, 2, N'<h1>Đồng hồ thời trang nam Kashmir Swank</h1>

<p>L&agrave; người trẻ, bạn nghi&ecirc;m t&uacute;c trong c&ocirc;ng việc v&agrave; năng động trong những hoạt động với bạn b&egrave;? Đồng hồ Kashmir Swank ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo nhất. Thiết kế mặt đồng hồ m&agrave;u xanh ấn tượng, kết hợp c&ugrave;ng d&acirc;y kim loại bạc tạo n&ecirc;n một tổng thể trẻ trung, kh&aacute;c biệt, nhưng vẫn cực k&igrave; lịch l&atilde;m khi đi l&agrave;m.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>NAVY</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 2200000, 10, 2000000, N'SWANK', N'SWANK', 1, CAST(N'2021-03-02T19:23:22.000' AS DateTime), 20, CAST(N'2021-03-31T16:25:28.257' AS DateTime), 21, 4)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (46, N'POTENT', N'potent', 11, N'potent.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Potent</h1>

<p>Với bộ đ&ocirc;i mặt đen c&ugrave;ng viền rosegold v&ocirc; c&ugrave;ng được ưa chuộng, Curnon mang đến cho Kashmir Potent một cặp d&acirc;y m&agrave;u n&acirc;u s&aacute;ng để tạo n&ecirc;n sự kết hợp trẻ trung v&agrave; ấn tượng hơn, gi&uacute;p bạn định hướng phong c&aacute;ch thời trang của ri&ecirc;ng m&igrave;nh.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3000000, 50, 2700000, N'POTENT', N'POTENT', 1, CAST(N'2021-03-31T16:28:18.027' AS DateTime), 21, CAST(N'2021-03-31T16:28:18.027' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (47, N'CALM', N'calm', 11, N'calm.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Calm</h1>

<p>Với t&ocirc;ng m&agrave;u trắng v&agrave; bạc, kết hợp c&ugrave;ng điểm nhấn xanh Navy tinh tế, đồng hồ Kashmir Calm l&agrave; sự lựa chọn số một cho những bạn trẻ y&ecirc;u th&iacute;ch sự đơn giản nhưng kh&ocirc;ng hề đơn điệu. Bền bỉ như ch&iacute;nh c&aacute;i t&ecirc;n của m&igrave;nh nhờ trang bị d&acirc;y kim loại m&agrave;u bạc, đồng hồ Kashmir Calm sẽ c&ugrave;ng bạn tự tin trong mọi hoạt động h&agrave;ng ng&agrave;y.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3000000, 50, 2850000, N'CALM', N'CALM', 1, CAST(N'2021-03-31T16:29:50.360' AS DateTime), 21, CAST(N'2021-03-31T16:29:50.360' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (48, N'FEARLESS', N'fearless', 11, N'fearless.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Fearless</h1>

<p>Đ&uacute;ng như c&aacute;i t&ecirc;n, đồng hồ Kashmir Fearless được Curnon tạo ra với một th&ocirc;ng điệp của sự can đảm. Một chiếc đồng hồ gần như được phủ k&iacute;n bởi m&agrave;u đen, cực k&igrave; c&aacute; t&iacute;nh, d&agrave;nh cho những người trẻ đầy mạo hiểm v&agrave; kh&aacute;c biệt. Với đồng hồ Kashmir Fearless đầy m&ecirc; hoặc, Curnon tin rằng bạn sẽ c&oacute; thể vượt qua mọi trở ngại m&agrave; cuộc sống d&agrave;nh cho bạn.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3300000, N'FEARLESS', N'FEARLESS', 1, CAST(N'2021-03-31T16:31:17.773' AS DateTime), 21, CAST(N'2021-03-31T16:31:17.773' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (50, N'ROBUST', N'robust', 11, N'robust.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Robust</h1>

<p>Với thiết kế tối giản sử dụng t&ocirc;ng m&agrave;u đen chủ đạo v&agrave; d&acirc;y kim loại, đồng hồ Kashmir Robust mang đến sự mạnh mẽ, b&iacute; ẩn c&ugrave;ng t&iacute;nh ứng dụng cao, gi&uacute;p bạn vững v&agrave;ng trước mọi điều kiện m&ocirc;i trường v&agrave; thời tiết trong hoạt động h&agrave;ng ng&agrave;y.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3500000, 50, 3390000, N'ROBUST', N'ROBUST', 1, CAST(N'2021-03-31T16:32:32.433' AS DateTime), 21, CAST(N'2021-03-31T16:32:32.433' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (51, N'GRAND', N'grand', 11, N'grand.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Grand</h1>

<p>Kết hợp giữa mặt xanh độc đ&aacute;o v&agrave; d&acirc;y da đen sang trọng, đồng hồ Kashmir Grand ch&iacute;nh l&agrave; lựa chọn cho những người đ&agrave;n &ocirc;ng trưởng th&agrave;nh, ch&iacute;n chắn v&agrave; mong muốn sự tự tin trong những sự kiện quan trọng.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>NAVY</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3200000, N'GRAND', N'GRAND', 1, CAST(N'2021-03-31T16:33:58.130' AS DateTime), 21, CAST(N'2021-03-31T16:33:58.130' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (52, N'REBEL', N'rebel', 11, N'rebel.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Rebel</h1>

<p>L&agrave; c&aacute; t&iacute;nh nổi loạn với sự tương phản giữa m&agrave;u đen chủ đạo của mặt đồng hồ đen v&agrave; m&agrave;u d&acirc;y Sand, đồng hồ Kashmir Rebel ch&iacute;nh l&agrave; vũ kh&iacute; tạo ấn tượng tinh tế cho những ch&agrave;ng trai trưởng th&agrave;nh.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3390000, N'REBEL', N'REBEL', 1, CAST(N'2021-03-31T16:34:58.687' AS DateTime), 21, CAST(N'2021-03-31T16:34:58.687' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (53, N'DAPPER', N'dapper', 11, N'dapper.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Kashmir Dapper</h1>

<p>Tinh tế v&agrave; sang trọng l&agrave; những ng&ocirc;n từ được lựa chọn để mi&ecirc;u tả kh&iacute; chất của đồng hồ Kashmir Dapper. Với t&ocirc;ng m&agrave;u v&agrave;ng hồng kết hợp d&acirc;y da tinh xảo, chiếc đồng hồ sẽ rất ph&ugrave; hợp khi kết hợp với những bộ trang phục c&ocirc;ng sở thanh lịch. B&ecirc;n cạnh đ&oacute;, sự đơn giản trong đường n&eacute;t thiết kế kết hợp t&ocirc;ng m&agrave;u đậm t&iacute;nh thời trang, Kashmir Dapper cũng sẽ l&agrave;m h&agrave;i l&ograve;ng cả những bạn trẻ c&aacute; t&iacute;nh v&agrave; năng động.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3500000, 50, 3390000, N'DAPPER', N'DAPPER', 1, CAST(N'2021-03-31T16:36:00.293' AS DateTime), 21, CAST(N'2021-03-31T16:36:00.293' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (54, N'WOLFGANG', N'wolfgang', 9, N'wolfgang.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Weimar Wolfgang</h1>

<p>Đồng hồ Weimar Wolfgang được ra mắt đặc biệt nh&acirc;n dịp ng&agrave;y lễ t&igrave;nh nh&acirc;n Valentine với mặt đồng hồ v&agrave; d&acirc;y đeo c&oacute; m&agrave;u đen đồng nhất, tạo n&ecirc;n n&eacute;t hiện đại tr&ecirc;n nền ng&ocirc;n ngữ thiết kế Bauhaus cổ điển&nbsp;to&aacute;t l&ecirc;n sự nam t&iacute;nh, sang trọng của người đ&agrave;n &ocirc;ng.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3500000, 50, 3400000, N'WOLFGANG', N'WOLFGANG', 1, CAST(N'2021-03-31T16:48:15.820' AS DateTime), 21, CAST(N'2021-03-31T16:48:15.820' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (55, N'KLAUS', N'klaus', 9, N'klaus.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Weimar Klaus</h1>

<p>Weimar Klaus mang một phối m&agrave;u cơ bản c&ugrave;ng d&acirc;y da đen l&agrave; một sự lựa chọn dễ d&agrave;ng cho những ch&agrave;ng trai ăn mặc kh&ocirc;ng qu&aacute; cầu k&igrave;. Với thiết kế cổ điển c&ugrave;ng ch&iacute;nh những t&ocirc;ng m&agrave;u trung t&iacute;nh sẽ gi&uacute;p bạn c&oacute; thể kết hợp với mọi bộ trang phục.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 4000000, 50, 3500000, N'KLAUS', N'KLAUS', 1, CAST(N'2021-03-31T16:49:17.540' AS DateTime), 21, CAST(N'2021-03-31T16:49:17.540' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (56, N'HEINZ', N'heinz', 9, N'heinz.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Weimar Heinz</h1>

<p>Thiết kế mặt đen nổi bật tr&ecirc;n nền kim loại bạc mang đến n&eacute;t hiện đại cho Weimar Heinz. Với những t&ocirc;ng m&agrave;u trung t&iacute;nh, bạn c&oacute; thể ho&agrave;n to&agrave;n tự tin về việc kết hợp đồng hồ Weimar Heinz với bất cứ trang phục v&agrave; trong bất cứ dịp n&agrave;o.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>

<ul>
	<li>&nbsp;</li>
</ul>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3300000, 50, 3100000, N'HEINZ', N'HEINZ', 1, CAST(N'2021-03-31T16:50:20.593' AS DateTime), 21, CAST(N'2021-03-31T16:50:20.593' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (57, N'PAUL', N'paul', 9, N'paul.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nam Weimar Paul</h1>

<p>Một chiếc Đồng hồ d&agrave;nh cho những ch&agrave;ng trai y&ecirc;u th&iacute;ch sự sang trọng v&agrave; cổ điển. Với sự kết hợp giữa mặt k&iacute;nh v&ograve;m, sắc đen c&ugrave;ng rosegold đầy quyến rũ, đồng hồ Weimar Paul sẽ gi&uacute;p bạn n&acirc;ng tầm bất cứ bộ trang phục n&agrave;o.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>40MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>20MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3700000, 50, 3500000, N'PAUL', N'PAUL', 1, CAST(N'2021-03-31T16:51:11.723' AS DateTime), 21, CAST(N'2021-03-31T16:51:11.723' AS DateTime), 21, 5)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (58, N'SKY', N'sky', 12, N'sky.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Sky</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3000000, 50, 2700000, N'SKY', N'SKY', 1, CAST(N'2021-04-16T00:52:30.563' AS DateTime), 21, CAST(N'2021-04-16T00:52:30.563' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (59, N'MONSOON', N'monsoon', 12, N'monsoon.png', NULL, 2, 1, N'<h1>Đồng hồ thời trang nữ Melissani Monsoon</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 3300000, 50, 2900000, N'MONSOON', N'MONSOON', 1, CAST(N'2021-04-16T00:54:02.817' AS DateTime), 21, CAST(N'2021-04-16T00:54:02.817' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (60, N'WIND', N'wind', 12, N'wind.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Wind</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 2500000, 50, 2300000, N'WIND', N'WIND', 1, CAST(N'2021-04-16T00:55:08.133' AS DateTime), 21, CAST(N'2021-04-16T00:55:08.133' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (61, N'HAZE', N'haze', 12, N'haze.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Haze</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 2800000, 50, 2500000, N'HAZE', N'HAZE', 1, CAST(N'2021-04-16T00:56:30.000' AS DateTime), 21, CAST(N'2021-04-16T00:56:38.923' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (62, N'DAWN', N'dawn', 12, N'dawn.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Dawn</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y DA GENUINE</p>
	</li>
</ul>
', N'123', 2800000, 50, 2500000, N'DAWN', N'DAWN', 1, CAST(N'2021-04-16T00:57:53.003' AS DateTime), 21, CAST(N'2021-04-16T00:57:53.003' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (63, N'SERENE', N'serene', 12, N'serene.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Serene</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>WHITE</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3000000, 50, 2700000, N'SERENE', N'SERENE', 1, CAST(N'2021-04-16T00:59:20.923' AS DateTime), 21, CAST(N'2021-04-16T00:59:20.923' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (64, N'AUTUMN', N'autumn', 12, N'autumn.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Autumn</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>PINK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 2890000, 50, 2700000, N'AUTUMN', N'AUTUMN', 1, CAST(N'2021-04-16T01:00:39.000' AS DateTime), 21, CAST(N'2021-04-16T01:00:49.407' AS DateTime), 21, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (65, N'MOON', N'moon', 12, N'moon.png', NULL, 1, 1, N'<h1>Đồng hồ thời trang nữ Melissani Moon</h1>

<p>Lấy cảm hứng từ vẻ đẹp thi&ecirc;n nhi&ecirc;n hoang sơ được v&iacute; như &quot;n&agrave;ng ti&ecirc;n bước ra từ thần thoại&quot;, Melissani mang đầy đủ những n&eacute;t đẹp của chiếc đồng hồ đ&aacute;ng mơ ước cho ph&aacute;i nữ: c&aacute; t&iacute;nh, quyến rũ v&agrave; đầy b&iacute; ẩn. Đường k&iacute;nh 32mm, dễ d&agrave;ng kết hợp c&ugrave;ng d&acirc;y da v&agrave; d&acirc;y kim loại, ph&ugrave; hợp với mọi phong c&aacute;ch thời trang bạn y&ecirc;u th&iacute;ch.</p>

<p>-&nbsp;<strong>K&iacute;nh Sapphire</strong>&nbsp;chống xước vượt trội v&agrave; bảo vệ mặt đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng<br />
-&nbsp;<strong>Chất liệu vỏ</strong>: Th&eacute;p kh&ocirc;ng gỉ 316L - l&agrave; ti&ecirc;u chuẩn của một chiếc đồng hồ cao cấp, gi&uacute;p đồng hồ của bạn bền bỉ với thời gian<br />
-&nbsp;<strong>Chống nước 3ATM</strong>&nbsp;- T&iacute;nh năng khiến bạn c&oacute; thể tự tin v&agrave; thoải m&aacute;i trong mọi hoạt động h&agrave;ng ng&agrave;y.&nbsp;<br />
-&nbsp;<strong>Thay d&acirc;y dễ d&agrave;ng</strong>&nbsp;- Biến đổi phong c&aacute;ch của bạn trong 30 gi&acirc;y m&agrave; kh&ocirc;ng cần bất cứ c&ocirc;ng cụ chuy&ecirc;n dụng n&agrave;o</p>
', N'<ul>
	<li>
	<p>K&iacute;ch thước mặt</p>

	<p>32MM</p>
	</li>
	<li>
	<p>Độ d&agrave;y</p>

	<p>7MM</p>
	</li>
	<li>
	<p>M&agrave;u mặt</p>

	<p>BLACK</p>
	</li>
	<li>
	<p>Loại m&aacute;y</p>

	<p>MIYOTA QUARTZ</p>
	</li>
	<li>
	<p>K&iacute;ch cỡ d&acirc;y</p>

	<p>14MM</p>
	</li>
	<li>
	<p>Chống nước</p>

	<p>3ATM</p>
	</li>
	<li>
	<p>Mặt k&iacute;nh</p>

	<p>SAPPHIRE</p>
	</li>
	<li>
	<p>Chất liệu d&acirc;y</p>

	<p>D&Acirc;Y KIM LOẠI</p>
	</li>
</ul>
', N'123', 3400000, 50, 3000000, N'MOON', N'MOON', 1, CAST(N'2021-04-16T01:01:57.673' AS DateTime), 21, CAST(N'2021-04-16T01:01:57.673' AS DateTime), 21, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Cay canh slider', N'cay-canh-slider', N'slideshow', N'cay-canh-slider.jpg', 1, CAST(N'2021-03-02T13:39:32.093' AS DateTime), 20, CAST(N'2021-03-31T16:38:27.623' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'slider cay canh 2', N'slider-cay-canh-2', N'slideshow', N'slider-cay-canh-2.jpg', 1, CAST(N'2021-03-02T13:43:37.430' AS DateTime), 20, CAST(N'2021-03-31T16:38:28.820' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (4, N'slider cay canh 3', N'slider-cay-canh-3', N'slideshow', N'slider-cay-canh-3.jpg', 1, CAST(N'2021-03-02T13:43:53.777' AS DateTime), 20, CAST(N'2021-03-31T16:38:30.197' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'slider watch site', N'slider-watch-site', N'slideshow', N'slider-watch-site.jpg', 2, CAST(N'2021-03-31T15:46:15.663' AS DateTime), 21, CAST(N'2021-03-31T15:46:15.663' AS DateTime), 21, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'banner 2', N'banner-2', N'slideshow', N'banner-2.jpg', 5, CAST(N'2021-03-31T16:38:46.437' AS DateTime), 21, CAST(N'2021-03-31T16:38:46.437' AS DateTime), 21, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'banner 3', N'banner-3', N'slideshow', N'banner-3.jpg', 5, CAST(N'2021-03-31T16:38:57.000' AS DateTime), 21, CAST(N'2021-03-31T16:39:51.747' AS DateTime), 21, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Thông tin web', N'thong-tin-web', 0, NULL, N'Về chúng tôi', N'Thông tin web', CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (1, N'Antonday', N'admin', N'xMpCOKC5I4INzFCab3WEmw==', N'1@gmail.com', 1, 123, N'123 tăng nhơn phú', N'le-gia-lai.jpg', 1, 1, CAST(N'2020-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2021-03-04T14:12:22.817' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (2, N'Anto', N'user', N'xMpCOKC5I4INzFCab3WEmw==', N'lelaii200398@gmail.com', 1, 364242261, N'xã ninh sơn', N'le-gia-lai.jpg', 1, 1, CAST(N'2020-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2021-02-16T18:35:11.150' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (14, N'1', N'1', N'xMpCOKC5I4INzFCab3WEmw==', N'1@gmail.com', 1, 0, N'1', N'', 1, 0, CAST(N'2021-02-18T17:12:01.383' AS DateTime), 1, CAST(N'2021-02-18T17:12:01.383' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (15, N'1', N'1', N'xMpCOKC5I4INzFCab3WEmw==', N'1@e.e', 1, 333, N'1', N'', 1, 0, CAST(N'2021-02-18T17:12:06.360' AS DateTime), 1, CAST(N'2021-02-18T17:12:06.360' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (16, N'2', N'2', N'7MvIfktc4v4oMI/Z8qe68w==', N'3@gmail.com', 1, 3, N'2', N'', 1, 0, CAST(N'2021-02-18T17:12:14.430' AS DateTime), 1, CAST(N'2021-02-18T17:12:14.430' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (20, N'Quang Anh Tong', N'admins', N'xMpCOKC5I4INzFCab3WEmw==', N'123@gmail.com', 1, 98723972, N'204 Hoang Mai', N'quang-anh-tong.png', 0, 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (21, N'Quang anh day', N'antonday', N'xMpCOKC5I4INzFCab3WEmw==', N'quanganh@gmail.com', 1, 98723972, N'204 Hoang Mai', NULL, 0, 1, CAST(N'2021-03-04T14:17:16.513' AS DateTime), 20, CAST(N'2021-03-04T14:17:16.513' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (22, N'Nguyen Van Chien', N'chienpanda', N'xMpCOKC5I4INzFCab3WEmw==', N'chienbg@gmail.com', 1, 966523723, N'Ha Noi', NULL, 0, 1, CAST(N'2021-03-04T15:05:27.657' AS DateTime), 21, CAST(N'2021-03-04T15:05:39.263' AS DateTime), 21)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (23, N'Chien Van Nguyen', N'Chienbg', N'xMpCOKC5I4INzFCab3WEmw==', N'chienbg@gmail.com', 1, 98723972, N'204 Hoang Mai', N'', 0, 0, CAST(N'2021-04-12T16:59:54.373' AS DateTime), 1, CAST(N'2021-04-12T16:59:54.373' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (24, N'chienbg', N'chienbg', N'gnzLDuqKcGxMNKFokfhOew==', N'chienbg20040@gmail.com', 1, 0, N'chienbg123', N'', 0, 0, CAST(N'2021-04-12T16:59:53.027' AS DateTime), 1, CAST(N'2021-04-12T16:59:53.027' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (25, N'chienbg', N'chienbg', N'onChfQsowVYqZlkUbUc86A==', N'chienbg20040@gmail.com', 1, 359534573, N'Bắc Giang', N'', 0, 0, CAST(N'2021-04-12T16:59:51.597' AS DateTime), 1, CAST(N'2021-04-12T16:59:51.597' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (26, N'Nguyễn Văn Chiến', N'chienbg123', N'onChfQsowVYqZlkUbUc86A==', N'chienbg2000000000040@gmail.com', 1, 359534573, N'Bắc Giang', N'', 1, 1, CAST(N'2021-04-12T16:31:20.273' AS DateTime), 1, CAST(N'2021-04-12T16:31:20.273' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (27, N'Nguyễn Văn Chiến', N'chienbg3', N'xMpCOKC5I4INzFCab3WEmw==', N'admins3@gmail.com', 1, 1252, N'Bắc Giang', N'', 0, 1, CAST(N'2021-04-14T17:21:57.187' AS DateTime), 1, CAST(N'2021-04-14T17:21:57.187' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (28, NULL, NULL, N'xMpCOKC5I4INzFCab3WEmw==', N'admins3@gmail.com', 1, 0, NULL, N'', 0, 0, CAST(N'2021-04-14T17:42:59.787' AS DateTime), 1, CAST(N'2021-04-14T17:42:59.787' AS DateTime), 27)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ProductRate] ADD  CONSTRAINT [DF_ProductRate_Rate]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ProRate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_product2] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_product2]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_users_ID] FOREIGN KEY([CustemerId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_users_ID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [fk_poste_topicc] FOREIGN KEY([Topid])
REFERENCES [dbo].[Topics] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [fk_poste_topicc]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categorys] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_create] FOREIGN KEY([Created_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_create]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_update] FOREIGN KEY([Updated_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_update]
GO
ALTER TABLE [dbo].[Topics]  WITH CHECK ADD  CONSTRAINT [fk_topic_create] FOREIGN KEY([Created_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Topics] CHECK CONSTRAINT [fk_topic_create]
GO
ALTER TABLE [dbo].[Topics]  WITH CHECK ADD  CONSTRAINT [fk_topic_update] FOREIGN KEY([Updated_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Topics] CHECK CONSTRAINT [fk_topic_update]
GO

