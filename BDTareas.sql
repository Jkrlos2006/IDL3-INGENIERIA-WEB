USE [master]
GO
/****** Object:  Database [DBTarea]    Script Date: 12/11/2023 21:09:42 ******/
CREATE DATABASE [DBTarea]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBTarea', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBTarea.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBTarea_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBTarea_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBTarea] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBTarea].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBTarea] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBTarea] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBTarea] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBTarea] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBTarea] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBTarea] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBTarea] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBTarea] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBTarea] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBTarea] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBTarea] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBTarea] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBTarea] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBTarea] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBTarea] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBTarea] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBTarea] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBTarea] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBTarea] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBTarea] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBTarea] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBTarea] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBTarea] SET RECOVERY FULL 
GO
ALTER DATABASE [DBTarea] SET  MULTI_USER 
GO
ALTER DATABASE [DBTarea] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBTarea] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBTarea] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBTarea] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBTarea] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBTarea] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBTarea', N'ON'
GO
ALTER DATABASE [DBTarea] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBTarea] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBTarea]
GO
/****** Object:  Table [dbo].[Tarea]    Script Date: 12/11/2023 21:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[Descripcion] [varchar](250) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Tarea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DBTarea] SET  READ_WRITE 
GO
