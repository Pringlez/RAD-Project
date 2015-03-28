IF DB_ID('CarProjectDB') IS NOT NULL
	DROP DATABASE CarProjectDB
	
CREATE DATABASE CarProjectDB
GO


USE [CarProjectDB]
GO
/****** Object:  Table [dbo].[AdminAccounts]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminAccounts](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AdminId] [int] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Admins]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[ContactNumber] [int] NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Car]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[CarId] [varchar](10) NOT NULL,
	[Make] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[EngineSize] [varchar](50) NOT NULL,
	[FuelType] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[BodyType] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Images] [varchar](50) NULL,
	[ManufacturerId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerAccounts]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAccounts](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAccounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[ContactNumber] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerId] [varchar](10) NOT NULL,
	[ShortName] [varchar](20) NULL,
	[LongName] [varchar](50) NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parts]    Script Date: 3/25/2015 5:52:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[PartId] [int] IDENTITY(1,1) NOT NULL,
	[PartName] [nvarchar](50) NOT NULL,
	[PartDescription] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[ImageOnFile] [nvarchar](max) NULL,
	[ManufacturerId] [varchar](10) NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[PartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdminAccounts] ON 

INSERT [dbo].[AdminAccounts] ([AccountId], [Email], [Password], [AdminId]) VALUES (1, N'MichaelWHovis@dayrep.com', N'boqu7Uad2ph', 1)
INSERT [dbo].[AdminAccounts] ([AccountId], [Email], [Password], [AdminId]) VALUES (2, N'HannahRNeal@rhyta.com', N'yuK3shei', 2)
SET IDENTITY_INSERT [dbo].[AdminAccounts] OFF
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminId], [Name], [Address], [ContactNumber]) VALUES (1, N'Michael W. Hovis', N'1634 Sundown Lane, Buda, TX 78610', 512298466)
INSERT [dbo].[Admins] ([AdminId], [Name], [Address], [ContactNumber]) VALUES (2, N'Hannah R. Neal', N'64 Little Street, New Philadelphia, OH 44663', 330602158)
SET IDENTITY_INSERT [dbo].[Admins] OFF
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'A01', N'Audi', N'A2', N'1.6 L', N'Petrol', N'Silver', N'5-door hatchback', 10000, N'Imagess/Audi_A2_Silver.jpg', N'AD001')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'A07', N'Audi', N'A7', N'3.0 L', N'Petrol', N'Black', N'5-door Liftback', 63000, N'Imagess/Audi_A7_Black.jpg', N'AD001')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'BMC06', N'BMW', N'BMW M6 Coupe', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 38000, N'Imagess/bmw_coupe.png', N'BM009')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'BXM05', N'BMW', N'BMW X6M', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 38000, N'Imagess/BMW_X6_M.png', N'BM009')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'FDz001', N'Ford', N'Mondeo Ztec', N'1.6 L', N'Petrol', N'Red', N'5-door Saloon', 27500, N'Imagess/mondeoztec.png', N'FD003')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'FS10', N'Ford', N'Fiesta', N'1.6 L', N'Petrol', N'Blue', N'5-door hatchback', 15000, N'Imagess/Ford_Fiesta_Blue.jpg', N'FD003')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'MG50', N'Mercedes-Benz', N'GL-Class', N'3.0 L', N'Petrol', N'Black', N'5-door SUV', 34000, N'Imagess/Mercedes_GLClass_Black.jpg', N'MB002')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'MG55', N'Mercedes-Benz', N'GL-Class', N'2.5 L', N'Petrol', N'White', N'5-door SUV', 34000, N'Imagess/Mercedes_GLClass_White.jpg', N'MB002')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'NSQ13', N'Nissan', N'New Qashqai', N'1.6 L', N'Petrol', N'White', N'5-door SUV', 24000, N'Imagess/nissan_qashqai.png', N'TY004')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'NSS12', N'Nissan', N'New Juke', N'1.6 L', N'Petrol', N'Golden Yellow', N'5-door SUV', 28000, N'Imagess/nissan_juke.png', N'NS006')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'P208', N'Peugot', N'208 GTI', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 38000, N'Imagess/peugot_208_gti.png', N'PG008')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'P3008', N'Peugot', N'Peugot 3008', N'1.6 L', N'Petrol', N'Black', N'5-door SUV', 38000, N'Imagess/peugot_3008.png', N'PG008')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'P5008', N'Peugot', N'Peugot 5008', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 38000, N'Imagess/peugot_5008.png', N'PG008')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'Q07', N'Audi', N'Q7', N'4.2 L', N'Diesel', N'White', N'5-door SUV', 42000, N'Imagess/Audi_Q7_White.jpg', N'AD001')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'RD03', N'Range Rover', N'Discovery', N'4.0 L', N'Petrol', N'Light Brown', N'5-door SUV', 57000, N'Imagess/discovery.png', N'RNG005')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'RE01', N'Range Rover', N'Evoque', N'4.0 L', N'Petrol', N'Red', N'5-door SUV', 41000, N'Imagess/range_evoque.png', N'RNG005')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'RE02', N'Range Rover', N'Sport', N'4.0 L', N'Petrol', N'Red', N'5-door SUV', 41000, N'Imagess/range_sport.png', N'RNG005')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'SL07', N'Seat', N'Leon FR', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 22000, N'Imagess/seat_leon_fr.png', N'ST007')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'SLX7', N'Seat', N'Leon X-Perience', N'1.6 L', N'Petrol', N'Brown', N'5-door SUV', 27000, N'Imagess/leon_xperience.png', N'ST007')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'TC1515', N'Toyota', N'Corolla', N'1.6 L', N'Petrol', N'Grey', N'5-door SUV', 22000, N'Imagess/toyota_corolla.png', N'TY004')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'TGT860', N'Toyota', N'GT86', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 23000, N'Imagess/toyota_gt86.png', N'TY004')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'TRV04', N'Toyota', N'Rav4', N'1.6 L', N'Petrol', N'Silver', N'5-door SUV', 29000, N'Imagess/toyota_rav4.png', N'TY004')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'TRY4', N'Toyota', N'Yaris', N'1.6 L', N'Petrol', N'Red', N'5-door SUV', 18000, N'Imagess/toyota_yaris.png', N'TY004')
INSERT [dbo].[Car] ([CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [Images], [ManufacturerId]) VALUES (N'VG11', N'VW', N'Golf', N'1.6 L', N'Petrol', N'Blue', N'5-door SUV', 28000, N'Imagess/vw_golf.png', N'VW010')
SET IDENTITY_INSERT [dbo].[CustomerAccounts] ON 

INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (1, N'EleanoreARobbins@dayrep.com', N'maequ2iek6Oh', 1)
INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (2, N'DarylUHanes@armyspy.com', N'Prut1952', 2)
INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (3, N'CarenTMorris@dayrep.com', N'waong5Wai4', 3)
INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (4, N'DorothyBTurner@teleworm.us', N'De2rieph4ea', 4)
INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (5, N'JoLSabella@dayrep.com', N'eivoofaic5Th', 5)
INSERT [dbo].[CustomerAccounts] ([AccountId], [Email], [Password], [CustomerId]) VALUES (6, N'KyleLLucus@jourrapide.com', N'ahdair6uWah', 6)
SET IDENTITY_INSERT [dbo].[CustomerAccounts] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (1, N'Eleanore', N'Robbins', N'2846 Windy Ridge Road, Angola, IN 46703', 260624051, CAST(0x99060B00 AS Date))
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (2, N'Daryl', N'Hanes', N'4487 Raoul Wallenberg Place, New Haven, CT 06511', 203848064, CAST(0x1BF50A00 AS Date))
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (3, N'Caren', N'Morris', N'4001 Lakeland Terrace, Romulus, MI 48174', 734247667, CAST(0xBE0A0B00 AS Date))
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (4, N'Dorothy', N'Turner', N'3342 Middleville Road, Baldwin Park, CA 91706', 626338927, CAST(0x3FFC0A00 AS Date))
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (5, N'Jo', N'Sabella', N'263 Bartlett Avenue, Southfield, MI 48034', 248501973, CAST(0x05FC0A00 AS Date))
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [ContactNumber], [DateOfBirth]) VALUES (6, N'Kyle', N'Lucus', N'1938 Boone Street, Corpus Christi, TX 78476', 361261218, CAST(0x3DED0A00 AS Date))
SET IDENTITY_INSERT [dbo].[Customers] OFF
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'AD001', N'Audi', N'Audi AG')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'BM009', N'BMW', N'Bayerische Motoren Werke AG')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'FD003', N'Ford', N'Ford Motor Company')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'MB002', N'Mercedes', N'Mercedes-Benz')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'NS006', N'Nissan', N'Nissan Motor Company')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'PG008', N'Peugeot', N'Peugeot')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'RNG005', N'Range', N'Range Rover')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'ST007', N'Seat', N'Seat SA')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'TY004', N'Toyota', N'Toyota Motor Corporation')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ShortName], [LongName]) VALUES (N'VW010', N'Volkswagen', N'Volkswagen')
SET IDENTITY_INSERT [dbo].[Parts] ON 

INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (1, N'Catalytic Converter', N'This Catalytic Converter fits Mercedes-Benz vehicles from year 1999-2005', CAST(850 AS Decimal(18, 0)), 53849344, N'Images/Mercedes_Catalytic_Converter_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (2, N'Cooling Fan', N'This Cooling Fan fits Mercedes-Benz vehicles from year 1999-2005', CAST(350 AS Decimal(18, 0)), 44234234, N'Images/Mercedes_Cooling_Fan_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (3, N'Radiator', N'This Radiator fits Mercedes-Benz vehicles from year 1999-2005', CAST(550 AS Decimal(18, 0)), 54342223, N'Images/Mercedes_Radiator_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (4, N'Oil Filter', N'This Oil Filter fits Mercedes-Benz vehicles from year 1999-2005', CAST(100 AS Decimal(18, 0)), 3212321, N'Images/Mercedes_Oil_Filter_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (5, N'Exhaust Manifold', N'This Exhaust Manifold fits Mercedes-Benz vehicles from year 1999-2005', CAST(1200 AS Decimal(18, 0)), 12312312, N'Images/Mercedes_Exhaust_Manifold_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (6, N'Turbocharger', N'This Turbocharger fits Mercedes-Benz vehicles from year 1999-2005', CAST(1450 AS Decimal(18, 0)), 12312554, N'Images/Mercedes_Turbocharger_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (7, N'Fan Belt', N'This Fan Belt fits Mercedes-Benz vehicles from year 1999-2005', CAST(350 AS Decimal(18, 0)), 76553443, N'Images/Mercedes_Fan_Belt_1.jpg', NULL)
INSERT [dbo].[Parts] ([PartId], [PartName], [PartDescription], [Price], [SerialNumber], [ImageOnFile], [ManufacturerId]) VALUES (8, N'Fuel Pump', N'This Fuel Pump fits Mercedes-Benz vehicles from year 1999-2005', CAST(650 AS Decimal(18, 0)), 23244534, N'Images/Mercedes_Fuel_Pump_1.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Parts] OFF
ALTER TABLE [dbo].[AdminAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AdminAccounts_Admins] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admins] ([AdminId])
GO
ALTER TABLE [dbo].[AdminAccounts] CHECK CONSTRAINT [FK_AdminAccounts_Admins]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Manufacturer]
GO
ALTER TABLE [dbo].[CustomerAccounts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAccounts_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerAccounts] CHECK CONSTRAINT [FK_CustomerAccounts_Customers]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
