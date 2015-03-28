IF DB_ID('ProjectDatabaseDB') IS NOT NULL
	DROP DATABASE ProjectDatabaseDB
	
CREATE DATABASE ProjectDatabaseDB
GO


USE [ProjectDatabaseDB]
GO
/****** Object:  Table [dbo].[AdminAccounts]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Admins]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Cars]    Script Date: 3/25/2015 4:32:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[EngineSize] [nvarchar](50) NOT NULL,
	[FuelType] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[BodyType] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[ImageOnFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerAccounts]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Items]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 3/25/2015 4:32:52 PM ******/
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
/****** Object:  Table [dbo].[Parts]    Script Date: 3/25/2015 4:32:52 PM ******/
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
ALTER TABLE [dbo].[AdminAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AdminAccounts_Admins] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admins] ([AdminId])
GO
ALTER TABLE [dbo].[AdminAccounts] CHECK CONSTRAINT [FK_AdminAccounts_Admins]
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


INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('A01','Audi','A2','1.6 L','Petrol','Silver','5-door hatchback','10000','Imagess/Audi_A2_Silver.jpg','AD001');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('A07','Audi','A7','3.0 L','Petrol','Black','5-door Liftback','63000','Imagess/Audi_A7_Black.jpg','AD001');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('Q07','Audi','Q7','4.2 L','Diesel','White','5-door SUV','42000','Imagess/Audi_Q7_White.jpg','AD001');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('FS10','Ford','Fiesta','1.6 L','Petrol','Blue','5-door hatchback','15000','Imagess/Ford_Fiesta_Blue.jpg','FD003');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('Ford','Mondeo Ztec','1.6 L','Petrol','Red','5-door Saloon','27500','Imagess/mondeoztec.png','FD003');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('MG55','Mercedes-Benz','GL-Class','2.5 L','Petrol','White','5-door SUV','34000','Imagess/Mercedes_GLClass_White.jpg','MB002');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('MG50','Mercedes-Benz','GL-Class','3.0 L','Petrol','Black','5-door SUV','34000','Imagess/Mercedes_GLClass_Black.jpg','MB002');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('RE01','Range Rover','Evoque','4.0 L','Petrol','Red','5-door SUV','41000','Imagess/range_evoque.png','RNG005');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('RE02','Range Rover','Sport','4.0 L','Petrol','Red','5-door SUV','41000','Imagess/range_sport.png','RNG005');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('RD03','Range Rover','Discovery','4.0 L','Petrol','Light Brown','5-door SUV','57000','Imagess/discovery.png','RNG005');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('VG11','VW','Golf','1.6 L','Petrol','Blue','5-door SUV','28000','Imagess/vw_golf.png','VW010');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('BMC06','BMW','BMW M6 Coupe','1.6 L','Petrol','Red','5-door SUV','38000','Imagess/bmw_coupe.png','BM009');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('BXM05','BMW','BMW X6M','1.6 L','Petrol','Red','5-door SUV','38000','Imagess/BMW_X6_M.png','BM009');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('P208','Peugot','208 GTI','1.6 L','Petrol','Red','5-door SUV','38000','Imagess/peugot_208_gti.png','PG008');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('P5008','Peugot','Peugot 5008','1.6 L','Petrol','Red','5-door SUV','38000','Imagess/peugot_5008.png','PG008');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('P3008','Peugot','Peugot 3008','1.6 L','Petrol','Black','5-door SUV','38000','Imagess/peugot_3008.png','PG008');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('SL07','Seat','Leon FR','1.6 L','Petrol','Red','5-door SUV','22000','Imagess/seat_leon_fr.png','ST007');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('SLX7','Seat','Leon X-Perience','1.6 L','Petrol','Brown','5-door SUV','27000','Imagess/leon_xperience.png','ST007');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('SLX7','Seat','Ibiza ST','1.6 L','Petrol','Lemon Green','5-door SUV','26000','Imagess/seat_ibiza_st.png','ST007');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('TC1515','Toyota','Corolla','1.6 L','Petrol','Grey','5-door SUV','22000','Imagess/toyota_corolla.png','TY004');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('TGT860','Toyota','GT86','1.6 L','Petrol','Red','5-door SUV','23000','Imagess/toyota_gt86.png','TY004');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('TRV04','Toyota','Rav4','1.6 L','Petrol','Silver','5-door SUV','29000','Imagess/toyota_rav4.png','TY004');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('TRV04','Toyota','Yaris','1.6 L','Petrol','Red','5-door SUV','18000','Imagess/toyota_yaris.png','TY004');


INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('NSS12','Nissan','New Juke','1.6 L','Petrol','Golden Yellow','5-door SUV','28000','Imagess/nissan_juke.png','NS006');

INSERT INTO Car (CarId, Make, Model, EngineSize, FuelType, Color, BodyType, Price, Images, ManufacturerId)
VALUES ('NSQ13','Nissan','New Qashqai','1.6 L','Petrol','White','5-door SUV','24000','Imagess/nissan_qashqai.png','TY004');


-- Customers --
INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Eleanore','Robbins','2846 Windy Ridge Road, Angola, IN 46703','260624051','19790517');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('EleanoreARobbins@dayrep.com','maequ2iek6Oh',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Daryl','Hanes','4487 Raoul Wallenberg Place, New Haven, CT 06511','203848064','19670211');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DarylUHanes@armyspy.com','Prut1952',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Caren','Morris','4001 Lakeland Terrace, Romulus, MI 48174','734247667','19820412');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('CarenTMorris@dayrep.com','waong5Wai4',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Dorothy','Turner','3342 Middleville Road, Baldwin Park, CA 91706','626338927','19720213');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DorothyBTurner@teleworm.us','De2rieph4ea',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Jo','Sabella','263 Bartlett Avenue, Southfield, MI 48034','248501973','19711217');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('JoLSabella@dayrep.com','eivoofaic5Th',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Kyle','Lucus','1938 Boone Street, Corpus Christi, TX 78476','361261218','19610807');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('KyleLLucus@jourrapide.com','ahdair6uWah',SCOPE_IDENTITY());


INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Michael W. Hovis','1634 Sundown Lane, Buda, TX 78610','512298466');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('MichaelWHovis@dayrep.com','boqu7Uad2ph',SCOPE_IDENTITY());

INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Hannah R. Neal','64 Little Street, New Philadelphia, OH 44663','330602158');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('HannahRNeal@rhyta.com','yuK3shei',SCOPE_IDENTITY());


-- Parts --
INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits Mercedes-Benz vehicles from year 1999-2005','850','53849344','Images/Mercedes_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits Mercedes-Benz vehicles from year 1999-2005','350','44234234','Images/Mercedes_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Radiator','This Radiator fits Mercedes-Benz vehicles from year 1999-2005','550','54342223','Images/Mercedes_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits Mercedes-Benz vehicles from year 1999-2005','100','3212321','Images/Mercedes_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits Mercedes-Benz vehicles from year 1999-2005','1200','12312312','Images/Mercedes_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits Mercedes-Benz vehicles from year 1999-2005','1450','12312554','Images/Mercedes_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits Mercedes-Benz vehicles from year 1999-2005','350','76553443','Images/Mercedes_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Price, SerialNumber, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits Mercedes-Benz vehicles from year 1999-2005','650','23244534','Images/Mercedes_Fuel_Pump_1.jpg');
-- Parts --
