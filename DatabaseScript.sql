USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 4/30/2017 10:07:19 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 4/30/2017 10:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [varchar](50) NOT NULL,
	[AccessoryPhoto] [nvarchar](50) NULL,
	[AccessoryType] [varchar](50) NULL,
	[AccessoryColor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 4/30/2017 10:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] NOT NULL,
	[BottomName] [varchar](50) NOT NULL,
	[BottomPhoto] [varchar](50) NULL,
	[BottomType] [varchar](50) NULL,
	[BottomColor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 4/30/2017 10:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitSeason] [varchar](50) NULL,
	[OutfitOccasion] [varchar](50) NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 4/30/2017 10:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [varchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](50) NULL,
	[ShoeType] [varchar](50) NULL,
	[ShoeColor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tops]    Script Date: 4/30/2017 10:07:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](50) NULL,
	[TopType] [nvarchar](50) NULL,
	[TopColor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor]) VALUES (1, N'Fancy Backpack', N'~Content\Images\Accessories\Accessory1.jpg', N'Work Attire', N'Black')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor]) VALUES (2, N'Tote Weekender', N'~Content\Images\Accessories\Accessory2.jpg', N'Casual', N'Brown')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor]) VALUES (3, N'Crossbody Bag', N'~Content\Images\Accessories\Accessory3.jpg', N'Casual', N'Brown')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor]) VALUES (4, N'Laptop Bag', N'~Content\Images\Accessories\Accessory4.jpg', N'Work Attire', N'Blue')
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AccessoryType], [AccessoryColor]) VALUES (5, N'Handbag', N'~Content\Images\Accessories\Accessory5.jpg', N'Work Attire', N'Black')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor]) VALUES (1, N'Jeans', N'~Content\Images\Bottoms\Bottoms1.jpg', N'Casual', N'Blue')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor]) VALUES (2, N'Leggings', N'~Content\Images\Bottoms\Bottoms2.jpg', N'Work Attire', N'Black')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor]) VALUES (3, N'Shorts', N'~Content\Images\Bottoms\Bottoms3.jpg', N'Casual', N'Green')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor]) VALUES (4, N'Shorts', N'~Content\Images\Bottoms\Bottoms4.jpg', N'Casual', N'Purple')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor]) VALUES (5, N'Shorts', N'~Content\Images\Bottoms\Bottoms5.jpg', N'Casual', N'Blue')
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor]) VALUES (1, N'Keds Sneakers', N'~Content\Images\Shoes\Shoes1.jpg', N'Casual', N'Red')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor]) VALUES (2, N'Flip Flop Sandals', N'~Content\Images\Shoes\Shoes2.jpg', N'Work Attire', N'Gold')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor]) VALUES (3, N'Black Booties', N'~Content\Images\Shoes\Shoes3.jpg', N'Night Out', N'Black')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor]) VALUES (4, N'Ballet Flats', N'~Content\Images\Shoes\Shoes4.jpg', N'Work Attire', N'Black')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor]) VALUES (5, N'Converse Sneakers', N'~Content\Images\Shoes\Shoes5.jpg', N'Casual', N'White')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor]) VALUES (5, N'Dogs and Naps Graphic Tee', N'~Content\Images\Tops\top1.jpg', N'Casual', N'White')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor]) VALUES (6, N'I Just Want to Be a Unicorn Graphic Tee', N'~Content\Images\Tops\top2.jpg', N'Casual', N'Gray')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor]) VALUES (7, N'Nike Graphic Tee', N'~Content\Images\Tops\top3.jpg', N'Casual', N'Gray')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor]) VALUES (8, N'Off-The-Shoulder Sweater', N'~Content\Images\Tops\top4.jpg', N'Work Attire', N'Brown')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor]) VALUES (9, N'Cowl Neck Sweater', N'~Content\Images\Tops\top5.jpg', N'Work Attire', N'Brown')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Outfits] FOREIGN KEY([OutfitID])
REFERENCES [dbo].[Outfits] ([OutfitID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Outfits]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Outfits1] FOREIGN KEY([OutfitID])
REFERENCES [dbo].[Outfits] ([OutfitID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Outfits1]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
