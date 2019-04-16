USE [master]
GO
/****** Object:  Database [DB36]    Script Date: 15/04/2019 5:17:03 PM ******/
CREATE DATABASE [DB36]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB36', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DB36.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB36_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DB36_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB36] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB36].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB36] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB36] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB36] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB36] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB36] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB36] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB36] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB36] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB36] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB36] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB36] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB36] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB36] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB36] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB36] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB36] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB36] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB36] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB36] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB36] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB36] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB36] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB36] SET RECOVERY FULL 
GO
ALTER DATABASE [DB36] SET  MULTI_USER 
GO
ALTER DATABASE [DB36] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB36] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB36] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB36] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB36] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB36', N'ON'
GO
ALTER DATABASE [DB36] SET QUERY_STORE = OFF
GO
USE [DB36]
GO
/****** Object:  Table [dbo].[AssignCourse]    Script Date: 15/04/2019 5:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignCourse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_AssignCourse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignFee]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignFee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [nvarchar](50) NULL,
	[Fee] [nvarchar](50) NULL,
 CONSTRAINT [PK_AssignFee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TId] [int] NOT NULL,
	[CId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Assignment Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignSectionS]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignSectionS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SId] [int] NOT NULL,
	[CId] [int] NOT NULL,
	[SecId] [int] NOT NULL,
 CONSTRAINT [PK_AssignSectionS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignSectionT]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignSectionT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TId] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[CIassId] [int] NOT NULL,
 CONSTRAINT [PK_AssignSectionT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendence]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendence](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PId] [int] NOT NULL,
	[Date] [date] NULL,
	[Role] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Attendence] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CourseCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DateSheet]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateSheet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_DateSheet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fee]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_Fee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSection]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SecId] [int] NOT NULL,
	[SId] [int] NOT NULL,
 CONSTRAINT [PK_GroupSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DateOfBirth] [nvarchar](50) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [int] NOT NULL,
	[PId] [int] NOT NULL,
	[Role] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TId] [int] NOT NULL,
	[CId] [int] NOT NULL,
	[Designation] [nvarchar](50) NULL,
	[Salary] [nvarchar](50) NULL,
 CONSTRAINT [PK_Salary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CId] [int] NOT NULL,
	[TId] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Strength] [int] NULL,
	[Proctor] [nvarchar](50) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] NOT NULL,
	[RegistrationNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 15/04/2019 5:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] NOT NULL,
	[Designation] [nvarchar](50) NULL,
	[Salary] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 15/04/2019 5:17:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Time] [datetime] NOT NULL,
	[AssignCourseId] [int] NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignCourse_AssignCourse] FOREIGN KEY([Id])
REFERENCES [dbo].[AssignCourse] ([Id])
GO
ALTER TABLE [dbo].[AssignCourse] CHECK CONSTRAINT [FK_AssignCourse_AssignCourse]
GO
ALTER TABLE [dbo].[AssignCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignCourse_AssignCourse1] FOREIGN KEY([Id])
REFERENCES [dbo].[AssignCourse] ([Id])
GO
ALTER TABLE [dbo].[AssignCourse] CHECK CONSTRAINT [FK_AssignCourse_AssignCourse1]
GO
ALTER TABLE [dbo].[AssignCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignCourse_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[AssignCourse] CHECK CONSTRAINT [FK_AssignCourse_Courses]
GO
ALTER TABLE [dbo].[AssignCourse]  WITH CHECK ADD  CONSTRAINT [FK_AssignCourse_Teacher] FOREIGN KEY([TId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[AssignCourse] CHECK CONSTRAINT [FK_AssignCourse_Teacher]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Classes] FOREIGN KEY([CId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Classes]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Courses]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Teacher] FOREIGN KEY([TId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Teacher]
GO
ALTER TABLE [dbo].[AssignSectionS]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionS_Classes] FOREIGN KEY([CId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionS] CHECK CONSTRAINT [FK_AssignSectionS_Classes]
GO
ALTER TABLE [dbo].[AssignSectionS]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionS_Section] FOREIGN KEY([SecId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionS] CHECK CONSTRAINT [FK_AssignSectionS_Section]
GO
ALTER TABLE [dbo].[AssignSectionS]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionS_Student] FOREIGN KEY([SId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionS] CHECK CONSTRAINT [FK_AssignSectionS_Student]
GO
ALTER TABLE [dbo].[AssignSectionT]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionT_AssignSectionT] FOREIGN KEY([Id])
REFERENCES [dbo].[AssignSectionT] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionT] CHECK CONSTRAINT [FK_AssignSectionT_AssignSectionT]
GO
ALTER TABLE [dbo].[AssignSectionT]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionT_Classes] FOREIGN KEY([CIassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionT] CHECK CONSTRAINT [FK_AssignSectionT_Classes]
GO
ALTER TABLE [dbo].[AssignSectionT]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionT_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionT] CHECK CONSTRAINT [FK_AssignSectionT_Section]
GO
ALTER TABLE [dbo].[AssignSectionT]  WITH CHECK ADD  CONSTRAINT [FK_AssignSectionT_Teacher] FOREIGN KEY([TId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[AssignSectionT] CHECK CONSTRAINT [FK_AssignSectionT_Teacher]
GO
ALTER TABLE [dbo].[Attendence]  WITH CHECK ADD  CONSTRAINT [FK_Attendence_Person] FOREIGN KEY([PId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Attendence] CHECK CONSTRAINT [FK_Attendence_Person]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Classes] FOREIGN KEY([CId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Classes]
GO
ALTER TABLE [dbo].[DateSheet]  WITH CHECK ADD  CONSTRAINT [FK_DateSheet_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[DateSheet] CHECK CONSTRAINT [FK_DateSheet_Courses]
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD  CONSTRAINT [FK_Fee_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Fee] CHECK CONSTRAINT [FK_Fee_Classes]
GO
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD  CONSTRAINT [FK_Fee_Student] FOREIGN KEY([SId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Fee] CHECK CONSTRAINT [FK_Fee_Student]
GO
ALTER TABLE [dbo].[GroupSection]  WITH CHECK ADD  CONSTRAINT [FK_GroupSection_Section] FOREIGN KEY([SecId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[GroupSection] CHECK CONSTRAINT [FK_GroupSection_Section]
GO
ALTER TABLE [dbo].[GroupSection]  WITH CHECK ADD  CONSTRAINT [FK_GroupSection_Student] FOREIGN KEY([SId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[GroupSection] CHECK CONSTRAINT [FK_GroupSection_Student]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Person] FOREIGN KEY([Id])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Person]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Person] FOREIGN KEY([PId])
REFERENCES [dbo].[Person] ([Id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Person]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Classes] FOREIGN KEY([CId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Classes]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Teacher] FOREIGN KEY([TId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Teacher]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Classes] FOREIGN KEY([CId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Classes]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Teacher] FOREIGN KEY([TId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Teacher]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [FK_TimeTable_AssignCourse] FOREIGN KEY([AssignCourseId])
REFERENCES [dbo].[AssignCourse] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [FK_TimeTable_AssignCourse]
GO
USE [master]
GO
ALTER DATABASE [DB36] SET  READ_WRITE 
GO
