USE [master]
GO
/****** Object:  Database [KamilCieślikSportClub]    Script Date: 12.12.2016 07:05:56 ******/
CREATE DATABASE [KamilCieślikSportClub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KamilCieślikSportClub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\KamilCieślikSportClub.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KamilCieślikSportClub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\KamilCieślikSportClub_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KamilCieślikSportClub] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KamilCieślikSportClub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KamilCieślikSportClub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET ARITHABORT OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KamilCieślikSportClub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KamilCieślikSportClub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KamilCieślikSportClub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KamilCieślikSportClub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KamilCieślikSportClub] SET  MULTI_USER 
GO
ALTER DATABASE [KamilCieślikSportClub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KamilCieślikSportClub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KamilCieślikSportClub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KamilCieślikSportClub] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KamilCieślikSportClub] SET DELAYED_DURABILITY = DISABLED 
GO
USE [KamilCieślikSportClub]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](10) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[AdressNumber] [int] NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cards]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RedCards] [int] NOT NULL,
	[YellowCards] [int] NOT NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Club]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IDStadium] [int] NOT NULL,
	[IDStatistics] [int] NOT NULL,
	[IDCoach] [int] NOT NULL,
	[IDSponsor] [int] NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coach]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CoachName] [nvarchar](50) NOT NULL,
	[CoachSurname] [nvarchar](50) NOT NULL,
	[Nationality] [nvarchar](40) NOT NULL,
	[YearsOfExperience] [int] NOT NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footballer]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footballer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Nationality] [nvarchar](40) NOT NULL,
	[BetterLeg] [nvarchar](10) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Footballer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goals]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goals](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoalsScored] [int] NOT NULL,
	[LostGoals] [int] NOT NULL,
 CONSTRAINT [PK_Goals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SponsorName] [nvarchar](50) NOT NULL,
	[Subsidy] [int] NOT NULL,
	[KindOfSponsorship] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Sponsor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stadium]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadium](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StadiumName] [nvarchar](50) NOT NULL,
	[Surface] [nvarchar](30) NOT NULL,
	[Capacity] [int] NOT NULL,
	[IDAdress] [int] NOT NULL,
 CONSTRAINT [PK_Stadium] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Points] [int] NOT NULL,
	[IDGoals] [int] NOT NULL,
	[IDCards] [int] NOT NULL,
 CONSTRAINT [PK_Statistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suspension]    Script Date: 12.12.2016 07:05:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suspension](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDFootballer] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Suspension] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (5, N'USA', N'Bristol', N'32-120', N'Chinewa', 12)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (6, N'Korea Północna', N'Pyongyang', N'02-122', N'Kumeran', 5)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (8, N'USA', N'Ann Arbor', N'14-321', N'Green', 5)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (9, N'Australia', N'Melbourne', N'15-121', N'Smallest', 51)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (10, N'Meksyk', N'Mexico City', N'14-123', N'Margarita', 81)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (11, N'Polska', N'Warszawa', N'14-412', N'Poniatowskiego', 3)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (12, N'Polska', N'Wrocław', N'02-211', N'Śląska', 1)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (13, N'Polska', N'Gdańsk', N'21-302', N'Duża', 8)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (15, N'Polska', N'Kraków', N'41-202', N'Piłsudskiego', 12)
INSERT [dbo].[Adress] ([ID], [Country], [City], [ZipCode], [Street], [AdressNumber]) VALUES (17, N'Polska', N'Częstochowa', N'42-202', N'Limanowskiego', 8)
SET IDENTITY_INSERT [dbo].[Adress] OFF
SET IDENTITY_INSERT [dbo].[Cards] ON 

INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (1, 4, 2)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (2, 2, 3)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (3, 0, 4)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (4, 0, 0)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (5, 1, 2)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (6, 1, 4)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (7, 3, 10)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (8, 3, 0)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (9, 0, 2)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (10, 0, 1)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (11, 1, 0)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (12, 12, 0)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (13, 1, 14)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (14, 3, 4)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (15, 3, 3)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (16, 6, 6)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (17, 8, 12)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (18, 7, 2)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (19, 7, 7)
INSERT [dbo].[Cards] ([ID], [RedCards], [YellowCards]) VALUES (20, 1, 9)
SET IDENTITY_INSERT [dbo].[Cards] OFF
SET IDENTITY_INSERT [dbo].[Club] ON 

INSERT [dbo].[Club] ([ID], [Name], [IDStadium], [IDStatistics], [IDCoach], [IDSponsor]) VALUES (2, N'Barcelona', 2, 1, 1, 2)
INSERT [dbo].[Club] ([ID], [Name], [IDStadium], [IDStatistics], [IDCoach], [IDSponsor]) VALUES (7, N'Real Madrid', 3, 3, 4, 18)
INSERT [dbo].[Club] ([ID], [Name], [IDStadium], [IDStatistics], [IDCoach], [IDSponsor]) VALUES (8, N'Juventus', 9, 5, 8, 19)
INSERT [dbo].[Club] ([ID], [Name], [IDStadium], [IDStatistics], [IDCoach], [IDSponsor]) VALUES (11, N'PSG', 8, 4, 9, 13)
INSERT [dbo].[Club] ([ID], [Name], [IDStadium], [IDStatistics], [IDCoach], [IDSponsor]) VALUES (13, N'Ajax', 6, 2, 10, 15)
SET IDENTITY_INSERT [dbo].[Club] OFF
SET IDENTITY_INSERT [dbo].[Coach] ON 

INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (1, N'Vincente', N'del Bosque', N'Hiszpania', 30)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (2, N'Joachim', N'Loew', N'Niemcy', 20)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (3, N'Oscar', N'Tabarez', N'Urugwaj', 14)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (4, N'Ceasre', N'Prandelli', N'Włochy', 5)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (5, N'Paulo', N'Bento', N'Portugalia', 9)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (6, N'Bert', N'van Marwijk', N'Holandia', 15)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (7, N'Fabio', N'Capello', N'Rosja', 21)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (8, N'Morten', N'Olsen', N'Dania', 2)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (9, N'Fernando', N'da Cost Santos', N'Grecja', 19)
INSERT [dbo].[Coach] ([ID], [CoachName], [CoachSurname], [Nationality], [YearsOfExperience]) VALUES (10, N'Julio', N'Dely Valdes', N'Panama', 30)
SET IDENTITY_INSERT [dbo].[Coach] OFF
SET IDENTITY_INSERT [dbo].[Footballer] ON 

INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (3, N'Mario', N'Mandzukic', N'Chorwacja', N'lewa', 26)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (4, N'Steven', N'Gerrard', N'Anglia', N'prawa', 32)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (5, N'Łukasz', N'Piszczek', N'Polska', N'lewa', 27)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (6, N'Lukas', N'Podolski', N'Niemcy', N'prawa', 27)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (7, N'Mario', N'Gotze', N'Niemcy', N'lewa', 20)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (8, N'Marouane', N'Fellaini', N'Belgia', N'prawa', 25)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (9, N'Kevin', N'Boateng', N'Ghana', N'lewa', 25)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (10, N'Diego', N'Milito', N'Argentyna', N'lewa', 33)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (11, N'Alan', N'Dżagojew', N'Rosja', N'prawa', 22)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (12, N'Samir', N'Handonovic', N'Słowenia', N'prawa', 28)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (13, N'Roberto', N'Soldado', N'Hiszpania', N'lewa', 27)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (14, N'Marek', N'Hamsik', N'Słowacja', N'lewa', 25)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (15, N'Javi', N'Martinez', N'Hiszpania', N'lewa', 24)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (16, N'Jeremy', N'Mendez', N'Francja', N'prawa', 25)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (17, N'Jakub', N'Błaszczykowski', N'Polska', N'prawa', 26)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (18, N'Victor', N'Valdes', N'Hiszpania', N'prawa', 30)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (19, N'Lucas', N'Moura', N'Brazylia', N'lewa', 20)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (20, N'Nemanja', N'Vidić', N'Serbia', N'prawa', 31)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (21, N'Christian', N'Eriksen', N'Dania', N'prawa', 20)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (22, N'Miroslav', N'Klose', N'Niemcy', N'prawa', 34)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (23, N'Mario', N'Balotelli', N'Włochy', N'lewa', 22)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (24, N'Samir', N'Nasri', N'Francja', N'lewa', 25)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (25, N'Frank', N'Lampard', N'Anglia', N'prawa', 34)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (26, N'Carles', N'Puyol', N'Hiszpania', N'prawa', 34)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (27, N'Samuel', N'Eto''o', N'Kamerun', N'lewa', 31)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (29, N'Marco', N'Reus', N'Niemcy', N'prawa', 23)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (30, N'Daniele', N'De Rossi', N'Włochy', N'lewa', 29)
INSERT [dbo].[Footballer] ([ID], [Name], [Surname], [Nationality], [BetterLeg], [Age]) VALUES (32, N'Robert', N'Lewandowski', N'Polska', N'prawa', 27)
SET IDENTITY_INSERT [dbo].[Footballer] OFF
SET IDENTITY_INSERT [dbo].[Goals] ON 

INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (1, 2, 0)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (2, 12, 22)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (3, 2, 9)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (4, 9, 1)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (5, 1, 12)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (6, 12, 3)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (7, 14, 4)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (8, 3, 9)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (9, 21, 2)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (10, 20, 1)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (11, 4, 3)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (12, 0, 0)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (13, 3, 2)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (14, 1, 5)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (15, 30, 3)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (16, 12, 4)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (17, 3, 3)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (18, 3, 9)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (19, 9, 3)
INSERT [dbo].[Goals] ([ID], [GoalsScored], [LostGoals]) VALUES (20, 2, 1)
SET IDENTITY_INSERT [dbo].[Goals] OFF
SET IDENTITY_INSERT [dbo].[Sponsor] ON 

INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (1, N'Łowicz', 100000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (2, N'Polonia', 5000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (3, N'Zajazd Rozdroże', 12500, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (4, N'CERBER', 4000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (5, N'VELOX', 84000, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (6, N'IGLOO', 8000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (7, N'Jakmar', 19000, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (8, N'DACH-LUX', 31000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (9, N'Partners', 91000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (10, N'Eco-Therm', 120000, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (11, N'Gladiator', 8300, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (12, N'BolCar', 440, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (13, N'Nova', 50, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (14, N'Fakro', 1200, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (15, N'Zew', 4500, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (16, N'IsOver', 9110, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (17, N'Bank Pekao', 24000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (18, N'Blachy Pruszyński', 3000, N'pasywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (19, N'Ars Medica', 5000, N'aktywny')
INSERT [dbo].[Sponsor] ([ID], [SponsorName], [Subsidy], [KindOfSponsorship]) VALUES (20, N'FDK', 666, N'pasywny')
SET IDENTITY_INSERT [dbo].[Sponsor] OFF
SET IDENTITY_INSERT [dbo].[Stadium] ON 

INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (2, N'Bristol Footbal Max', N'trawiasta', 153000, 5)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (3, N'Rungrado May Day Stadium', N'sztuczna', 114000, 6)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (5, N'Michigan Stadium', N'sztuczna', 107601, 8)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (6, N'Ohi Stadium', N'trawiasta', 104994, 9)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (7, N'Kyle Field', N'trawiasta', 102733, 10)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (8, N'Stadion Narodowy', N'trawiasta', 58500, 11)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (9, N'Stadion Miejski', N'sztuczna', 55212, 12)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (10, N'Stadion Energa', N'trawiasta', 42012, 13)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (12, N'Stadion Wielki', N'sztuczna', 31810, 15)
INSERT [dbo].[Stadium] ([ID], [StadiumName], [Surface], [Capacity], [IDAdress]) VALUES (13, N'Kibolski', N'sztuczna', 1200, 17)
SET IDENTITY_INSERT [dbo].[Stadium] OFF
SET IDENTITY_INSERT [dbo].[Statistics] ON 

INSERT [dbo].[Statistics] ([ID], [Points], [IDGoals], [IDCards]) VALUES (1, 12, 1, 2)
INSERT [dbo].[Statistics] ([ID], [Points], [IDGoals], [IDCards]) VALUES (2, 4, 4, 1)
INSERT [dbo].[Statistics] ([ID], [Points], [IDGoals], [IDCards]) VALUES (3, 6, 2, 5)
INSERT [dbo].[Statistics] ([ID], [Points], [IDGoals], [IDCards]) VALUES (4, 10, 8, 2)
INSERT [dbo].[Statistics] ([ID], [Points], [IDGoals], [IDCards]) VALUES (5, 2, 15, 13)
SET IDENTITY_INSERT [dbo].[Statistics] OFF
SET IDENTITY_INSERT [dbo].[Suspension] ON 

INSERT [dbo].[Suspension] ([ID], [IDFootballer], [StartDate], [EndDate]) VALUES (1, 3, CAST(N'2014-02-12' AS Date), CAST(N'2014-05-01' AS Date))
INSERT [dbo].[Suspension] ([ID], [IDFootballer], [StartDate], [EndDate]) VALUES (2, 5, CAST(N'2015-01-01' AS Date), CAST(N'2016-03-02' AS Date))
INSERT [dbo].[Suspension] ([ID], [IDFootballer], [StartDate], [EndDate]) VALUES (3, 8, CAST(N'2009-07-29' AS Date), CAST(N'2009-11-11' AS Date))
INSERT [dbo].[Suspension] ([ID], [IDFootballer], [StartDate], [EndDate]) VALUES (4, 12, CAST(N'2005-09-01' AS Date), NULL)
INSERT [dbo].[Suspension] ([ID], [IDFootballer], [StartDate], [EndDate]) VALUES (5, 14, CAST(N'2016-05-01' AS Date), CAST(N'2016-06-02' AS Date))
SET IDENTITY_INSERT [dbo].[Suspension] OFF
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Coach] FOREIGN KEY([IDCoach])
REFERENCES [dbo].[Coach] ([ID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Coach]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Sponsor] FOREIGN KEY([IDSponsor])
REFERENCES [dbo].[Sponsor] ([ID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Sponsor]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Stadium] FOREIGN KEY([IDStadium])
REFERENCES [dbo].[Stadium] ([ID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Stadium]
GO
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_Club_Statistics] FOREIGN KEY([IDStatistics])
REFERENCES [dbo].[Statistics] ([ID])
GO
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_Club_Statistics]
GO
ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD  CONSTRAINT [FK_Stadium_Adress] FOREIGN KEY([IDAdress])
REFERENCES [dbo].[Adress] ([ID])
GO
ALTER TABLE [dbo].[Stadium] CHECK CONSTRAINT [FK_Stadium_Adress]
GO
ALTER TABLE [dbo].[Statistics]  WITH CHECK ADD  CONSTRAINT [FK_Statistics_Cards] FOREIGN KEY([IDCards])
REFERENCES [dbo].[Cards] ([ID])
GO
ALTER TABLE [dbo].[Statistics] CHECK CONSTRAINT [FK_Statistics_Cards]
GO
ALTER TABLE [dbo].[Statistics]  WITH CHECK ADD  CONSTRAINT [FK_Statistics_Goals] FOREIGN KEY([IDGoals])
REFERENCES [dbo].[Goals] ([ID])
GO
ALTER TABLE [dbo].[Statistics] CHECK CONSTRAINT [FK_Statistics_Goals]
GO
ALTER TABLE [dbo].[Suspension]  WITH CHECK ADD  CONSTRAINT [FK_Suspension_Footballer] FOREIGN KEY([IDFootballer])
REFERENCES [dbo].[Footballer] ([ID])
GO
ALTER TABLE [dbo].[Suspension] CHECK CONSTRAINT [FK_Suspension_Footballer]
GO
USE [master]
GO
ALTER DATABASE [KamilCieślikSportClub] SET  READ_WRITE 
GO
