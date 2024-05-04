USE [master]
GO
/****** Object:  Database [myfoodcorner]    Script Date: 2/4/2024 9:43:01 AM ******/
CREATE DATABASE [myfoodcorner]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'myfoodcorner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\myfoodcorner.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'myfoodcorner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\myfoodcorner_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [myfoodcorner] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [myfoodcorner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [myfoodcorner] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [myfoodcorner] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [myfoodcorner] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [myfoodcorner] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [myfoodcorner] SET ARITHABORT OFF 
GO
ALTER DATABASE [myfoodcorner] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [myfoodcorner] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [myfoodcorner] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [myfoodcorner] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [myfoodcorner] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [myfoodcorner] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [myfoodcorner] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [myfoodcorner] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [myfoodcorner] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [myfoodcorner] SET  DISABLE_BROKER 
GO
ALTER DATABASE [myfoodcorner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [myfoodcorner] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [myfoodcorner] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [myfoodcorner] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [myfoodcorner] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [myfoodcorner] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [myfoodcorner] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [myfoodcorner] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [myfoodcorner] SET  MULTI_USER 
GO
ALTER DATABASE [myfoodcorner] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [myfoodcorner] SET DB_CHAINING OFF 
GO
ALTER DATABASE [myfoodcorner] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [myfoodcorner] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [myfoodcorner] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [myfoodcorner] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [myfoodcorner] SET QUERY_STORE = ON
GO
ALTER DATABASE [myfoodcorner] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [myfoodcorner]
GO
/****** Object:  Schema [Master]    Script Date: 2/4/2024 9:43:01 AM ******/
CREATE SCHEMA [Master]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[forgetpass]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[productimages]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[productquentity]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 2/4/2024 9:43:01 AM ******/
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
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([brandid], [name]) VALUES (1, N'mac')
SET IDENTITY_INSERT [dbo].[brands] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([categoryid], [categoryname]) VALUES (1, N'Fast-Food')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'3338a499-fb15-47bb-8a90-425c01b5ed73', 2, CAST(N'2024-01-20T17:53:28.187' AS DateTime))
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'72aacf4d-dfdf-4c61-8197-3f1bd56e048a', 2, CAST(N'2024-01-20T18:32:02.597' AS DateTime))
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'b49d337f-08e1-426d-8b29-edb32176708c', 2, CAST(N'2024-01-20T20:15:08.403' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3003, N'product1', 200.0000, 200.0000, 1, 1, N'product 1', 1, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3006, N'product2', 200.0000, 200.0000, 1, 1, N'product 2', 1, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3007, N'product3', 200.0000, 200.0000, 1, 1, N'product3', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3008, N'product4', 200.0000, 200.0000, 1, 1, N'product4', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3009, N'product5', 200.0000, 200.0000, 1, 1, N'product5', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3010, N'product6', 200.0000, 200.0000, 1, 1, N'product6', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3011, N'product7', 200.0000, 200.0000, 1, 1, N'product7', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3012, N'product8', 200.0000, 200.0000, 1, 1, N'product8', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3013, N'product9', 200.0000, 200.0000, 1, 1, N'product9', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3014, N'product10', 200.0000, 200.0000, 1, 1, N'product10', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3015, N'product11', 200.0000, 200.0000, 1, 1, N'product11', 0, 1)
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD]) VALUES (3016, N'product12', 200.0000, 200.0000, 1, 1, N'product12', 0, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[productimages] ON 

INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3003, 3003, N'product1', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3006, 3006, N'product2', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3007, 3007, N'product3', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3008, 3008, N'product4', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3009, 3009, N'product5', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3010, 3010, N'product6', N'.PNG')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3011, 3011, N'product7', N'.png')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3012, 3012, N'product8', N'.png')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3013, 3013, N'product9', N'.png')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3014, 3014, N'product10', N'.png')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3015, 3015, N'product11', N'.png')
INSERT [dbo].[productimages] ([imgid], [pid], [name], [extention]) VALUES (3016, 3016, N'product12', N'.png')
SET IDENTITY_INSERT [dbo].[productimages] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (1, N'Pratham dabhi', N'pra123th', N'prathamdabhi456@gmil.com', NULL, N'Admin')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (2, N'shivam', N'pra456th', N'dabhipratham324@gmail.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (3, N'Pratham dabhi', N'', N'dabhipratham324@gmail.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (4, N'Pratham dabhi', N'123', N'prathamdabhi456@gmil.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (5, N'shivam', N'dabhi1234', N'dabhishivam838@gmail.com', NULL, NULL)
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (6, N'ramdabhi', N'pratham', N'prathamdabhi10@gmil.com', NULL, N'User')
SET IDENTITY_INSERT [dbo].[users] OFF
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
/****** Object:  StoredProcedure [dbo].[BindAllProducts]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_BindProductImages]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsetProduct]    Script Date: 2/4/2024 9:43:01 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_IsProductExistInCart]    Script Date: 2/4/2024 9:43:01 AM ******/
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
USE [master]
GO
ALTER DATABASE [myfoodcorner] SET  READ_WRITE 
GO
