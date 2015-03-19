IF DB_ID('CarZoneDB') IS NOT NULL
	DROP DATABASE CarZoneDatabase
	
CREATE DATABASE CarZoneDatabase
GO

USE [CarZoneDatabase]
GO
/****** Object:  Table [dbo].[AdminData]    Script Date: 3/12/2015 8:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminData](
	[ID] [nchar](10) NULL,
	[Name] [nchar](50) NULL,
	[UserName] [nchar](15) NULL,
	[Email] [nchar](60) NULL,
	[Password] [nchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarMake]    Script Date: 3/12/2015 8:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarMake](
	[MakeID] [text] NOT NULL,
	[Name] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarModels]    Script Date: 3/12/2015 8:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModels](
	[ModelID] [text] NOT NULL,
	[MakeID] [text] NOT NULL,
	[Name] [text] NULL,
	[Descrption] [text] NULL,
	[Price] [money] NULL,
	[Image] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerData]    Script Date: 3/12/2015 8:23:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerData](
	[ID] [nvarchar](50) NULL,
	[UseName] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](20) NULL,
	[Fname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[Country] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
