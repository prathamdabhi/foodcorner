USE [myfoodcorner]
GO
/****** Object:  Schema [Master]    Script Date: 5/4/2024 8:08:38 AM ******/
CREATE SCHEMA [Master]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  Table [dbo].[category]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  Table [dbo].[forgetpass]    Script Date: 5/4/2024 8:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forgetpass](
	[id] [nvarchar](500) NOT NULL,
	[uid] [nvarchar](10) NULL,
	[RequestDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/4/2024 8:08:38 AM ******/
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
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK__product__DD37D91A6460A740] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productimages]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  Table [dbo].[productquentity]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  Table [dbo].[tblCart]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  Table [dbo].[tblpurches]    Script Date: 5/4/2024 8:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpurches](
	[purchaseID] [int] NOT NULL,
	[uid] [nvarchar](10) NULL,
	[pid] [nvarchar](10) NULL,
	[name] [nvarchar](200) NULL,
	[email] [nvarchar](max) NULL,
	[mobile_number] [nvarchar](20) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](20) NULL,
	[state] [nvarchar](20) NULL,
	[zipcode] [nvarchar](20) NULL,
	[amount] [nvarchar](50) NULL,
	[totalamount] [nvarchar](50) NULL,
	[paymenttype] [nvarchar](50) NULL,
	[paymentstatus] [nvarchar](50) NULL,
	[date_of_purchase] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblpurches] PRIMARY KEY CLUSTERED 
(
	[purchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/4/2024 8:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[uid] [nvarchar](10) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[usertype] [nvarchar](50) NULL,
 CONSTRAINT [PK__users__DD701264F860FD7E] PRIMARY KEY CLUSTERED 
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
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'3338a499-fb15-47bb-8a90-425c01b5ed73', N'2', CAST(N'2024-01-20T17:53:28.187' AS DateTime))
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'72aacf4d-dfdf-4c61-8197-3f1bd56e048a', N'2', CAST(N'2024-01-20T18:32:02.597' AS DateTime))
INSERT [dbo].[forgetpass] ([id], [uid], [RequestDateTime]) VALUES (N'b49d337f-08e1-426d-8b29-edb32176708c', N'2', CAST(N'2024-01-20T20:15:08.403' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3003, N'Vegbiriyani', 150.0000, 200.0000, 1, 1, N'product 1', 1, 1, N'Out Of The Stock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3006, N'Pakoda ', 140.0000, 200.0000, 1, 1, N'product 2', 1, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3007, N'Salad  ', 80.0000, 200.0000, 1, 1, N'product3', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3008, N'Daal   ', 100.0000, 200.0000, 1, 1, N'product4', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3009, N'Berry Salad ', 100.0000, 200.0000, 1, 1, N'product5', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3010, N'Tomato Pizza ', 150.0000, 200.0000, 1, 1, N'product6', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3011, N'Pasta ', 150.0000, 200.0000, 1, 1, N'product7', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3012, N'Susi ', 180.0000, 200.0000, 1, 1, N'product8', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3013, N'Onion Pizza ', 140.0000, 200.0000, 1, 1, N'product9', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3014, N'Cheeze Pizza ', 140.0000, 200.0000, 1, 1, N'product10', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3015, N'Chilli Pizza ', 150.0000, 200.0000, 1, 1, N'product11', 0, 1, N'InStock')
INSERT [dbo].[product] ([pid], [pname], [pprice], [pselprice], [pbrandid], [pcategoryid], [pdescription], [freedelivery], [COD], [status]) VALUES (3016, N'Egg Fry ', 80.0000, 200.0000, 1, 1, N'product12', 0, 1, N'InStock')
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
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (1, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'392024')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (12, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'392024')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (13, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'392024')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (14, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-20')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (15, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-20')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (16, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-03')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (17, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-28')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (18, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-29')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (19, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-03-31')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (110, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-04-09')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (111, N'1', N'1', N'Pratham Dabhi', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-04-30')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (112, N'1', N'1', N'Pratham Dabhi', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-05-01')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (113, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-05-01')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (114, N'1', N'1', N'Pratham', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-05-01')
INSERT [dbo].[tblpurches] ([purchaseID], [uid], [pid], [name], [email], [mobile_number], [address], [city], [state], [zipcode], [amount], [totalamount], [paymenttype], [paymentstatus], [date_of_purchase]) VALUES (115, N'1', N'1', N'Pratham bhai', N'Prathamdabhi456@gmail.com', N'7264067773', N'203bangadevi,app veer savarkar road', N'Virar East', N'Maharashtra', N'401305', N'200', N'200', N'credit', N'Paid', N'2024-05-03')
GO
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'07', N'Pratham', N'Dabhi123', N'dabhipratham@gmail.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'1', N'Pratham dabhi', N'pra123th', N'prathamdabhi456@gmil.com', NULL, N'Admin')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'2', N'shivam', N'pra456th', N'dabhipratham324@gmail.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'3', N'Pratham dabhi', N'', N'dabhipratham324@gmail.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'4', N'Pratham dabhi', N'123', N'prathamdabhi456@gmil.com', NULL, N'User')
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'5', N'shivam', N'dabhi1234', N'dabhishivam838@gmail.com', NULL, NULL)
INSERT [dbo].[users] ([uid], [username], [password], [Email], [Name], [usertype]) VALUES (N'6', N'ramdabhi', N'pratham', N'prathamdabhi10@gmil.com', NULL, N'User')
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
/****** Object:  StoredProcedure [dbo].[BindAllProducts]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_BindProductImages]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DeleteThisCartItem]    Script Date: 5/4/2024 8:08:38 AM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsetProduct]    Script Date: 5/4/2024 8:08:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsetProduct]
(
    @pname nvarchar(MAX),
    @pprice money,
    @pselprice money,
    @pbrandid int,
    @pcategoryid int,
    @pdescription nvarchar(MAX),
    @freedelivery int,
    @COD int,
	@status nvarchar(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert the product into the 'product' table
    INSERT INTO product (pname, pprice, pselprice, pbrandid, pcategoryid, pdescription, freedelivery, COD, status)
    VALUES (@pname, @pprice, @pselprice, @pbrandid, @pcategoryid, @pdescription, @freedelivery, @COD, @status);

    -- Return the ID of the newly inserted record
    SELECT SCOPE_IDENTITY() AS NewProductId;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_IsProductExistInCart]    Script Date: 5/4/2024 8:08:38 AM ******/
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
