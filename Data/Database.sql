USE [master]
GO
/****** Object:  Database [ColBot]    Script Date: 09-01-2017 13:59:06 ******/
CREATE DATABASE [ColBot]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ColBot', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ColBot.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ColBot_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ColBot_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ColBot] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ColBot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ColBot] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ColBot] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ColBot] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ColBot] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ColBot] SET ARITHABORT OFF 
GO
ALTER DATABASE [ColBot] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ColBot] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ColBot] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ColBot] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ColBot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ColBot] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ColBot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ColBot] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ColBot] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ColBot] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ColBot] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ColBot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ColBot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ColBot] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ColBot] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ColBot] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ColBot] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ColBot] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ColBot] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ColBot] SET  MULTI_USER 
GO
ALTER DATABASE [ColBot] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ColBot] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ColBot] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ColBot] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ColBot]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Course] [varchar](50) NULL,
	[div] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENotice]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENotice](
	[title] [varchar](50) NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enquiry]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enquiry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[ToSee] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Purpose] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamTT]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamTT](
	[course] [varchar](50) NULL,
	[div] [varchar](50) NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Forum](
	[id] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[comm] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[time] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GNotice]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GNotice](
	[title] [varchar](50) NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invalid]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invalid](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[Question] [varchar](max) NULL,
	[Answer] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Qhistory]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Qhistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Que] [varchar](max) NULL,
	[Ans] [varchar](max) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Question]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[Main] [varchar](200) NULL,
	[K1] [varchar](200) NULL,
	[K2] [varchar](200) NULL,
	[K3] [varchar](200) NULL,
	[K4] [varchar](200) NULL,
	[Student] [varchar](50) NULL,
	[Answer] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[course] [varchar](50) NULL,
	[div] [varchar](50) NULL,
	[usernm] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sylab]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sylab](
	[course] [varchar](50) NULL,
	[div] [varchar](50) NULL,
	[sylab] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[timeTable]    Script Date: 09-01-2017 13:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[timeTable](
	[course] [varchar](50) NULL,
	[div] [varchar](50) NULL,
	[image] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Admin] ([Id], [Pass]) VALUES (N'Admin', N'Admin')
INSERT [dbo].[Course] ([Course], [div]) VALUES (N'course', N'A')
INSERT [dbo].[Course] ([Course], [div]) VALUES (N'course1', N'B')
INSERT [dbo].[Course] ([Course], [div]) VALUES (N'course', N'B')
INSERT [dbo].[ENotice] ([title], [image]) VALUES (N'title', N'images\c5.jpg')
SET IDENTITY_INSERT [dbo].[Enquiry] ON 

INSERT [dbo].[Enquiry] ([Id], [Name], [Email], [Contact], [ToSee], [Type], [Purpose]) VALUES (1, N'Amish', N'amis@gmail.com', N'9076613215', N'Principal', N'Personal', N'Meeting')
INSERT [dbo].[Enquiry] ([Id], [Name], [Email], [Contact], [ToSee], [Type], [Purpose]) VALUES (2, N'Amish', N'amisvora@gmail.com', N'9076613215', N'Faculty', N'Personal', N'Meeting')
INSERT [dbo].[Enquiry] ([Id], [Name], [Email], [Contact], [ToSee], [Type], [Purpose]) VALUES (3, N'Amish', N'amisvora@gmail.com', N'9076613215', N'Faculty', N'Personal', N'Meeting')
SET IDENTITY_INSERT [dbo].[Enquiry] OFF
INSERT [dbo].[ExamTT] ([course], [div], [image]) VALUES (N'course', N'B', N'images\c7.jpg')
SET IDENTITY_INSERT [dbo].[Faculty] ON 

INSERT [dbo].[Faculty] ([Id], [Name], [Phone], [Pass]) VALUES (100, N'Amish', N'9076613215', N'Fac')
SET IDENTITY_INSERT [dbo].[Faculty] OFF
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'Peter', N'comments by john', N'2016-10-20', N'16:56')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'Admin', N'Admin', N'How are you', N'2016-10-21', N'13:25')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'Amish', N'How are you', N'2016-10-21', N'13:26')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'100001', N'Bot', N'I am Fine.. How Are You ?', N'2016-10-21', N'13:26')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'Admin', N'Admin', N'how are you', N'2016-11-17', N'10:44')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'name', N'how are you', N'2016-11-17', N'10:54')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'100001', N'Bot', N'I am Fine.. How Are You ?', N'2016-11-17', N'10:54')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'Admin', N'Admin', N'hi this is admin', N'2016-12-05', N'10:37')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'name', N'how are you', N'2016-12-05', N'10:42')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'100001', N'Bot', N'I am Fine.. How Are You ?', N'2016-12-05', N'10:42')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'Admin', N'Admin', N'hi this is admin', N'2016-12-13', N'10:17')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'name', N'how are you', N'2016-12-13', N'10:22')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'100001', N'Bot', N'I am Fine.. How Are You ?', N'2016-12-13', N'10:22')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'Admin', N'Admin', N'Hi this is admin', N'2016-12-13', N'10:27')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'101', N'name', N'How are you', N'2016-12-13', N'10:32')
INSERT [dbo].[Forum] ([id], [name], [comm], [date], [time]) VALUES (N'100001', N'Bot', N'I am Fine.. How Are You ?', N'2016-12-13', N'10:32')
INSERT [dbo].[GNotice] ([title], [image]) VALUES (N'title', N'images\admin.png')
INSERT [dbo].[GNotice] ([title], [image]) VALUES (N'Diwali', N'images\admin.jpg')
SET IDENTITY_INSERT [dbo].[Invalid] ON 

INSERT [dbo].[Invalid] ([ID], [Question], [Answer], [Date], [Time]) VALUES (1001, N'Where is Enquiry Counter ?', N'Please Visit Reception for Enquiry', N'2016/10/12', N'14:00')
INSERT [dbo].[Invalid] ([ID], [Question], [Answer], [Date], [Time]) VALUES (1002, N'Subjects for IT sem1', N'C Sharp, Java', N'2016/10/12', N'21:04')
INSERT [dbo].[Invalid] ([ID], [Question], [Answer], [Date], [Time]) VALUES (1003, N'Subjects for IT sem1', N'C Sharp, Java', N'2016/10/12', N'21:05')
SET IDENTITY_INSERT [dbo].[Invalid] OFF
SET IDENTITY_INSERT [dbo].[Qhistory] ON 

INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1, N'Where is Enquiry Counter ?', N'Please Visit Reception for Enquiry', N'2016/10/12', N'14:00')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (2, N'Hi', N'Hi', N'2016/10/12', N'21:11')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3, N'Subjects for IT sem1', N'C Sharp, Java', N'2016/10/12', N'21:11')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4, N'Exam dates for IT sem1', N'Sorry we do not have answer for that question', N'2016/10/12', N'21:14')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (5, N'Exam dates for IT sem1', N'20th', N'2016/10/12', N'21:15')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (6, N'hi', N'Hi', N'2016-10-19', N'12:35')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (7, N'hi', N'Hi', N'2016-10-19', N'12:35')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (8, N'what is the exam date for sem1', N'Sorry we do not have answer for that question', N'2016-10-19', N'12:35')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (9, N'what are the subjects for  sem1', N'Sorry we do not have answer for that question', N'2016-10-19', N'12:36')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (10, N'what are the subjects for it sem1', N'C Sharp, Java', N'2016-10-19', N'12:37')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (11, N'what are the subjects for it sem1', N'C Sharp, Java', N'2016-10-19', N'12:38')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (12, N'hi', N'Hi', N'2016-10-19', N'13:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (13, N'hi', N'Hi', N'2016-10-19', N'13:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (14, N'hi', N'Hi', N'2016-10-19', N'13:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (15, N'hi', N'Hi', N'2016-10-19', N'13:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1006, N'hi', N'Hi', N'2016-10-20', N'14:10')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1007, N'hi', N'Hi', N'2016-10-20', N'14:12')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1008, N'hi', N'Hi', N'2016-10-20', N'14:12')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1009, N'hi', N'Hi', N'2016-10-20', N'14:12')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1010, N'hi', N'Hi', N'2016-10-20', N'14:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1011, N'hello', N'Hello', N'2016-10-20', N'14:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (1012, N'hello', N'Hello', N'2016-10-20', N'14:13')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (2006, N'hi', N'Hi', N'2016-10-20', N'15:49')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3006, N'hi', N'Hi', N'2016-10-20', N'16:22')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3007, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:27')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3008, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:36')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3009, N'how are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:37')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3010, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:38')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3011, N'How', N'Sorry we do not have answer for that question', N'2016-10-20', N'16:39')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3012, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:40')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3013, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:41')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3014, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:43')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3015, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:44')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3016, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:46')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3017, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:48')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3018, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:50')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3019, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:50')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (3020, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-20', N'16:56')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4016, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-21', N'12:22')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4017, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-21', N'12:24')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4018, N'How are you', N'I am Fine.. How Are You ?', N'2016-10-21', N'13:26')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4019, N'exam date it', N'20th', N'2016-11-17', N'10:49')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4020, N'exam date it', N'Sorry we do not have answer for that question', N'2016-11-17', N'10:52')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4021, N'exam sem1 it', N'Sorry we do not have answer for that question', N'2016-11-17', N'10:53')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4022, N'subjects it sem1', N'C Sharp, Java', N'2016-11-17', N'10:53')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4023, N'how are you', N'I am Fine.. How Are You ?', N'2016-11-17', N'10:54')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4024, N'exam date it', N'Sorry we do not have answer for that question', N'2016-12-05', N'10:32')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4025, N'subjects it sem1', N'C Sharp, Java', N'2016-12-05', N'10:32')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4026, N'exam date it', N'Sorry we do not have answer for that question', N'2016-12-05', N'10:41')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4027, N'subjects it sem1', N'C Sharp, Java', N'2016-12-05', N'10:41')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4028, N'how are you', N'I am Fine.. How Are You ?', N'2016-12-05', N'10:42')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4029, N'subjects it', N'C Sharp, Java', N'2016-12-05', N'10:43')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4030, N'exam date it', N'Sorry we do not have answer for that question', N'2016-12-13', N'10:20')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4031, N'subjects it sem1', N'C Sharp, Java', N'2016-12-13', N'10:21')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4032, N'how are you', N'I am Fine.. How Are You ?', N'2016-12-13', N'10:22')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4033, N'subjects it', N'C Sharp, Java', N'2016-12-13', N'10:23')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4034, N'exam date it', N'20th', N'2016-12-13', N'10:30')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4035, N'subjects it', N'C Sharp, Java', N'2016-12-13', N'10:30')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4036, N'subjects it sem1', N'C Sharp, Java', N'2016-12-13', N'10:31')
INSERT [dbo].[Qhistory] ([Id], [Que], [Ans], [Date], [Time]) VALUES (4037, N'How are you', N'I am Fine.. How Are You ?', N'2016-12-13', N'10:32')
SET IDENTITY_INSERT [dbo].[Qhistory] OFF
INSERT [dbo].[Question] ([Main], [K1], [K2], [K3], [K4], [Student], [Answer]) VALUES (N'subjects', N'it', N'sem1', NULL, NULL, N'Yes', N'C Sharp, Java')
INSERT [dbo].[Question] ([Main], [K1], [K2], [K3], [K4], [Student], [Answer]) VALUES (N'exam', N'it', N'sem1', N'sem2', NULL, N'No', N'20th')
INSERT [dbo].[Question] ([Main], [K1], [K2], [K3], [K4], [Student], [Answer]) VALUES (N'exam', N'java', N'date', N'what', N'', N'Yes', N'20 November')
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [Phone], [course], [div], [usernm], [Pass]) VALUES (100, N'Amish', N'9076613215', N'course1', N'A', NULL, N'User')
INSERT [dbo].[Student] ([Id], [Name], [Phone], [course], [div], [usernm], [Pass]) VALUES (101, N'name', N'contact', N'course1', N'B', N'101', N'un101')
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[Sylab] ([course], [div], [sylab]) VALUES (N'course1', N'A', N'images/admin.jpg')
INSERT [dbo].[Sylab] ([course], [div], [sylab]) VALUES (N'course1', N'B', N'images/admin.png')
INSERT [dbo].[timeTable] ([course], [div], [image]) VALUES (N'course1', N'A', N'images/admin.png')
INSERT [dbo].[timeTable] ([course], [div], [image]) VALUES (N'course1', N'B', N'images/admin.jpg')
USE [master]
GO
ALTER DATABASE [ColBot] SET  READ_WRITE 
GO
