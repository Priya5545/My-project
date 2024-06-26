USE [master]
GO
/****** Object:  Database [BBD]    Script Date: 13-03-2019 2.29.35 PM ******/
CREATE DATABASE [BBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ABHINAV\MSSQL\DATA\BBD.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.ABHINAV\MSSQL\DATA\BBD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BBD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BBD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BBD] SET RECOVERY FULL 
GO
ALTER DATABASE [BBD] SET  MULTI_USER 
GO
ALTER DATABASE [BBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BBD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BBD', N'ON'
GO
USE [BBD]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddressBook](
	[UserName] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[Landmark] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AddressBook] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[UserId] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_AdminLogin] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bag]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bag](
	[BagId] [varchar](500) NOT NULL,
	[Date] [varchar](50) NULL,
	[Address] [varchar](5000) NULL,
	[UserId] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[TotalSum] [float] NULL,
 CONSTRAINT [PK_Bag] PRIMARY KEY CLUSTERED 
(
	[BagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[Category] [varchar](50) NULL,
	[FoodName] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalAmount] [float] NULL,
	[UserName] [varchar](50) NULL,
	[Id] [varchar](50) NOT NULL,
	[Date] [varchar](50) NULL,
	[BagId] [varchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Name] [varchar](50) NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[UserId] [varchar](150) NULL,
	[BagId] [varchar](500) NOT NULL,
	[Comment] [varchar](5000) NULL,
	[Rate] [varchar](50) NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[BagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[UserId] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[Name] [varchar](50) NOT NULL,
	[Small_Price] [varchar](50) NULL,
	[Regular_Price] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
 CONSTRAINT [PK_Menu_1] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place](
	[AreaName] [varchar](50) NULL,
	[Id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 13-03-2019 2.29.35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reservation](
	[Reserved_on] [varchar](50) NULL,
	[Reservation_Date] [varchar](50) NULL,
	[Reservation_Time] [varchar](50) NULL,
	[Male_Guest] [varchar](50) NULL,
	[Female_Guest] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Id] [varchar](50) NOT NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AddressBook] ([UserName], [FullName], [Mobile], [Pincode], [Address], [Area], [Landmark], [City], [State], [Id]) VALUES (N'Abhinav', N'Abhinav Manohar', N'9939192942', N'874521', N'House no. 1', N'HBR', N'near stationary shop', N'Bangalore', N'Karnataka', N'a3d3b2fc-ae0f-4189-9521-6185b3c779a9')
INSERT [dbo].[AdminLogin] ([UserId], [Password]) VALUES (N'Admin', N'a')
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'13faf5b3-92b3-48ed-be37-63b3cf6f225c', N'30-09-2018', N'Abhinav Manohar, House no. 1, HBR, near stationary shop, Bangalore, Karnataka, 874521', N'Abhinav', N'Delivered', 140)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'28c9beb2-f440-490a-83a3-c16c0bb53652', N'05-09-2018', N'Anuj Kumar, A001 Canopy Citadeldsdsdsdw, JP Nagar, Near sethna tower, Bangalore, Karnataka, 560073', N'Abhinav', N'Order Placed', 1040)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'414a9057-0acd-4964-92a5-0ad8a59ce5f8', N'29-08-2018', N'A001 Canopy Citadel, HBR, Near sethna tower, Karnataka, , 560073', N'Abhinav', N'Delivered', 60)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'4b712865-7d26-4a2a-a63e-e921b2ffcc31', N'01-09-2018', N'Anuj Kumar,A001 Canopy Citadeldsdsdsdw, JP Nagar, Near sethna tower, Bangalore, Karnataka, 560073', N'Abhinav', N'Cancelled', 40)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'6d49ae79-03dc-4c84-894d-9287e3320a97', N'01-09-2018', N'A001 Canopy Citadeldsdsdsdw, JP Nagar, Near sethna tower, Karnataka, , 560073', N'Abhinav', N'Order Placed', 40)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'987ec621-98ec-4edd-9e52-f965162185b8', N'10-09-2018', N'Abhinav Manohar, House no. 1, HBR, near stationary shop, Bangalore, Karnataka, 874521', N'Abhinav', N'Delivered', 220)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'ca11e637-ddf9-4dd4-a39c-271199d26adc', N'05-09-2018', N'Anuj Kumar, A001 Canopy Citadeldsdsdsdw, JP Nagar, Near sethna tower, Bangalore, Karnataka, 560073', N'Abhinav', N'Cancelled', 2160)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'e78b9824-f073-4380-85ee-8fb5f6fbdcf6', N'29-08-2018', N'A001 Canopy Citadel, HBR, Near sethna tower, Karnataka, , 560073', N'Abhinav', N'Order Placed', 0)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'e9ccc228-5350-48fb-8c21-fe7d623b27da', N'15-09-2018', N'Abhinav Manohar, House no. 1, HBR, near stationary shop, Bangalore, Karnataka, 874521', N'Abhinav', N'Shipped', 40)
INSERT [dbo].[Bag] ([BagId], [Date], [Address], [UserId], [Status], [TotalSum]) VALUES (N'f98a7b05-17af-4ae2-943a-12f951c5d67f', N'20-10-2018', N'Abhinav Manohar, House no. 1, HBR, near stationary shop, Bangalore, Karnataka, 874521', N'Abhinav', N'Adding Item', 0)
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Regular', N'30', N'3', 90, N'Abhinav', N'3c25c59b-6df0-470a-9c6a-7243878542a7', N'05-09-2018', N'ca11e637-ddf9-4dd4-a39c-271199d26adc')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Rice', N'Biryani', N'Regular', N'90', N'2', 180, N'Abhinav', N'434739b6-37bd-4a2c-a0ea-513052263017', N'10-09-2018', N'987ec621-98ec-4edd-9e52-f965162185b8')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'2', 40, N'Abhinav', N'52e97396-f01d-469c-a473-327ed0747917', N'15-09-2018', N'e9ccc228-5350-48fb-8c21-fe7d623b27da')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'52', 1040, N'Abhinav', N'6dcbda39-5362-44d3-9d2b-6a140df9618f', N'05-09-2018', N'28c9beb2-f440-490a-83a3-c16c0bb53652')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Rice', N'Biryani', N'Regular', N'90', N'23', 2070, N'Abhinav', N'6eccadbc-9672-47b5-9dc0-2e4db10d9cc2', N'05-09-2018', N'ca11e637-ddf9-4dd4-a39c-271199d26adc')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'5', 100, N'Abhinav', N'71e76334-35dd-4024-b1a1-61bb8dd60fa2', N'29-08-2018', N'c5dbd805-f537-4358-9268-2b57fa98cd41')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Regular', N'30', N'2', 60, N'Abhinav', N'7e4f5db1-c2ce-45b6-bd64-4b35e1475c63', N'29-08-2018', N'414a9057-0acd-4964-92a5-0ad8a59ce5f8')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'2', 40, N'Abhinav', N'8e96fd6d-9105-43e7-bc36-f120e2c7a306', N'10-09-2018', N'987ec621-98ec-4edd-9e52-f965162185b8')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'2', 40, N'Abhinav', N'b2f343c0-b85e-4fbd-8418-6ca7eaea61ee', N'01-09-2018', N'6d49ae79-03dc-4c84-894d-9287e3320a97')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Rice', N'Biryani', N'Small', N'70', N'2', 140, N'Abhinav', N'ccad86f6-25a1-4d11-9c17-20ebc2265553', N'30-09-2018', N'13faf5b3-92b3-48ed-be37-63b3cf6f225c')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'2', 40, N'Abhinav', N'd15d3f99-5c62-40d7-ae99-5cb02b410d64', N'29-08-2018', N'e78b9824-f073-4380-85ee-8fb5f6fbdcf6')
INSERT [dbo].[Cart] ([Category], [FoodName], [Size], [Price], [Quantity], [TotalAmount], [UserName], [Id], [Date], [BagId]) VALUES (N'Bread', N'Tandoori Roti', N'Small', N'20', N'2', 40, N'Abhinav', N'eca99eef-bc24-47fc-937b-615a3e9ccf71', N'01-09-2018', N'4b712865-7d26-4a2a-a63e-e921b2ffcc31')
INSERT [dbo].[Category] ([Name], [Id]) VALUES (N'Chinese', N'ffbf6bb7-a863-4057-9f97-543225af09bb')
INSERT [dbo].[Category] ([Name], [Id]) VALUES (N'Rice', N'd9943905-fcbd-4900-8542-6fcc5e64822f')
INSERT [dbo].[Feedbacks] ([UserId], [BagId], [Comment], [Rate]) VALUES (N'Abhinav', N'13faf5b3-92b3-48ed-be37-63b3cf6f225c', N'I was in love with food. ', N'5 star')
INSERT [dbo].[Feedbacks] ([UserId], [BagId], [Comment], [Rate]) VALUES (N'Abhinav', N'414a9057-0acd-4964-92a5-0ad8a59ce5f8', N'w', N'5 star')
INSERT [dbo].[Feedbacks] ([UserId], [BagId], [Comment], [Rate]) VALUES (N'Abhinav', N'987ec621-98ec-4edd-9e52-f965162185b8', N'd', N'5 star')
INSERT [dbo].[Login] ([UserId], [Password], [Email], [Mobile]) VALUES (N'Abhijeet', N'0123', N'abhijeet@gmail.com', N'9874563210')
INSERT [dbo].[Login] ([UserId], [Password], [Email], [Mobile]) VALUES (N'Abhinav', N'123456', N'abhinavmanoharnwd@gmail.com', N'9905907066')
INSERT [dbo].[Login] ([UserId], [Password], [Email], [Mobile]) VALUES (N'Shitinz deb', N'145632', N'shitinz.deb@gmail.com', N'9874563210')
INSERT [dbo].[Menu] ([Name], [Small_Price], [Regular_Price], [Category]) VALUES (N'Biryani', N'70', N'80', N'Rice')
INSERT [dbo].[Place] ([AreaName], [Id]) VALUES (N'Sarjapur', N'58bb08e9-835c-41d6-a61a-d24972e67106')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'22-08-2018', N'2018/08/14', N'08:30 PM', N'2', N'2', N'Abhinav', N'5a912c41-a3d1-4946-8839-8ae4c525b7f7', N'Cancelled')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'22-08-2018', N'2018/08/21', N'01:30 PM', N'2', N'2', N'Abhinav', N'8f135947-230f-4309-8432-401cd4e223d5', N'Cancelled')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'10-09-2018', N'2018/09/17', N'10:00 PM', N'2', N'3', N'Abhinav', N'af8a0e53-3196-4506-a5e7-d6522e8295e2', N'Cancelled')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'05-09-2018', N'2018/09/05', N'08:00 PM', N'5', N'6', N'Abhinav', N'dcb55b69-4d73-4a13-8ec4-6e84649d8a92', N'Cancelled')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'10-09-2018', N'2018/09/11', N'08:30 PM', N'2', N'3', N'Abhinav', N'e8f877e4-f9ad-4cba-a646-9f0db53d726f', N'Cancelled')
INSERT [dbo].[Reservation] ([Reserved_on], [Reservation_Date], [Reservation_Time], [Male_Guest], [Female_Guest], [UserId], [Id], [Status]) VALUES (N'30-09-2018', N'2018/10/03', N'07:30 PM', N'2', N'0', N'Abhinav', N'ee49dd06-8972-4426-8d21-8f68b1d30dc3', N'Cancelled')
USE [master]
GO
ALTER DATABASE [BBD] SET  READ_WRITE 
GO
