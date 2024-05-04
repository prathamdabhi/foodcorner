USE [myfoodcorner]
GO
/****** Object:  Schema [Master]    Script Date: 3/15/2024 1:17:21 PM ******/
CREATE SCHEMA [Master]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[brandid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forgetpass]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forgetpass](
	[id] [nvarchar](500) NOT NULL,
	[uid] [int] NULL,
	[RequestDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [nvarchar](max) NULL,
	[pprice] [money] NULL,
	[pselprice] [money] NULL,
	[pbrandid] [int] NULL,
	[pcategoryid] [int] NULL,
	[pdescription] [nvarchar](max) NULL,
	[freedelivery] [int] NULL,
	[COD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productimages]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productimages](
	[imgid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[name] [nvarchar](max) NULL,
	[extention] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[imgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productquentity]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productquentity](
	[quentityid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[quentity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[quentityid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[PID] [int] NULL,
	[PName] [nvarchar](max) NULL,
	[PPrice] [money] NULL,
	[PSelPrice] [money] NULL,
	[SubPAmount]  AS ([PPrice]*[Qty]),
	[SubSAmount]  AS ([PSelPrice]*[Qty]),
	[Qty] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblpurches]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpurches](
	[purchaseID] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[pid] [nvarchar](50) NULL,
	[name] [nvarchar](200) NULL,
	[email] [nvarchar](max) NULL,
	[mobile_number] [nvarchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](20) NULL,
	[state] [nvarchar](20) NULL,
	[zipcode] [nvarchar](20) NULL,
	[amount] [money] NULL,
	[totalamount] [money] NULL,
	[paymenttype] [nvarchar](50) NULL,
	[paymentstatus] [nvarchar](50) NULL,
	[date_of_purchase] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[purchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[usertype] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[forgetpass]  WITH CHECK ADD  CONSTRAINT [FK_forgetpass_users] FOREIGN KEY([uid])
REFERENCES [dbo].[users] ([uid])
GO
ALTER TABLE [dbo].[forgetpass] CHECK CONSTRAINT [FK_forgetpass_users]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_ToTable] FOREIGN KEY([pbrandid])
REFERENCES [dbo].[brands] ([brandid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_ToTable]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_ToTable1] FOREIGN KEY([pcategoryid])
REFERENCES [dbo].[category] ([categoryid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_ToTable1]
GO
ALTER TABLE [dbo].[productimages]  WITH CHECK ADD  CONSTRAINT [FK_productimages_ToTable] FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([pid])
GO
ALTER TABLE [dbo].[productimages] CHECK CONSTRAINT [FK_productimages_ToTable]
GO
ALTER TABLE [dbo].[productquentity]  WITH CHECK ADD  CONSTRAINT [FK_productquentity_ToTable] FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([pid])
GO
ALTER TABLE [dbo].[productquentity] CHECK CONSTRAINT [FK_productquentity_ToTable]
GO
ALTER TABLE [dbo].[tblpurches]  WITH CHECK ADD  CONSTRAINT [FK_tblpurches_Tousers] FOREIGN KEY([uid])
REFERENCES [dbo].[users] ([uid])
GO
ALTER TABLE [dbo].[tblpurches] CHECK CONSTRAINT [FK_tblpurches_Tousers]
GO
/****** Object:  StoredProcedure [dbo].[BindAllProducts]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindAllProducts]
AS
select A.*,B.*,B.name as ImageName, C.name as name   from product A
inner join brands C on C.brandid = A.pbrandid
cross apply(
select top 1 * from productimages B where B.pid = A.pid order by B.pid desc
)B
order by A.pid desc
Return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_BindProductImages]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_BindProductImages]
(
@pid int
)
AS
SELECT * FROM productimages where pid = @pid
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteThisCartItem]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteThisCartItem]
@CartID int
AS
BEGIN
DELETE FROM tblCart WHERE CartID = @CartID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsetProduct]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_InsetProduct]
(
@pname nvarchar(MAX),
@pprice money,
@pselprice money,
@pbrandid int,
@pcategoryid int,
@pdescription nvarchar(MAX),
@freedelivery int,
@COD int
)
as

insert into product values(@pname,@pprice,@pselprice,@pbrandid,@pcategoryid,@pdescription,@freedelivery,@COD)
select SCOPE_IDENTITY()
Return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_IsProductExistInCart]    Script Date: 3/15/2024 1:17:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_IsProductExistInCart]
(
@pid int,
@UserID int
)
AS
SELECT * FROM tblCart where pid = @pid and UID = @UserID
GO
