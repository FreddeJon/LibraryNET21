USE [master]
GO
/****** Object:  Database [LibraryNET21]    Script Date: 2022-01-05 09:00:12 ******/
CREATE DATABASE [LibraryNET21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibraryNET21', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibraryNET21.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LibraryNET21_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LibraryNET21_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LibraryNET21] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryNET21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryNET21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryNET21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryNET21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryNET21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryNET21] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryNET21] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibraryNET21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryNET21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryNET21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryNET21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryNET21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryNET21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryNET21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryNET21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryNET21] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LibraryNET21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryNET21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryNET21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryNET21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryNET21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryNET21] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LibraryNET21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryNET21] SET RECOVERY FULL 
GO
ALTER DATABASE [LibraryNET21] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryNET21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryNET21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryNET21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryNET21] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibraryNET21] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibraryNET21] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibraryNET21', N'ON'
GO
ALTER DATABASE [LibraryNET21] SET QUERY_STORE = OFF
GO
USE [LibraryNET21]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookAttributes]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookAttributes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CoverId] [int] NULL,
	[Pages] [int] NOT NULL,
 CONSTRAINT [PK_BookAttributes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[CategoryId] [int] NULL,
	[AuthorId] [int] NULL,
	[AttributesId] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Covers]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Covers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CoverType] [nvarchar](max) NULL,
 CONSTRAINT [PK_Covers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rentals]    Script Date: 2022-01-05 09:00:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rentals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RentedBookId] [int] NULL,
	[UserId] [nvarchar](450) NULL,
	[IsReturned] [bit] NOT NULL,
	[DateRented] [datetime2](7) NOT NULL,
	[DateReturned] [datetime2](7) NULL,
 CONSTRAINT [PK_Rentals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220170853_Initial', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221134039_AddedAttributes', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221141026_AddedAttributesv1.0', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220103135355_AdddingRentals', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220103212448_latest', N'6.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8726fe4b-3fbf-4f6c-b414-dae836a51dc8', N'Admin', N'ADMIN', N'bee7fef4-8d39-4283-9cb9-9d2666e5d900')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'131c59e5-5dad-41aa-98f9-6f43e23d9778', N'8726fe4b-3fbf-4f6c-b414-dae836a51dc8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'131c59e5-5dad-41aa-98f9-6f43e23d9778', N'admin@123', N'ADMIN@123', N'admin@123', N'ADMIN@123', 1, N'AQAAAAEAACcQAAAAEPNAezQG9J5y1himmqxwr6ylohzQYk6IczJm+/6N/p6mSp7eSwE5IU4yaHO2SHcrxQ==', N'PU4RL2GHWQ5K3CKWIB5U2HRI42F76KA2', N'258b2ca9-5317-4ea0-b258-dd252d3bee66', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', N'fredrikjonson@hotmail.se', N'FREDRIKJONSON@HOTMAIL.SE', N'fredrikjonson@hotmail.se', N'FREDRIKJONSON@HOTMAIL.SE', 0, N'AQAAAAEAACcQAAAAEJKXA6nHfHxDq5D2AMOITCmrf4WtHcBkW90z70gOw99j6AXWtJNBPRqotets8SKaaQ==', N'UGESMQUBVEX4MBES3ARP7YPU2RRAPIAB', N'd81b0adc-0e8c-4750-bdcb-326d6825f38b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c2403113-7493-4671-9fd9-137cfc054a4c', N'fredde@1.se', N'FREDDE@1.SE', N'fredde@1.se', N'FREDDE@1.SE', 0, N'AQAAAAEAACcQAAAAEIu+TsFHg1//v1RnOdpI76/a6N9B45RuhoWIPyj9svFU18i3ykc0gAjOAKRIDVKHqg==', N'4EX2RCYDNFY3AT2G4NJORHTTXRHI7EPI', N'4e2dfe21-b30a-4558-a877-ef2c440826b9', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (1, N'J.K Rowling')
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (2, N'Karl Marx')
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (3, N'Lars Keepler')
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (4, N'David Sundin')
GO
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (5, N'Gregory David Roberts')
GO
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[BookAttributes] ON 
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (7, 1, 697)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (8, 1, 1000)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (9, 1, 1000)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (10, 1, 700)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (11, 1, 1000)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (12, 1, 800)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (13, 1, 900)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (14, 1, 900)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (15, 1, 799)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (16, 1, 1300)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (17, 1, 1200)
GO
INSERT [dbo].[BookAttributes] ([Id], [CoverId], [Pages]) VALUES (18, 1, 3000)
GO
SET IDENTITY_INSERT [dbo].[BookAttributes] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (8, N'Harry Potter and the prisoner from Azkaban', 1, 4, 1, 7)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (9, N'Hypnotisören', 1, 2, 3, 8)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (10, N'Paganinikontraktet', 1, 2, 3, 9)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (11, N'Eldvittnet', 0, 2, 3, 10)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (12, N'Sandmannen', 1, 2, 3, 11)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (13, N'Stalker', 1, 2, 3, 12)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (14, N'Kaninjägaren', 1, 2, 3, 13)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (15, N'Lazarus', 1, 2, 3, 14)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (16, N'Spegelmannen', 1, 2, 3, 15)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (17, N'Harry Potter and the sorcerers stone', 1, 4, 1, 16)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (18, N'Shantaram', 1, 1, 5, 17)
GO
INSERT [dbo].[Books] ([Id], [Title], [IsAvailable], [CategoryId], [AuthorId], [AttributesId]) VALUES (19, N'Manifest der Kommunistischen Partei', 1, 5, 2, 18)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (1, N'Drama')
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (2, N'Thriller')
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (3, N'Horror')
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (4, N'Science Fiction')
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (5, N'History')
GO
INSERT [dbo].[Categories] ([Id], [CategoryTitle]) VALUES (6, N'Novel')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Covers] ON 
GO
INSERT [dbo].[Covers] ([Id], [CoverType]) VALUES (1, N'Hard Cover')
GO
INSERT [dbo].[Covers] ([Id], [CoverType]) VALUES (2, N'Pocket')
GO
SET IDENTITY_INSERT [dbo].[Covers] OFF
GO
SET IDENTITY_INSERT [dbo].[Rentals] ON 
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (1, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T15:15:21.2149060' AS DateTime2), CAST(N'2022-01-03T17:13:41.5524258' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (2, 13, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T15:17:58.6024511' AS DateTime2), CAST(N'2022-01-03T17:13:48.8981477' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (3, 8, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T15:18:10.8377160' AS DateTime2), CAST(N'2022-01-03T17:13:49.3533550' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (4, 12, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:27.5172548' AS DateTime2), CAST(N'2022-01-03T17:13:49.8048604' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (5, 14, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:30.5304939' AS DateTime2), CAST(N'2022-01-03T17:13:50.3088648' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (6, 15, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:31.5147406' AS DateTime2), CAST(N'2022-01-03T17:13:51.5811504' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (7, 16, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:31.9872310' AS DateTime2), CAST(N'2022-01-03T17:13:52.0086391' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (8, 17, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:32.3753511' AS DateTime2), CAST(N'2022-01-03T17:13:52.4448775' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (9, 18, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:32.7374016' AS DateTime2), CAST(N'2022-01-03T17:13:52.8831040' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (10, 19, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:33.0669796' AS DateTime2), CAST(N'2022-01-03T17:13:53.3318357' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (11, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T17:13:33.8112343' AS DateTime2), CAST(N'2022-01-03T17:13:53.7429942' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (12, 11, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:15:10.6131639' AS DateTime2), CAST(N'2022-01-03T17:15:41.7376892' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (13, 11, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:32.9044356' AS DateTime2), CAST(N'2022-01-03T17:17:09.4911849' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (14, 8, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:33.4628777' AS DateTime2), CAST(N'2022-01-03T17:17:10.0414021' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (15, 9, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:34.1326840' AS DateTime2), CAST(N'2022-01-03T17:17:10.5936559' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (16, 10, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:34.6585190' AS DateTime2), CAST(N'2022-01-03T17:17:11.0624569' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (17, 12, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:35.2252559' AS DateTime2), CAST(N'2022-01-03T17:17:11.4814062' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (18, 13, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:35.6605758' AS DateTime2), CAST(N'2022-01-03T17:17:11.8445366' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (19, 14, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:36.0925689' AS DateTime2), CAST(N'2022-01-03T17:17:12.2664079' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (20, 15, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:36.5306319' AS DateTime2), CAST(N'2022-01-03T17:17:13.1594415' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (21, 16, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:36.8968730' AS DateTime2), CAST(N'2022-01-03T17:17:13.5515317' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (22, 17, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:37.2637834' AS DateTime2), CAST(N'2022-01-03T17:17:14.4795994' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (23, 18, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:37.6627304' AS DateTime2), CAST(N'2022-01-03T17:17:15.7042280' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (24, 19, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:16:38.0186894' AS DateTime2), CAST(N'2022-01-03T17:17:16.0984925' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (25, 8, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:17:57.2400151' AS DateTime2), CAST(N'2022-01-03T21:41:08.3760240' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (26, 19, N'c2403113-7493-4671-9fd9-137cfc054a4c', 1, CAST(N'2022-01-03T17:18:26.9270559' AS DateTime2), CAST(N'2022-01-03T21:41:07.7877251' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (27, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:34:48.5299840' AS DateTime2), CAST(N'2022-01-03T21:38:56.0448382' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (28, 9, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:34:53.0204160' AS DateTime2), CAST(N'2022-01-03T21:38:56.5577579' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (29, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:34:55.9598311' AS DateTime2), CAST(N'2022-01-03T21:38:56.8673504' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (30, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:35:09.2159299' AS DateTime2), CAST(N'2022-01-03T21:38:57.2633440' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (31, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:35:56.3881085' AS DateTime2), CAST(N'2022-01-03T21:38:58.1753075' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (32, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:37:29.8747473' AS DateTime2), CAST(N'2022-01-03T21:38:58.5609715' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (33, 10, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:38:03.3079457' AS DateTime2), CAST(N'2022-01-03T21:38:58.8798057' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (34, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:39:04.8873912' AS DateTime2), CAST(N'2022-01-03T21:39:22.0591950' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (35, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:40:10.7087388' AS DateTime2), CAST(N'2022-01-03T21:40:19.9479654' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (36, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:41:26.1769821' AS DateTime2), CAST(N'2022-01-03T21:41:59.1565774' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (37, 8, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:41:49.7427579' AS DateTime2), CAST(N'2022-01-03T21:41:58.3346969' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (38, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:42:51.7586753' AS DateTime2), CAST(N'2022-01-03T21:47:33.3602907' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (39, 18, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:47:12.8135026' AS DateTime2), CAST(N'2022-01-03T21:47:31.9842953' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (40, 8, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:47:16.0050675' AS DateTime2), CAST(N'2022-01-03T21:47:34.5313684' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (41, 17, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:47:18.1915640' AS DateTime2), CAST(N'2022-01-03T21:47:30.7704620' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (42, 9, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:47:19.9926007' AS DateTime2), CAST(N'2022-01-03T21:47:29.4546189' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (43, 16, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:47:23.8468770' AS DateTime2), CAST(N'2022-01-03T21:47:28.0333569' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (44, 14, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-03T21:57:51.7444585' AS DateTime2), CAST(N'2022-01-04T09:09:12.1277534' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (45, 13, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-04T11:57:54.0941365' AS DateTime2), CAST(N'2022-01-04T11:58:01.6679166' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (46, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 1, CAST(N'2022-01-04T11:58:17.7428399' AS DateTime2), CAST(N'2022-01-04T11:59:14.6356730' AS DateTime2))
GO
INSERT [dbo].[Rentals] ([Id], [RentedBookId], [UserId], [IsReturned], [DateRented], [DateReturned]) VALUES (50, 11, N'3b25cea0-a10f-4c5d-9846-b273d95b48cd', 0, CAST(N'2022-01-04T12:06:24.8129848' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Rentals] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2022-01-05 09:00:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2022-01-05 09:00:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BookAttributes_CoverId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_BookAttributes_CoverId] ON [dbo].[BookAttributes]
(
	[CoverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_AttributesId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_Books_AttributesId] ON [dbo].[Books]
(
	[AttributesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_AuthorId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_Books_AuthorId] ON [dbo].[Books]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_CategoryId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_Books_CategoryId] ON [dbo].[Books]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rentals_RentedBookId]    Script Date: 2022-01-05 09:00:12 ******/
CREATE NONCLUSTERED INDEX [IX_Rentals_RentedBookId] ON [dbo].[Rentals]
(
	[RentedBookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BookAttributes]  WITH CHECK ADD  CONSTRAINT [FK_BookAttributes_Covers_CoverId] FOREIGN KEY([CoverId])
REFERENCES [dbo].[Covers] ([Id])
GO
ALTER TABLE [dbo].[BookAttributes] CHECK CONSTRAINT [FK_BookAttributes_Covers_CoverId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors_AuthorId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_BookAttributes_AttributesId] FOREIGN KEY([AttributesId])
REFERENCES [dbo].[BookAttributes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_BookAttributes_AttributesId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD  CONSTRAINT [FK_Rentals_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Rentals] CHECK CONSTRAINT [FK_Rentals_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD  CONSTRAINT [FK_Rentals_Books_RentedBookId] FOREIGN KEY([RentedBookId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Rentals] CHECK CONSTRAINT [FK_Rentals_Books_RentedBookId]
GO
USE [master]
GO
ALTER DATABASE [LibraryNET21] SET  READ_WRITE 
GO
