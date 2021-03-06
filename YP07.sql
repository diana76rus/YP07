USE [18ip36]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 29.11.2021 10:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[id_car] [int] NOT NULL,
	[Car number] [nchar](10) NOT NULL,
	[id_client] [int] NOT NULL,
	[Year_of_release] [nchar](10) NULL,
	[Model] [nchar](10) NULL,
	[Stamp] [nchar](10) NULL,
	[Breakdown_description] [nchar](10) NULL,
	[VIN] [nchar](10) NOT NULL,
	[id_spare_part] [int] NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[id_car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_spare_part]    Script Date: 29.11.2021 10:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_spare_part](
	[id_car_spare_part] [int] NOT NULL,
	[id_car] [int] NOT NULL,
	[id_spare_part] [int] NOT NULL,
 CONSTRAINT [PK_Car_spare_part] PRIMARY KEY CLUSTERED 
(
	[id_car_spare_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 29.11.2021 10:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id_client] [int] NOT NULL,
	[Surname] [nchar](50) NULL,
	[Name] [nchar](50) NULL,
	[Middle_name] [nchar](50) NULL,
	[Phone_number] [nchar](11) NULL,
	[Mail] [nchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Load]    Script Date: 29.11.2021 10:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Load](
	[id_load] [int] NOT NULL,
	[id_staff] [int] NOT NULL,
	[id_record] [int] NOT NULL,
	[id_order] [int] NOT NULL,
	[date] [nchar](10) NULL,
	[time] [nchar](10) NULL,
 CONSTRAINT [PK_Load] PRIMARY KEY CLUSTERED 
(
	[id_load] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 29.11.2021 10:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id_order] [int] NOT NULL,
	[id_client] [int] NOT NULL,
	[id_staff] [int] NOT NULL,
	[id_services] [int] NOT NULL,
	[date] [date] NULL,
	[Time] [nchar](10) NULL,
	[Status] [nchar](50) NULL,
	[id_car] [int] NOT NULL,
	[id_spare_part] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_spare_part]    Script Date: 29.11.2021 10:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_spare_part](
	[id_order_spare_part] [int] NOT NULL,
	[id_spare_part] [int] NOT NULL,
	[id_order] [int] NOT NULL,
 CONSTRAINT [PK_Order_spare_part] PRIMARY KEY CLUSTERED 
(
	[id_order_spare_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 29.11.2021 10:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id_post] [int] NOT NULL,
	[id_staff] [int] NOT NULL,
	[Title] [nchar](50) NULL,
	[Bet] [nchar](50) NULL,
	[Official_duties] [nchar](1000) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[id_post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 29.11.2021 10:17:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[id_record] [int] NOT NULL,
	[id_serviced] [int] NOT NULL,
	[id_staff] [int] NOT NULL,
	[id_client] [int] NOT NULL,
	[Date] [date] NULL,
	[Time] [nchar](20) NULL,
	[Status] [nchar](50) NULL,
	[Breakdown_description] [nchar](1000) NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[id_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 29.11.2021 10:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id_serviced] [int] NOT NULL,
	[Title] [nchar](50) NULL,
	[Price] [nchar](20) NULL,
	[due date] [date] NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id_serviced] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spare_part]    Script Date: 29.11.2021 10:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spare_part](
	[id_spare_part] [int] NOT NULL,
	[Title] [nchar](100) NULL,
	[Number] [nchar](50) NOT NULL,
	[Category] [nchar](10) NULL,
	[Stamp] [nchar](50) NULL,
	[Quantity] [nchar](10) NULL,
	[Price] [nchar](10) NULL,
 CONSTRAINT [PK_Spare_part] PRIMARY KEY CLUSTERED 
(
	[id_spare_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 29.11.2021 10:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id_staff] [int] NOT NULL,
	[Surname] [nchar](50) NULL,
	[Name] [nchar](50) NULL,
	[Middle_name] [nchar](50) NULL,
	[id_post] [int] NULL,
	[Address] [nchar](50) NULL,
	[Phone_number] [nchar](11) NOT NULL,
	[Passport_series] [nchar](4) NOT NULL,
	[Passport_number] [nchar](6) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id_staff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Client]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Spare_part] FOREIGN KEY([id_spare_part])
REFERENCES [dbo].[Spare_part] ([id_spare_part])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Spare_part]
GO
ALTER TABLE [dbo].[Car_spare_part]  WITH CHECK ADD  CONSTRAINT [FK_Car_spare_part_Car] FOREIGN KEY([id_car])
REFERENCES [dbo].[Car] ([id_car])
GO
ALTER TABLE [dbo].[Car_spare_part] CHECK CONSTRAINT [FK_Car_spare_part_Car]
GO
ALTER TABLE [dbo].[Car_spare_part]  WITH CHECK ADD  CONSTRAINT [FK_Car_spare_part_Spare_part] FOREIGN KEY([id_spare_part])
REFERENCES [dbo].[Spare_part] ([id_spare_part])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Car_spare_part] CHECK CONSTRAINT [FK_Car_spare_part_Spare_part]
GO
ALTER TABLE [dbo].[Load]  WITH CHECK ADD  CONSTRAINT [FK_Load_Order] FOREIGN KEY([id_order])
REFERENCES [dbo].[Order] ([id_order])
GO
ALTER TABLE [dbo].[Load] CHECK CONSTRAINT [FK_Load_Order]
GO
ALTER TABLE [dbo].[Load]  WITH CHECK ADD  CONSTRAINT [FK_Load_Record] FOREIGN KEY([id_record])
REFERENCES [dbo].[Record] ([id_record])
GO
ALTER TABLE [dbo].[Load] CHECK CONSTRAINT [FK_Load_Record]
GO
ALTER TABLE [dbo].[Load]  WITH CHECK ADD  CONSTRAINT [FK_Load_Staff] FOREIGN KEY([id_staff])
REFERENCES [dbo].[Staff] ([id_staff])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Load] CHECK CONSTRAINT [FK_Load_Staff]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Car] FOREIGN KEY([id_car])
REFERENCES [dbo].[Car] ([id_car])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Car]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Spare_part] FOREIGN KEY([id_spare_part])
REFERENCES [dbo].[Spare_part] ([id_spare_part])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Spare_part]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([id_staff])
REFERENCES [dbo].[Staff] ([id_staff])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff]
GO
ALTER TABLE [dbo].[Order_spare_part]  WITH CHECK ADD  CONSTRAINT [FK_Order_spare_part_Order] FOREIGN KEY([id_order])
REFERENCES [dbo].[Order] ([id_order])
GO
ALTER TABLE [dbo].[Order_spare_part] CHECK CONSTRAINT [FK_Order_spare_part_Order]
GO
ALTER TABLE [dbo].[Order_spare_part]  WITH CHECK ADD  CONSTRAINT [FK_Order_spare_part_Spare_part] FOREIGN KEY([id_spare_part])
REFERENCES [dbo].[Spare_part] ([id_spare_part])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_spare_part] CHECK CONSTRAINT [FK_Order_spare_part_Spare_part]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Staff] FOREIGN KEY([id_staff])
REFERENCES [dbo].[Staff] ([id_staff])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Staff]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Client] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([id_client])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Client]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Services] FOREIGN KEY([id_serviced])
REFERENCES [dbo].[Services] ([id_serviced])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Services]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_Record_Staff] FOREIGN KEY([id_staff])
REFERENCES [dbo].[Staff] ([id_staff])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_Record_Staff]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Post] FOREIGN KEY([id_post])
REFERENCES [dbo].[Post] ([id_post])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Post]
GO
