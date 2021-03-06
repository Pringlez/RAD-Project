/* Check if database already exists and delete it if it does exist*/
IF EXISTS(SELECT 1 FROM master.dbo.sysdatabases WHERE name = 'CarZone') 
BEGIN
DROP DATABASE CarZone
END
GO

CREATE DATABASE CarZone
GO

USE [CarZone]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 03/15/2015 21:57:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts](
	[PartId] [int] IDENTITY(1,1) NOT NULL,
	[PartName] [nvarchar](50) NOT NULL,
	[PartDescription] [nvarchar](max) NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImageOnFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[PartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','850','53849344','7','Images/Parts/Mercedes_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','350','44234234','5','Images/Parts/Mercedes_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','550','54342223','9','Images/Parts/Mercedes_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','100','32123217','4','Images/Parts/Mercedes_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','1200','12312312','2','Images/Parts/Mercedes_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','1450','12312554','12','Images/Parts/Mercedes_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','350','76553443','4','Images/Parts/Mercedes_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits Mercedes-Benz vehicles from year 1999-2005','Mercedes-Benz','650','23244534','6','Images/Parts/Mercedes_Fuel_Pump_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits BMW vehicles from year 1999-2005','BMW','850','29383927','11','Images/Parts/BMW_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits BMW vehicles from year 1999-2005','BMW','350','61526750','13','Images/Parts/BMW_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits BMW vehicles from year 1999-2005','BMW','550','00985285','4','Images/Parts/BMW_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits BMW vehicles from year 1999-2005','BMW','100','17261423','3','Images/Parts/BMW_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits BMW vehicles from year 1999-2005','BMW','1200','88752154','5','Images/Parts/BMW_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits BMW vehicles from year 1999-2005','BMW','1450','99876759','1','Images/Parts/BMW_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits BMW vehicles from year 1999-2005','BMW','350','74654090','7','Images/Parts/BMW_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits BMW vehicles from year 1999-2005','BMW','650','90987676','9','Images/Parts/BMW_Fuel_Pump_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Catalytic Converter','This Catalytic Converter fits Audi vehicles from year 1999-2005','Audi','850','76543089','3','Images/Parts/Audi_Catalytic_Converter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Cooling Fan','This Cooling Fan fits Audi vehicles from year 1999-2005','Audi','350','13264856','4','Images/Parts/Audi_Cooling_Fan_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Radiator','This Radiator fits Audi vehicles from year 1999-2005','Audi','550','48272839','7','Images/Parts/Audi_Radiator_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Oil Filter','This Oil Filter fits Audi vehicles from year 1999-2005','Audi','100','26387678','4','Images/Parts/Audi_Oil_Filter_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Exhaust Manifold','This Exhaust Manifold fits Audi vehicles from year 1999-2005','Audi','1200','09878978','0','Images/Parts/Audi_Exhaust_Manifold_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Turbocharger','This Turbocharger fits Audi vehicles from year 1999-2005','Audi','1450','14234543','1','Images/Parts/Audi_Turbocharger_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fan Belt','This Fan Belt fits Audi vehicles from year 1999-2005','Audi','350','12135409','3','Images/Parts/Audi_Fan_Belt_1.jpg');

INSERT INTO Parts (PartName, PartDescription, Manufacturer, Price, SerialNumber, Quantity, ImageOnFile)
VALUES ('Fuel Pump','This Fuel Pump fits Audi vehicles from year 1999-2005','Audi','650','88764511','8','Images/Parts/Audi_Fuel_Pump_1.jpg');

/****** Object:  Table [dbo].[Cars]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','1.6 L','Petrol','Silver','5-door Hatchback','10000','Images/Cars/Audi_A2_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','1.8 L','Diesel','Black','5-door Hatchback','9000','Images/Cars/Audi_A2_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A2','2.0 L','Petrol','Red','5-door Hatchback','8500','Images/Cars/Audi_A2_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','A7','3.0 L','Petrol','Black','5-door Liftback','63000','Images/Cars/Audi_A7_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Audi','Q7','4.2 L','Diesel','White','5-door SUV','42000','Images/Cars/Audi_Q7_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','1.6 L','Petrol','Blue','5-door Hatchback','15000','Images/Cars/Ford_Fiesta_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','2.0 L','Petrol','Red','5-door Hatchback','13500','Images/Cars/Ford_Fiesta_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fiesta','1.6 L','Diesel','White','5-door Hatchback','11000','Images/Cars/Ford_Fiesta_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','2.5 L','Petrol','White','5-door SUV','34000','Images/Cars/Mercedes_GLClass_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','3.0 L','Petrol','Black','5-door SUV','34000','Images/Cars/Mercedes_GLClass_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Mercedes-Benz','GL-Class','4.0 L','Petrol','Blue','5-door SUV','37000','Images/Cars/Mercedes_GLClass_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('BMW','X6','3.5 L','Petrol','Silver','5-door SUV','45000','Images/Cars/BMW_X6_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Fusion','2.0 L','Petrol','Silver','5-door Saloon','45000','Images/Cars/Ford_Fusion_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Seat','Leon Aeroport','1.6 L','Petrol','Silver','3-door Hatchback','28000','Images/Cars/Seat_Leon_Aeroport_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Seat','Ibiza','1.8 L','Petrol','Green','3-door Hatchback','32000','Images/Cars/Seat_Ibiza_St_Green.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Seat','Leon Fr','1.6 L','Petrol','Red','3-door Hatchback','28000','Images/Cars/Seat_Leon_Fr_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Toyota','Corolla','1.8 L','Diesel','Black','5-door Saloon','32000','Images/Cars/Toyota_Corolla_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Toyota','GT86','1.6 L','Petrol','Red','3-door Saloon','34500','Images/Cars/Toyota_GT86_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Toyota','Yaris','1.4 L','Petrol','Red','5-door Hatchback','22000','Images/Cars/Toyota_Yaris_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Toyota','Rav4','2.5 L','Diesel','Black','5-door SUV','45000','Images/Cars/Toyota_Rav4_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('VW','Golf','1.8 L','Diesel','Blue','3-door Hatchback','28000','Images/Cars/VW_Golf_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('VW','Passat','2.0 L','Diesel','Silver','3-door Hatchback','28000','Images/Cars/VW_Passat_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('BMW','Coupe','2.5 L','Petrol','Orange','3-door Saloon','47000','Images/Cars/BMW_Coupe_Orange.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Ford','Mondeo Zetec','2.0 L','Petrol','Black','5-door Saloon','47000','Images/Cars/Ford_Mondeo_Zetec_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Leon','Xperience','2.0 L','Petrol','Grey','5-door Station Wagon','40000','Images/Cars/Leon_Xperience_Grey.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Nissan','Juke','1.6 L','Petrol','Yellow','3-door SUV','32000','Images/Cars/Nissan_Juke_Yellow.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Nissan','Qashqai','2.0 L','Petrol','White','5-door SUV','39000','Images/Cars/Nissan_Qashqai_White.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Peugot','208 GTI','1.8 L','Petrol','Red','3-door Hatchback','32000','Images/Cars/Peugot_208_GTI_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Peugot','3008','2.2 L','Petrol','Black','5-door SUV','42000','Images/Cars/Peugot_3008_Black.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Peugot','5008','2.5 L','Diesel','Silver','5-door SUV','40000','Images/Cars/Peugot_5008_Silver.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Range Rover','Discovery','2.5 L','Diesel','Blue','5-door SUV','40000','Images/Cars/Range_Rover_Discovery_Blue.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Range Rover','Evoque','2.5 L','Diesel','Red','5-door SUV','40000','Images/Cars/Range_Rover_Evoque_Red.jpg');

INSERT INTO Cars (Make, Model, EngineSize, FuelType, Color, BodyType, Price, ImageOnFile)
VALUES ('Range Rover','Sport','2.0 L','Diesel','Red','5-door SUV','40000','Images/Cars/Range_Rover_Sport_Red.jpg');

/****** Object:  Table [dbo].[Admins]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAccounts]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Eleanore','Robbins','2846 Windy Ridge Road, Angola, IN 46703','0873215432','19790517');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('EleanoreARobbins@dayrep.com','maequ2iek6Oh',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Daryl','Hanes','4487 Raoul Wallenberg Place, New Haven, CT 06511','0838764762','19670211');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DarylUHanes@armyspy.com','Prut1952',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Caren','Morris','4001 Lakeland Terrace, Romulus, MI 48174','0861212345','19820412');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('CarenTMorris@dayrep.com','waong5Wai4',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Dorothy','Turner','3342 Middleville Road, Baldwin Park, CA 91706','0866576123','19720213');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('DorothyBTurner@teleworm.us','De2rieph4ea',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Jo','Sabella','263 Bartlett Avenue, Southfield, MI 48034','0855987529','19711217');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('JoLSabella@dayrep.com','eivoofaic5Th',SCOPE_IDENTITY());

INSERT INTO Customers (FirstName, LastName, Address, ContactNumber, DateOfBirth)
VALUES ('Kyle','Lucus','1938 Boone Street, Corpus Christi, TX 78476','0851729586','19610807');

INSERT INTO CustomerAccounts (Email, Password, CustomerId) 
VALUES ('KyleLLucus@jourrapide.com','ahdair6uWah',SCOPE_IDENTITY());

/****** Object:  Table [dbo].[AdminAccounts]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Michael W. Hovis','1634 Sundown Lane, Buda, TX 78610','0838763086');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('MichaelWHovis@dayrep.com','boqu7Uad2ph',SCOPE_IDENTITY());

INSERT INTO Admins (Name, Address, ContactNumber)
VALUES ('Hannah R. Neal','64 Little Street, New Philadelphia, OH 44663','0873761839');

INSERT INTO AdminAccounts (Email, Password, AdminId) 
VALUES ('HannahRNeal@rhyta.com','yuK3shei',SCOPE_IDENTITY());

/****** Object:  Table [dbo].[Orders]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 03/15/2015 21:57:43 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_AdminAccounts_Admins]    Script Date: 03/15/2015 21:57:43 ******/
ALTER TABLE [dbo].[AdminAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AdminAccounts_Admins] FOREIGN KEY([AdminId])
REFERENCES [dbo].[Admins] ([AdminId])
GO
ALTER TABLE [dbo].[AdminAccounts] CHECK CONSTRAINT [FK_AdminAccounts_Admins]
GO
/****** Object:  ForeignKey [FK_CustomerAccounts_Customers]    Script Date: 03/15/2015 21:57:43 ******/
ALTER TABLE [dbo].[CustomerAccounts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAccounts_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerAccounts] CHECK CONSTRAINT [FK_CustomerAccounts_Customers]
GO
/****** Object:  ForeignKey [FK_Items_Orders]    Script Date: 03/15/2015 21:57:43 ******/
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Orders]
GO
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 03/15/2015 21:57:43 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
