USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 2024-04-11 10:46:25 PM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024-04-11 10:46:25 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2024-04-11 10:46:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2024-04-11 10:46:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2024-04-11 10:46:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2024-04-11 10:46:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2024-04-11 10:46:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[EmployerId] [nvarchar](450) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[ContactEmail] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobApplication]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobApplication](
	[JobApplicationId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationDate] [datetime2](7) NOT NULL,
	[CoverLetter] [nvarchar](max) NOT NULL,
	[ApplicationStatus] [nvarchar](max) NOT NULL,
	[JobSeekerId] [int] NOT NULL,
	[JobListingId] [int] NOT NULL,
	[EmployerId] [nvarchar](450) NULL,
 CONSTRAINT [PK_JobApplication] PRIMARY KEY CLUSTERED 
(
	[JobApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobListing]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobListing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [nvarchar](max) NOT NULL,
	[JobDescription] [nvarchar](max) NOT NULL,
	[JobRequirement] [nvarchar](max) NOT NULL,
	[JobType] [nvarchar](max) NOT NULL,
	[EmployerId] [nvarchar](450) NOT NULL,
	[ApplicationDeadline] [datetime2](7) NOT NULL,
	[JobSeekerId] [int] NULL,
 CONSTRAINT [PK_JobListing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSeeker]    Script Date: 2024-04-11 10:46:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSeeker](
	[JobSeekerId] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_JobSeeker] PRIMARY KEY CLUSTERED 
(
	[JobSeekerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408181757_initailCreate', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408185830_updateFK', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240408194306_updateIdentity', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240409192817_updateDb', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240409224400_updateDb', N'8.0.3')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ADMIN', N'ADMIN', N'ADMIN', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'EMPLOYER', N'EMPLOYER', N'EMPLOYER', N'EMPLOYER')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'JOBSEEKER', N'JOBSEEKER', N'JOBSEEKER', N'JOBSEEKER')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4404d7ac-87b1-4a7b-ba6f-28ecc00c1120', N'ADMIN')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'382f314d-fb74-451f-a708-1e52b5171cff', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4681d02c-0499-4f2f-81a5-56d1561fd675', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4f2d342f-bb4c-4399-9ea8-849727612078', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70e8b8a3-dc45-4ecc-9439-8d3e933a9a22', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'79f89019-6fae-4021-9372-f737689511d4', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c5fcebb0-89b0-4ebb-8592-8d137caf1017', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c9ecb933-3634-429c-844a-cf9cfacba046', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e86fab61-571f-4bc4-849b-621072a06f0d', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f9484f3a-8843-43f0-8ffe-4ad363628fc1', N'EMPLOYER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e452d94-a6e7-481e-a646-09f32c444d31', N'JOBSEEKER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'384c98bc-5f9a-40ea-87db-741069969a9d', N'JOBSEEKER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aba9f7eb-0958-45e2-86bf-4e953db685f7', N'JOBSEEKER')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'185f5ceb-7ff7-473a-8f24-971489919abd', N'employer2@gmail.com', N'EMPLOYER2@GMAIL.COM', N'employer2@gmail.com', N'EMPLOYER2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAhrzHb27/5OVc4etsiZy2ZoG3AWF8fv+y/Y48YstaoLazURlXfpfN45YbEH2Sd3SQ==', N'FCY656TBRSDQP73J2HSIFCM5SVYOWUXU', N'b66da914-fba1-4fc1-940b-65c023ba9d70', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2e452d94-a6e7-481e-a646-09f32c444d31', N'jobseeker1@gmail.com', N'JOBSEEKER1@GMAIL.COM', N'jobseeker1@gmail.com', N'JOBSEEKER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEK271/V5VzrsTUWJBm+A7zYTwZGxYujcGof2CwdVWlmT/9LSOblpYznnqiG0fb/tYA==', N'UJ53EP7NMD6575TQ2GHQIRLVKI6P3QQC', N'd7744f72-c326-428d-9fcb-f72230b98e53', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'382f314d-fb74-451f-a708-1e52b5171cff', N'employer10@gmail.com', N'EMPLOYER10@GMAIL.COM', N'employer10@gmail.com', N'EMPLOYER10@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEO9CUKYJYwSg8prc2cv0UZXIJBXfiTI6NdtzLqdmN/sy8bRiYgpvj/HArRTedKNBKw==', N'QQPTSOBUNQP2TBBEVD33UDBQXXVFA5ND', N'3b182baa-f44d-478c-bd22-4b99ae082f52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'384c98bc-5f9a-40ea-87db-741069969a9d', N'jobseeker2@gmail.com', N'JOBSEEKER2@GMAIL.COM', N'jobseeker2@gmail.com', N'JOBSEEKER2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEC3u9HSvw0YwSqUEH8ypZRrBkLXCz4GWGb3W4oktDF5GFvokgRzWZSNFoBa0bQH8ng==', N'NPDDXEGSPDVIV6XUEZVVTPVLYYLX36N6', N'd84cab0e-f52b-431d-a080-17e9b65a0c68', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4404d7ac-87b1-4a7b-ba6f-28ecc00c1120', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFx5B/SdbYXTR7m3tVWkCyl8z/Kj2n0qNKx2jiVE99sc1BhspYQe9Sxj1FyUmEEBlQ==', N'UZQL7ETJY6GZY6WDGZA3GFA7HAPEQPNQ', N'ea275da6-4889-4328-bf4d-49851b785345', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4681d02c-0499-4f2f-81a5-56d1561fd675', N'employer11@gmail.com', N'EMPLOYER11@GMAIL.COM', N'employer11@gmail.com', N'EMPLOYER11@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHqfFLLeOQ8gyF2+PaaF6/UD8gXRtnys6pzu3NJTKSA5pmKOBc2HBEcrWeqb3zhTqQ==', N'VH3URI6I6EHRYVMWSNPIC6LAIPFZC3LJ', N'60542622-1de2-4740-9a8d-b0bb42b832f4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4f2d342f-bb4c-4399-9ea8-849727612078', N'employer9@gmail.com', N'EMPLOYER9@GMAIL.COM', N'employer9@gmail.com', N'EMPLOYER9@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOxHXFhIbQ7PoQLbJVSOLpZSj13SlZ8qauyfdmJOnyGUj6tLiFxF/yXdgr6hmFdbSw==', N'PSWEDGYIF2WV6RMKALRQEPVHZ6OZT566', N'6b592646-7ae0-4119-ada6-f31630f82785', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'51f31f2a-5303-4127-a9a9-1ff2ce28ac86', N'employer5@gmail.com', N'EMPLOYER5@GMAIL.COM', N'employer5@gmail.com', N'EMPLOYER5@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEO3Ho7irpjrPghtnzG/cldJxBd3yrWsSAKBssHEU7GmllJYIeDjNwn26PaPZNxAhOw==', N'NKVML2M2NDSVZSS7D3GJBBUYJPZYWJ45', N'99f8d73a-e5d5-4434-a91f-0243aabec784', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'631948fe-db87-4b3e-9e5d-9f0adeb3d42d', N'Employer1@gmail.com', N'EMPLOYER1@GMAIL.COM', N'Employer1@gmail.com', N'EMPLOYER1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEC8b7jGn1O3LPKlgBX+fXIFfh6d+FzMsJ1Wy8jfWRsxCWJ/WJJTqa4xtvWHn/V1yhw==', N'X7XQZBA5GDRNYFH2MBOU7HQZ7VN7M2QS', N'7d4ecb92-1350-4107-8ad1-05a156f85968', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'671436ba-4b3e-4b59-a98f-366a7e4255c8', N'employertest5@gmail.com', N'EMPLOYERTEST5@GMAIL.COM', N'employertest5@gmail.com', N'EMPLOYERTEST5@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEwzDxTI6C7tzf8pfjlXqzH2ijONfTLS4POau/+3b4rkipua+LsK9uDpYyGzc+hMUw==', N'H37OJATEWBECO65UNSLWUI4XWQMWPQDO', N'e4cf42b7-b4e7-420d-9ee8-632b243775f0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70e8b8a3-dc45-4ecc-9439-8d3e933a9a22', N'employer8@gmail.com', N'EMPLOYER8@GMAIL.COM', N'employer8@gmail.com', N'EMPLOYER8@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELQeiTEqBfHHccan1zp/2ohfkUj+Nn7kcYlv1ZGk03DPmpDHFBuJxOP2CyYcpxHt4g==', N'IC5RSE4XUNSJYHWFC7WROICT3BIZJD46', N'3db9d42d-d656-49d0-b43e-15905d516b15', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'79f89019-6fae-4021-9372-f737689511d4', N'employertest12@gmail.com', N'EMPLOYERTEST12@GMAIL.COM', N'employertest12@gmail.com', N'EMPLOYERTEST12@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECMW/sN24VLQWZmLziT7zsDdena1HAWhSuTzR/iyVCozq5Bihs/ji3E4VHKB+RjKUQ==', N'VHSF67QROE2LR3U6SB573OW7RV6IJNV7', N'09f7fff7-c3c7-4f3f-903e-7526bbccd012', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'982c3b27-4f37-492e-a5fd-68d1cdd916bf', N'employertest@gmail.com', N'EMPLOYERTEST@GMAIL.COM', N'employertest@gmail.com', N'EMPLOYERTEST@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELVLzUlYo9j0PzKeLI55T1xJtt/JllpBbOSS5RnFVuSXzX+praylmhX7SjfVHunwGQ==', N'SFONJGJX6CCRXMTRURRRZL36VAAKHRAU', N'f194d4fa-ddb9-4534-8735-c0b93d142365', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'aba9f7eb-0958-45e2-86bf-4e953db685f7', N'jobseeker@gmail.com', N'JOBSEEKER@GMAIL.COM', N'jobseeker@gmail.com', N'JOBSEEKER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEKmwJdPqLWE0ybJW+NJ1pLBEeWmfq+klm3s6bRnsLgBceQq1mM4+6/N/EoiSB11lkA==', N'GALJI6ZN5IUUT3DFSW24WCN2HLCE36CZ', N'eacf8a43-508c-462f-ab46-505a69e88482', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c5fcebb0-89b0-4ebb-8592-8d137caf1017', N'employer7@gmail.com', N'EMPLOYER7@GMAIL.COM', N'employer7@gmail.com', N'EMPLOYER7@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBM/W77Kf8DS74BbsGJmhxJU8SqpSjBbYPV3jqFU3+e4xLWFv0YvfqRBnFdkzpEtpg==', N'65XAANPSKJSMHEF5NAINIPJYJRWZIPSW', N'5eda3adb-57f3-435a-8904-2e8ecf6627ec', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c9ecb933-3634-429c-844a-cf9cfacba046', N'employer12@gmail.com', N'EMPLOYER12@GMAIL.COM', N'employer12@gmail.com', N'EMPLOYER12@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEM/BOd5sx32YvXcOMW4tUBGhode5kqEIr9nUAxqyVm40cCWwavs4/dg4FnQFTo+QdA==', N'CNNML2GS2O765J7J4ID7WAW5BNEFNRJW', N'31bc296b-6e78-4dd2-8587-39557b2aa518', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e2d5aaa5-e69b-4438-a8a2-abf2b37d0cf0', N'employertest1@gmail.com', N'EMPLOYERTEST1@GMAIL.COM', N'employertest1@gmail.com', N'EMPLOYERTEST1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIUChBXMMzla40MNgk4qcViloeoV4cyU30hb6ka+b8666XbWkRP54h5CYuuwsUMzcw==', N'ELVAB7QBW5FED4FFAWBPFCHEX6YNF7H2', N'8bcf1e84-74b9-438b-99de-767298a15d3e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e86fab61-571f-4bc4-849b-621072a06f0d', N'employer6@gmail.com', N'EMPLOYER6@GMAIL.COM', N'employer6@gmail.com', N'EMPLOYER6@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOISc8l7H8zyNje9fhEzRaovNgDsKN3ydikMGBnwUS9/ZnKCBU6iHF+7YcK6EL0P3Q==', N'Q4X2CSJUMZIC66ZYLQERJ2N7TYYZND4L', N'ee4fe382-0a69-480e-b218-b1091d2ce75c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f9484f3a-8843-43f0-8ffe-4ad363628fc1', N'employer@gmail.com', N'EMPLOYER@GMAIL.COM', N'employer@gmail.com', N'EMPLOYER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBs17uITt/fRFIWqKcSXpVu14u21aIJLoID++6d3RaEmQpZUyUTyMaty5LOg6aU/2w==', N'SJTQ7GYMXOS52JUX57QU3ZCI2R4B2HQM', N'0659b215-5d17-4ebf-8fdd-d68bf7d2356f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Employer] ([EmployerId], [CompanyName], [ContactEmail], [UserId]) VALUES (N'410185f0-5506-4170-8cbf-019c5108e4f1', N'', N'employer12@gmail.com', N'c9ecb933-3634-429c-844a-cf9cfacba046')
INSERT [dbo].[Employer] ([EmployerId], [CompanyName], [ContactEmail], [UserId]) VALUES (N'6dbefb57-4657-45f5-909f-fe54998cf1ec', N'', N'employer11@gmail.com', N'4681d02c-0499-4f2f-81a5-56d1561fd675')
GO
SET IDENTITY_INSERT [dbo].[JobApplication] ON 

INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (1, CAST(N'2024-04-11T05:47:00.0000000' AS DateTime2), N'120398', N'Pending', 1, 1, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (2, CAST(N'2024-04-10T05:49:00.0000000' AS DateTime2), N'120398', N'Approved', 1, 3, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (3, CAST(N'2024-04-10T21:40:00.0000000' AS DateTime2), N'/uploads/73dc4d39-02ac-40ba-85fb-1027e584934b_Link drive.txt', N'Pending', 1, 1, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (4, CAST(N'2024-04-10T21:44:00.0000000' AS DateTime2), N'/uploads/bdbb6eed-6a87-49ce-997c-6bfae20153a5_sensors-22-05866-v3.pdf', N'Pending', 2, 4, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (5, CAST(N'2024-04-10T22:01:00.0000000' AS DateTime2), N'/uploads/9bd23945-8bb6-4432-a1e2-771eb42aa053_sensors-22-05866-v3.pdf', N'Pending', 2, 4, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (6, CAST(N'2024-04-10T22:12:00.0000000' AS DateTime2), N'/uploads/4afdeae7-dc24-475d-ae24-4ee04daf1532_sensors-22-05866-v3.pdf', N'Pending', 1, 1, NULL)
INSERT [dbo].[JobApplication] ([JobApplicationId], [ApplicationDate], [CoverLetter], [ApplicationStatus], [JobSeekerId], [JobListingId], [EmployerId]) VALUES (7, CAST(N'2024-04-10T22:15:00.0000000' AS DateTime2), N'/uploads/ba4adbef-930f-4762-bc9c-a91f33aab8fc_Task 3.docx', N'Pending', 2, 5, NULL)
SET IDENTITY_INSERT [dbo].[JobApplication] OFF
GO
SET IDENTITY_INSERT [dbo].[JobListing] ON 

INSERT [dbo].[JobListing] ([Id], [JobTitle], [JobDescription], [JobRequirement], [JobType], [EmployerId], [ApplicationDeadline], [JobSeekerId]) VALUES (1, N'IT Specialist', N'IT Specialist', N'3 Years of experience', N'IT', N'6dbefb57-4657-45f5-909f-fe54998cf1ec', CAST(N'2024-04-10T23:59:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[JobListing] ([Id], [JobTitle], [JobDescription], [JobRequirement], [JobType], [EmployerId], [ApplicationDeadline], [JobSeekerId]) VALUES (3, N'DEv', N'Dev', N'Dev', N'IT', N'6dbefb57-4657-45f5-909f-fe54998cf1ec', CAST(N'2024-04-12T05:48:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[JobListing] ([Id], [JobTitle], [JobDescription], [JobRequirement], [JobType], [EmployerId], [ApplicationDeadline], [JobSeekerId]) VALUES (4, N'Business Intelligence', N'Business Intelligence', N'Business Intelligence Degree', N'IT', N'410185f0-5506-4170-8cbf-019c5108e4f1', CAST(N'2024-04-26T07:56:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[JobListing] ([Id], [JobTitle], [JobDescription], [JobRequirement], [JobType], [EmployerId], [ApplicationDeadline], [JobSeekerId]) VALUES (5, N'Marketing', N'Marketing', N'Uni Degree', N'Business', N'410185f0-5506-4170-8cbf-019c5108e4f1', CAST(N'2024-05-11T07:56:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[JobListing] OFF
GO
SET IDENTITY_INSERT [dbo].[JobSeeker] ON 

INSERT [dbo].[JobSeeker] ([JobSeekerId], [Fullname], [Email], [UserId]) VALUES (1, N'Hoang Tran', N'jobseeker1@gmail.com', N'2e452d94-a6e7-481e-a646-09f32c444d31')
INSERT [dbo].[JobSeeker] ([JobSeekerId], [Fullname], [Email], [UserId]) VALUES (2, N'New Name', N'jobseeker2@gmail.com', N'384c98bc-5f9a-40ea-87db-741069969a9d')
SET IDENTITY_INSERT [dbo].[JobSeeker] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Employer_UserId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employer_UserId] ON [dbo].[Employer]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JobApplication_EmployerId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobApplication_EmployerId] ON [dbo].[JobApplication]
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobApplication_JobListingId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobApplication_JobListingId] ON [dbo].[JobApplication]
(
	[JobListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobApplication_JobSeekerId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobApplication_JobSeekerId] ON [dbo].[JobApplication]
(
	[JobSeekerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JobListing_EmployerId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobListing_EmployerId] ON [dbo].[JobListing]
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobListing_JobSeekerId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobListing_JobSeekerId] ON [dbo].[JobListing]
(
	[JobSeekerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JobSeeker_UserId]    Script Date: 2024-04-11 10:46:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobSeeker_UserId] ON [dbo].[JobSeeker]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employer] ADD  DEFAULT (N'') FOR [UserId]
GO
ALTER TABLE [dbo].[JobSeeker] ADD  DEFAULT (N'') FOR [UserId]
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
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [FK_Employer_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [FK_Employer_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[JobApplication]  WITH CHECK ADD  CONSTRAINT [FK_JobApplication_Employer_EmployerId] FOREIGN KEY([EmployerId])
REFERENCES [dbo].[Employer] ([EmployerId])
GO
ALTER TABLE [dbo].[JobApplication] CHECK CONSTRAINT [FK_JobApplication_Employer_EmployerId]
GO
ALTER TABLE [dbo].[JobApplication]  WITH CHECK ADD  CONSTRAINT [FK_JobApplication_JobListing_JobListingId] FOREIGN KEY([JobListingId])
REFERENCES [dbo].[JobListing] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobApplication] CHECK CONSTRAINT [FK_JobApplication_JobListing_JobListingId]
GO
ALTER TABLE [dbo].[JobApplication]  WITH CHECK ADD  CONSTRAINT [FK_JobApplication_JobSeeker_JobSeekerId] FOREIGN KEY([JobSeekerId])
REFERENCES [dbo].[JobSeeker] ([JobSeekerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobApplication] CHECK CONSTRAINT [FK_JobApplication_JobSeeker_JobSeekerId]
GO
ALTER TABLE [dbo].[JobListing]  WITH CHECK ADD  CONSTRAINT [FK_JobListing_Employer_EmployerId] FOREIGN KEY([EmployerId])
REFERENCES [dbo].[Employer] ([EmployerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobListing] CHECK CONSTRAINT [FK_JobListing_Employer_EmployerId]
GO
ALTER TABLE [dbo].[JobListing]  WITH CHECK ADD  CONSTRAINT [FK_JobListing_JobSeeker_JobSeekerId] FOREIGN KEY([JobSeekerId])
REFERENCES [dbo].[JobSeeker] ([JobSeekerId])
GO
ALTER TABLE [dbo].[JobListing] CHECK CONSTRAINT [FK_JobListing_JobSeeker_JobSeekerId]
GO
ALTER TABLE [dbo].[JobSeeker]  WITH CHECK ADD  CONSTRAINT [FK_JobSeeker_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSeeker] CHECK CONSTRAINT [FK_JobSeeker_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
