USE [master]
GO


/*
ABPZero7.0生成数据
*/

/****** Object:  Database [AbpZeroTemplateDb]    Script Date: 2019/6/11 14:28:25 ******/
CREATE DATABASE [AbpZeroTemplateDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AbpZeroTemplateDb', FILENAME = N'/var/opt/mssql/data/AbpZeroTemplateDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AbpZeroTemplateDb_log', FILENAME = N'/var/opt/mssql/data/AbpZeroTemplateDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AbpZeroTemplateDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AbpZeroTemplateDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET RECOVERY FULL 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET  MULTI_USER 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AbpZeroTemplateDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AbpZeroTemplateDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AbpZeroTemplateDb', N'ON'
GO
ALTER DATABASE [AbpZeroTemplateDb] SET QUERY_STORE = OFF
GO
USE [AbpZeroTemplateDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AbpZeroTemplateDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2019/6/11 14:28:27 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogs]    Script Date: 2019/6/11 14:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CustomData] [nvarchar](2000) NULL,
	[Exception] [nvarchar](2000) NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ImpersonatorTenantId] [int] NULL,
	[ImpersonatorUserId] [bigint] NULL,
	[MethodName] [nvarchar](256) NULL,
	[Parameters] [nvarchar](1024) NULL,
	[ServiceName] [nvarchar](256) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[ReturnValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpBackgroundJobs]    Script Date: 2019/6/11 14:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpBackgroundJobs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[IsAbandoned] [bit] NOT NULL,
	[JobArgs] [nvarchar](max) NOT NULL,
	[JobType] [nvarchar](512) NOT NULL,
	[LastTryTime] [datetime2](7) NULL,
	[NextTryTime] [datetime2](7) NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[TryCount] [smallint] NOT NULL,
 CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEditions]    Script Date: 2019/6/11 14:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEditions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](32) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[AnnualPrice] [decimal](18, 2) NULL,
	[ExpiringEditionId] [int] NULL,
	[MonthlyPrice] [decimal](18, 2) NULL,
	[TrialDayCount] [int] NULL,
	[WaitingDayAfterExpire] [int] NULL,
 CONSTRAINT [PK_AbpEditions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChanges]    Script Date: 2019/6/11 14:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChanges](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ChangeTime] [datetime2](7) NOT NULL,
	[ChangeType] [tinyint] NOT NULL,
	[EntityChangeSetId] [bigint] NOT NULL,
	[EntityId] [nvarchar](48) NULL,
	[EntityTypeFullName] [nvarchar](192) NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChangeSets]    Script Date: 2019/6/11 14:28:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChangeSets](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[ExtensionData] [nvarchar](max) NULL,
	[ImpersonatorTenantId] [int] NULL,
	[ImpersonatorUserId] [bigint] NULL,
	[Reason] [nvarchar](256) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_AbpEntityChangeSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityPropertyChanges]    Script Date: 2019/6/11 14:28:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityPropertyChanges](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityChangeId] [bigint] NOT NULL,
	[NewValue] [nvarchar](512) NULL,
	[OriginalValue] [nvarchar](512) NULL,
	[PropertyName] [nvarchar](96) NULL,
	[PropertyTypeFullName] [nvarchar](192) NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatures]    Script Date: 2019/6/11 14:28:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatures](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](2000) NOT NULL,
	[EditionId] [int] NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLanguages]    Script Date: 2019/6/11 14:28:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLanguages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[Icon] [nvarchar](128) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](10) NOT NULL,
	[TenantId] [int] NULL,
	[IsDisabled] [bit] NOT NULL,
 CONSTRAINT [PK_AbpLanguages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLanguageTexts]    Script Date: 2019/6/11 14:28:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLanguageTexts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Key] [nvarchar](256) NOT NULL,
	[LanguageName] [nvarchar](10) NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Source] [nvarchar](128) NOT NULL,
	[TenantId] [int] NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AbpLanguageTexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpNotifications]    Script Date: 2019/6/11 14:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Data] [nvarchar](max) NULL,
	[DataTypeName] [nvarchar](512) NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[ExcludedUserIds] [nvarchar](max) NULL,
	[NotificationName] [nvarchar](96) NOT NULL,
	[Severity] [tinyint] NOT NULL,
	[TenantIds] [nvarchar](max) NULL,
	[UserIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpNotificationSubscriptions]    Script Date: 2019/6/11 14:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpNotificationSubscriptions](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[NotificationName] [nvarchar](96) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpNotificationSubscriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnitRoles]    Script Date: 2019/6/11 14:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnitRoles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[RoleId] [int] NOT NULL,
	[OrganizationUnitId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnits]    Script Date: 2019/6/11 14:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](95) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](128) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissions]    Script Date: 2019/6/11 14:28:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[IsGranted] [bit] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [int] NULL,
	[RoleId] [int] NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPersistedGrants]    Script Date: 2019/6/11 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPersistedGrants](
	[Id] [nvarchar](200) NOT NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[SubjectId] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AbpPersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoleClaims]    Script Date: 2019/6/11 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoleClaims](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](256) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[RoleId] [int] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoles]    Script Date: 2019/6/11 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[DisplayName] [nvarchar](64) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](32) NOT NULL,
	[NormalizedName] [nvarchar](32) NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSettings]    Script Date: 2019/6/11 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSettings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[Value] [nvarchar](2000) NULL,
 CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenantNotifications]    Script Date: 2019/6/11 14:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenantNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[Data] [nvarchar](max) NULL,
	[DataTypeName] [nvarchar](512) NULL,
	[EntityId] [nvarchar](96) NULL,
	[EntityTypeAssemblyQualifiedName] [nvarchar](512) NULL,
	[EntityTypeName] [nvarchar](250) NULL,
	[NotificationName] [nvarchar](96) NOT NULL,
	[Severity] [tinyint] NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AbpTenantNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenants]    Script Date: 2019/6/11 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionString] [nvarchar](1024) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[CustomCssId] [uniqueidentifier] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EditionId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[LogoFileType] [nvarchar](64) NULL,
	[LogoId] [uniqueidentifier] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenancyName] [nvarchar](64) NOT NULL,
	[IsInTrialPeriod] [bit] NOT NULL,
	[SubscriptionEndDateUtc] [datetime2](7) NULL,
	[SubscriptionPaymentType] [int] NOT NULL,
 CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserAccounts]    Script Date: 2019/6/11 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserAccounts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EmailAddress] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[UserLinkId] [bigint] NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AbpUserAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserClaims]    Script Date: 2019/6/11 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserClaims](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](256) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLoginAttempts]    Script Date: 2019/6/11 14:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLoginAttempts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Result] [tinyint] NOT NULL,
	[TenancyName] [nvarchar](64) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NULL,
	[UserNameOrEmailAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_AbpUserLoginAttempts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLogins]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLogins](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](256) NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserNotifications]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[State] [int] NOT NULL,
	[TenantId] [int] NULL,
	[TenantNotificationId] [uniqueidentifier] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserOrganizationUnits]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserOrganizationUnits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[OrganizationUnitId] [bigint] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserRoles]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserRoles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[RoleId] [int] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUsers]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AuthenticationSource] [nvarchar](64) NULL,
	[ConcurrencyStamp] [nvarchar](128) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EmailAddress] [nvarchar](256) NOT NULL,
	[EmailConfirmationCode] [nvarchar](328) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsEmailConfirmed] [bit] NOT NULL,
	[IsLockoutEnabled] [bit] NOT NULL,
	[IsPhoneNumberConfirmed] [bit] NOT NULL,
	[IsTwoFactorEnabled] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[LockoutEndDateUtc] [datetime2](7) NULL,
	[Name] [nvarchar](64) NOT NULL,
	[NormalizedEmailAddress] [nvarchar](256) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordResetCode] [nvarchar](328) NULL,
	[PhoneNumber] [nvarchar](32) NULL,
	[ProfilePictureId] [uniqueidentifier] NULL,
	[SecurityStamp] [nvarchar](128) NULL,
	[ShouldChangePasswordOnNextLogin] [bit] NOT NULL,
	[Surname] [nvarchar](64) NOT NULL,
	[TenantId] [int] NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[SignInToken] [nvarchar](max) NULL,
	[SignInTokenExpireTimeUtc] [datetime2](7) NULL,
	[GoogleAuthenticatorKey] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserTokens]    Script Date: 2019/6/11 14:28:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserTokens](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginProvider] [nvarchar](128) NULL,
	[Name] [nvarchar](128) NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[Value] [nvarchar](512) NULL,
	[ExpireDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppBinaryObjects]    Script Date: 2019/6/11 14:28:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppBinaryObjects](
	[Id] [uniqueidentifier] NOT NULL,
	[Bytes] [varbinary](max) NOT NULL,
	[TenantId] [int] NULL,
 CONSTRAINT [PK_AppBinaryObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppChatMessages]    Script Date: 2019/6/11 14:28:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppChatMessages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[ReadState] [int] NOT NULL,
	[Side] [int] NOT NULL,
	[TargetTenantId] [int] NULL,
	[TargetUserId] [bigint] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
	[SharedMessageId] [uniqueidentifier] NULL,
	[ReceiverReadState] [int] NOT NULL,
 CONSTRAINT [PK_AppChatMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppFriendships]    Script Date: 2019/6/11 14:28:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppFriendships](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[FriendProfilePictureId] [uniqueidentifier] NULL,
	[FriendTenancyName] [nvarchar](max) NULL,
	[FriendTenantId] [int] NULL,
	[FriendUserId] [bigint] NOT NULL,
	[FriendUserName] [nvarchar](256) NOT NULL,
	[State] [int] NOT NULL,
	[TenantId] [int] NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AppFriendships] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppInvoices]    Script Date: 2019/6/11 14:28:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppInvoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDate] [datetime2](7) NOT NULL,
	[InvoiceNo] [nvarchar](max) NULL,
	[TenantAddress] [nvarchar](max) NULL,
	[TenantLegalName] [nvarchar](max) NULL,
	[TenantTaxNo] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppInvoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppSubscriptionPayments]    Script Date: 2019/6/11 14:28:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSubscriptionPayments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorUserId] [bigint] NULL,
	[DayCount] [int] NOT NULL,
	[DeleterUserId] [bigint] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[EditionId] [int] NOT NULL,
	[Gateway] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierUserId] [bigint] NULL,
	[SuccessUrl] [nvarchar](max) NULL,
	[PaymentPeriodType] [int] NULL,
	[Status] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
	[InvoiceNo] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ErrorUrl] [nvarchar](max) NULL,
	[ExternalPaymentId] [nvarchar](450) NULL,
	[IsRecurring] [bit] NOT NULL,
 CONSTRAINT [PK_AppSubscriptionPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170406083347_Initial_Migration', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170623075109_AspNetZero_V4_1_Changes', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170704084731_Added_GoogleAuthenticatorKey_Column', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170714081027_Added_Relation_Between_Edition_And_SubscriptionPayment', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170724142223_Upgraded_To_Abp_V2_2', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170913133916_Added_SharedMessageId_To_ChatMessage', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170914070123_Added_ReceiverReadState_To_ChatMessage', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170914084815_Invoice_Changes', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170914121022_TypeChange_SharedMessageId_String_Guid', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180118065703_Added_Entity_History', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180320065710_Upgraded_To_Abp_V3_5', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180718081610_Abp_v3_7_Changes', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180726063233_Upgraded_ABP_v3.8.0', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180731052649_Upgrade_ABP_v3.8.1', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180807062930_Upgrade_ABP_v3.8.2', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181012141151_Upgraded_To_Abp_v3_9_0', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190103081952_Recurring_Payment_Changes', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190208083524_Upgraded_To_Abp_v4_2_0', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190304131651_Added_User_OrganizationUnits', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190501074213_Changed_Billing_Setting_Names', N'2.2.3-servicing-35854')
GO
SET IDENTITY_INSERT [dbo].[AbpEditions] ON 
GO
INSERT [dbo].[AbpEditions] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [Discriminator], [AnnualPrice], [ExpiringEditionId], [MonthlyPrice], [TrialDayCount], [WaitingDayAfterExpire]) VALUES (1, CAST(N'2019-06-11T14:10:54.4810683' AS DateTime2), NULL, NULL, NULL, N'Standard', 0, NULL, NULL, N'Standard', N'SubscribableEdition', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpEditions] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpFeatures] ON 
GO
INSERT [dbo].[AbpFeatures] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [Name], [Value], [EditionId], [TenantId]) VALUES (1, CAST(N'2019-06-11T14:10:55.8061232' AS DateTime2), NULL, N'EditionFeatureSetting', N'App.ChatFeature', N'true', 1, NULL)
GO
INSERT [dbo].[AbpFeatures] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [Name], [Value], [EditionId], [TenantId]) VALUES (2, CAST(N'2019-06-11T14:10:55.9620209' AS DateTime2), NULL, N'EditionFeatureSetting', N'App.ChatFeature.TenantToTenant', N'true', 1, NULL)
GO
INSERT [dbo].[AbpFeatures] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [Name], [Value], [EditionId], [TenantId]) VALUES (3, CAST(N'2019-06-11T14:10:56.0419632' AS DateTime2), NULL, N'EditionFeatureSetting', N'App.ChatFeature.TenantToHost', N'true', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpFeatures] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpLanguages] ON 
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (1, CAST(N'2019-06-11T14:10:56.0444487' AS DateTime2), NULL, NULL, NULL, N'English', N'famfamfam-flags us', 0, NULL, NULL, N'en', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (2, CAST(N'2019-06-11T14:10:56.0447891' AS DateTime2), NULL, NULL, NULL, N'العربية', N'famfamfam-flags sa', 0, NULL, NULL, N'ar', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (3, CAST(N'2019-06-11T14:10:56.0447899' AS DateTime2), NULL, NULL, NULL, N'Deutsch', N'famfamfam-flags de', 0, NULL, NULL, N'de', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (4, CAST(N'2019-06-11T14:10:56.0447903' AS DateTime2), NULL, NULL, NULL, N'Italiano', N'famfamfam-flags it', 0, NULL, NULL, N'it', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (5, CAST(N'2019-06-11T14:10:56.0447903' AS DateTime2), NULL, NULL, NULL, N'Français', N'famfamfam-flags fr', 0, NULL, NULL, N'fr', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (6, CAST(N'2019-06-11T14:10:56.0447915' AS DateTime2), NULL, NULL, NULL, N'Português (Brasil)', N'famfamfam-flags br', 0, NULL, NULL, N'pt-BR', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (7, CAST(N'2019-06-11T14:10:56.0447919' AS DateTime2), NULL, NULL, NULL, N'Türkçe', N'famfamfam-flags tr', 0, NULL, NULL, N'tr', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (8, CAST(N'2019-06-11T14:10:56.0447919' AS DateTime2), NULL, NULL, NULL, N'Pусский', N'famfamfam-flags ru', 0, NULL, NULL, N'ru', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (9, CAST(N'2019-06-11T14:10:56.0447924' AS DateTime2), NULL, NULL, NULL, N'简体中文', N'famfamfam-flags cn', 0, NULL, NULL, N'zh-Hans', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (10, CAST(N'2019-06-11T14:10:56.0447928' AS DateTime2), NULL, NULL, NULL, N'Español (México)', N'famfamfam-flags mx', 0, NULL, NULL, N'es-MX', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (11, CAST(N'2019-06-11T14:10:56.0447928' AS DateTime2), NULL, NULL, NULL, N'Español (Spanish)', N'famfamfam-flags es', 0, NULL, NULL, N'es', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (12, CAST(N'2019-06-11T14:10:56.0447932' AS DateTime2), NULL, NULL, NULL, N'Tiếng Việt', N'famfamfam-flags vn', 0, NULL, NULL, N'vi', NULL, 0)
GO
INSERT [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (13, CAST(N'2019-06-11T14:10:56.0447932' AS DateTime2), NULL, NULL, NULL, N'Dutch (Nederlands)', N'famfamfam-flags nl', 0, NULL, NULL, N'nl', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[AbpLanguages] OFF
GO
INSERT [dbo].[AbpNotificationSubscriptions] ([Id], [CreationTime], [CreatorUserId], [EntityId], [EntityTypeAssemblyQualifiedName], [EntityTypeName], [NotificationName], [TenantId], [UserId]) VALUES (N'52905484-8bd8-2658-5b08-39ee575620a5', CAST(N'2019-06-11T14:11:01.9276134' AS DateTime2), NULL, NULL, NULL, NULL, N'App.NewTenantRegistered', NULL, 1)
GO
INSERT [dbo].[AbpNotificationSubscriptions] ([Id], [CreationTime], [CreatorUserId], [EntityId], [EntityTypeAssemblyQualifiedName], [EntityTypeName], [NotificationName], [TenantId], [UserId]) VALUES (N'fc175e91-62f7-7c12-7db8-39ee57562127', CAST(N'2019-06-11T14:11:02.0558192' AS DateTime2), NULL, NULL, NULL, NULL, N'App.NewUserRegistered', NULL, 1)
GO
INSERT [dbo].[AbpNotificationSubscriptions] ([Id], [CreationTime], [CreatorUserId], [EntityId], [EntityTypeAssemblyQualifiedName], [EntityTypeName], [NotificationName], [TenantId], [UserId]) VALUES (N'5a6f6606-221e-eb57-6e2a-39ee57562efc', CAST(N'2019-06-11T14:11:05.5968588' AS DateTime2), NULL, NULL, NULL, NULL, N'App.NewUserRegistered', 1, 2)
GO
SET IDENTITY_INSERT [dbo].[AbpRoles] ON 
GO
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId]) VALUES (1, N'5dcc349d-b126-4d01-ba81-fcc474f8476c', CAST(N'2019-06-11T14:11:00.5331714' AS DateTime2), NULL, NULL, NULL, N'Admin', 1, 0, 1, NULL, NULL, N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId]) VALUES (2, N'1ffc5890-250a-4690-9803-3152b82eac7d', CAST(N'2019-06-11T14:11:04.0411216' AS DateTime2), NULL, NULL, NULL, N'Admin', 0, 0, 1, NULL, NULL, N'Admin', N'ADMIN', 1)
GO
INSERT [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId]) VALUES (3, N'45ac1238-1b58-4d00-8602-f1bdc88097b3', CAST(N'2019-06-11T14:11:04.4041436' AS DateTime2), NULL, NULL, NULL, N'User', 1, 0, 1, NULL, NULL, N'User', N'USER', 1)
GO
SET IDENTITY_INSERT [dbo].[AbpRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpSettings] ON 
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (1, CAST(N'2019-06-11T14:11:02.4763511' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromAddress', NULL, NULL, N'admin@mydomain.com')
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (2, CAST(N'2019-06-11T14:11:02.8112764' AS DateTime2), NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromDisplayName', NULL, NULL, N'mydomain.com mailer')
GO
INSERT [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (3, CAST(N'2019-06-11T14:11:03.1137269' AS DateTime2), NULL, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, NULL, N'en')
GO
SET IDENTITY_INSERT [dbo].[AbpSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpTenants] ON 
GO
INSERT [dbo].[AbpTenants] ([Id], [ConnectionString], [CreationTime], [CreatorUserId], [CustomCssId], [DeleterUserId], [DeletionTime], [EditionId], [IsActive], [IsDeleted], [LastModificationTime], [LastModifierUserId], [LogoFileType], [LogoId], [Name], [TenancyName], [IsInTrialPeriod], [SubscriptionEndDateUtc], [SubscriptionPaymentType]) VALUES (1, NULL, CAST(N'2019-06-11T14:11:03.4507760' AS DateTime2), NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, N'Default', N'Default', 0, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[AbpTenants] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUserAccounts] ON 
GO
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (1, CAST(N'2019-06-11T14:11:01.6798293' AS DateTime2), NULL, NULL, NULL, N'admin@aspnetzero.com', 0, NULL, NULL, NULL, 1, NULL, N'admin')
GO
INSERT [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (2, CAST(N'2019-06-11T14:11:05.3561472' AS DateTime2), NULL, NULL, NULL, N'admin@defaulttenant.com', 0, NULL, NULL, 1, 2, NULL, N'admin')
GO
SET IDENTITY_INSERT [dbo].[AbpUserAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUserRoles] ON 
GO
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (1, CAST(N'2019-06-11T14:11:01.4170598' AS DateTime2), NULL, 1, NULL, 1)
GO
INSERT [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (2, CAST(N'2019-06-11T14:11:05.1266790' AS DateTime2), NULL, 2, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[AbpUserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[AbpUsers] ON 
GO
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [ProfilePictureId], [SecurityStamp], [ShouldChangePasswordOnNextLogin], [Surname], [TenantId], [UserName], [SignInToken], [SignInTokenExpireTimeUtc], [GoogleAuthenticatorKey]) VALUES (1, 0, NULL, N'8344c917-3cd9-4306-8955-261bcaeac82a', CAST(N'2019-06-11T14:11:00.8905692' AS DateTime2), NULL, NULL, NULL, N'admin@aspnetzero.com', NULL, 1, 0, 1, 1, 0, 1, NULL, NULL, NULL, N'admin', N'ADMIN@ASPNETZERO.COM', N'ADMIN', N'AM4OLBpptxBYmM79lGOX9egzZk3vIQU3d/gFCJzaBjAPXzYIK3tQ2N7X4fcrHtElTw==', NULL, NULL, NULL, N'4ee00ad4-f8ec-d024-f5a8-39ee57561c9b', 0, N'admin', NULL, N'admin', NULL, NULL, NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [ProfilePictureId], [SecurityStamp], [ShouldChangePasswordOnNextLogin], [Surname], [TenantId], [UserName], [SignInToken], [SignInTokenExpireTimeUtc], [GoogleAuthenticatorKey]) VALUES (2, 0, NULL, N'd0e685f7-0699-4ee5-b4cc-a8cbf340070b', CAST(N'2019-06-11T14:11:04.7619922' AS DateTime2), NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, 1, 0, 1, 1, 0, 1, NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEGeZ7TB6Vi11+HU0bjJSWzRwGTNlv6I3MGRNSq2ZM7fKqS2YGLbnlf6vLy0t3iMv/Q==', NULL, NULL, NULL, N'3d818dd8-14df-13cb-ae91-39ee57562bb9', 0, N'admin', 1, N'admin', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AbpUsers] OFF
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionDuration]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionDuration] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionDuration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime] ON [dbo].[AbpBackgroundJobs]
(
	[IsAbandoned] ASC,
	[NextTryTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChanges_EntityChangeSetId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityChangeSetId] ON [dbo].[AbpEntityChanges]
(
	[EntityChangeSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChanges_EntityTypeFullName_EntityId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityTypeFullName_EntityId] ON [dbo].[AbpEntityChanges]
(
	[EntityTypeFullName] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_CreationTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_CreationTime] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_Reason]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_Reason] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[Reason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChangeSets_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_UserId] ON [dbo].[AbpEntityChangeSets]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityPropertyChanges_EntityChangeId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId] ON [dbo].[AbpEntityPropertyChanges]
(
	[EntityChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_EditionId_Name]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_EditionId_Name] ON [dbo].[AbpFeatures]
(
	[EditionId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_TenantId_Name]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_TenantId_Name] ON [dbo].[AbpFeatures]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpLanguages_TenantId_Name]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpLanguages_TenantId_Name] ON [dbo].[AbpLanguages]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpLanguageTexts_TenantId_Source_LanguageName_Key]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpLanguageTexts_TenantId_Source_LanguageName_Key] ON [dbo].[AbpLanguageTexts]
(
	[TenantId] ASC,
	[Source] ASC,
	[LanguageName] ASC,
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpNotificationSubscriptions_NotificationName_EntityTypeName_EntityId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_NotificationName_EntityTypeName_EntityId_UserId] ON [dbo].[AbpNotificationSubscriptions]
(
	[NotificationName] ASC,
	[EntityTypeName] ASC,
	[EntityId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpNotificationSubscriptions_TenantId_NotificationName_EntityTypeName_EntityId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_TenantId_NotificationName_EntityTypeName_EntityId_UserId] ON [dbo].[AbpNotificationSubscriptions]
(
	[TenantId] ASC,
	[NotificationName] ASC,
	[EntityTypeName] ASC,
	[EntityId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_TenantId_OrganizationUnitId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_OrganizationUnitId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[TenantId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_TenantId_RoleId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_RoleId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[TenantId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnits_ParentId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_ParentId] ON [dbo].[AbpOrganizationUnits]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpOrganizationUnits_TenantId_Code]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_TenantId_Code] ON [dbo].[AbpOrganizationUnits]
(
	[TenantId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpPermissions_RoleId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_RoleId] ON [dbo].[AbpPermissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_TenantId_Name]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_TenantId_Name] ON [dbo].[AbpPermissions]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpPermissions_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_UserId] ON [dbo].[AbpPermissions]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPersistedGrants_SubjectId_ClientId_Type]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPersistedGrants_SubjectId_ClientId_Type] ON [dbo].[AbpPersistedGrants]
(
	[SubjectId] ASC,
	[ClientId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoleClaims_RoleId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId] ON [dbo].[AbpRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoleClaims_TenantId_ClaimType]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_TenantId_ClaimType] ON [dbo].[AbpRoleClaims]
(
	[TenantId] ASC,
	[ClaimType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_CreatorUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_CreatorUserId] ON [dbo].[AbpRoles]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_DeleterUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_DeleterUserId] ON [dbo].[AbpRoles]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoles_LastModifierUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_LastModifierUserId] ON [dbo].[AbpRoles]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoles_TenantId_NormalizedName]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_TenantId_NormalizedName] ON [dbo].[AbpRoles]
(
	[TenantId] ASC,
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSettings_TenantId_Name]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSettings_TenantId_Name] ON [dbo].[AbpSettings]
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpSettings_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSettings_UserId] ON [dbo].[AbpSettings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenantNotifications_TenantId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenantNotifications_TenantId] ON [dbo].[AbpTenantNotifications]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_CreationTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_CreationTime] ON [dbo].[AbpTenants]
(
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_CreatorUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_CreatorUserId] ON [dbo].[AbpTenants]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_DeleterUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_DeleterUserId] ON [dbo].[AbpTenants]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_EditionId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_EditionId] ON [dbo].[AbpTenants]
(
	[EditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_LastModifierUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_LastModifierUserId] ON [dbo].[AbpTenants]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpTenants_SubscriptionEndDateUtc]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_SubscriptionEndDateUtc] ON [dbo].[AbpTenants]
(
	[SubscriptionEndDateUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpTenants_TenancyName]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_TenancyName] ON [dbo].[AbpTenants]
(
	[TenancyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_EmailAddress]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_EmailAddress] ON [dbo].[AbpUserAccounts]
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_EmailAddress]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_EmailAddress] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserId] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_TenantId_UserName]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserName] ON [dbo].[AbpUserAccounts]
(
	[TenantId] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserAccounts_UserName]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_UserName] ON [dbo].[AbpUserAccounts]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserClaims_TenantId_ClaimType]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_TenantId_ClaimType] ON [dbo].[AbpUserClaims]
(
	[TenantId] ASC,
	[ClaimType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserClaims_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId] ON [dbo].[AbpUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLoginAttempts_TenancyName_UserNameOrEmailAddress_Result]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_TenancyName_UserNameOrEmailAddress_Result] ON [dbo].[AbpUserLoginAttempts]
(
	[TenancyName] ASC,
	[UserNameOrEmailAddress] ASC,
	[Result] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLoginAttempts_UserId_TenantId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_UserId_TenantId] ON [dbo].[AbpUserLoginAttempts]
(
	[UserId] ASC,
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLogins_TenantId_LoginProvider_ProviderKey]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_LoginProvider_ProviderKey] ON [dbo].[AbpUserLogins]
(
	[TenantId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLogins_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_UserId] ON [dbo].[AbpUserLogins]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserLogins_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_UserId] ON [dbo].[AbpUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserNotifications_UserId_State_CreationTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserNotifications_UserId_State_CreationTime] ON [dbo].[AbpUserNotifications]
(
	[UserId] ASC,
	[State] ASC,
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_TenantId_OrganizationUnitId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_OrganizationUnitId] ON [dbo].[AbpUserOrganizationUnits]
(
	[TenantId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_UserId] ON [dbo].[AbpUserOrganizationUnits]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_UserId] ON [dbo].[AbpUserOrganizationUnits]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_TenantId_RoleId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_RoleId] ON [dbo].[AbpUserRoles]
(
	[TenantId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_UserId] ON [dbo].[AbpUserRoles]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_UserId] ON [dbo].[AbpUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_CreatorUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_CreatorUserId] ON [dbo].[AbpUsers]
(
	[CreatorUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_DeleterUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_DeleterUserId] ON [dbo].[AbpUsers]
(
	[DeleterUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUsers_LastModifierUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_LastModifierUserId] ON [dbo].[AbpUsers]
(
	[LastModifierUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_TenantId_NormalizedEmailAddress]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedEmailAddress] ON [dbo].[AbpUsers]
(
	[TenantId] ASC,
	[NormalizedEmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_TenantId_NormalizedUserName]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedUserName] ON [dbo].[AbpUsers]
(
	[TenantId] ASC,
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserTokens_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_TenantId_UserId] ON [dbo].[AbpUserTokens]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserTokens_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_UserId] ON [dbo].[AbpUserTokens]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppBinaryObjects_TenantId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppBinaryObjects_TenantId] ON [dbo].[AppBinaryObjects]
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppChatMessages_TargetTenantId_TargetUserId_ReadState]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppChatMessages_TargetTenantId_TargetUserId_ReadState] ON [dbo].[AppChatMessages]
(
	[TargetTenantId] ASC,
	[TargetUserId] ASC,
	[ReadState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppChatMessages_TargetTenantId_UserId_ReadState]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppChatMessages_TargetTenantId_UserId_ReadState] ON [dbo].[AppChatMessages]
(
	[TargetTenantId] ASC,
	[UserId] ASC,
	[ReadState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppChatMessages_TenantId_TargetUserId_ReadState]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppChatMessages_TenantId_TargetUserId_ReadState] ON [dbo].[AppChatMessages]
(
	[TenantId] ASC,
	[TargetUserId] ASC,
	[ReadState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppChatMessages_TenantId_UserId_ReadState]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppChatMessages_TenantId_UserId_ReadState] ON [dbo].[AppChatMessages]
(
	[TenantId] ASC,
	[UserId] ASC,
	[ReadState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppFriendships_FriendTenantId_FriendUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppFriendships_FriendTenantId_FriendUserId] ON [dbo].[AppFriendships]
(
	[FriendTenantId] ASC,
	[FriendUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppFriendships_FriendTenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppFriendships_FriendTenantId_UserId] ON [dbo].[AppFriendships]
(
	[FriendTenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppFriendships_TenantId_FriendUserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppFriendships_TenantId_FriendUserId] ON [dbo].[AppFriendships]
(
	[TenantId] ASC,
	[FriendUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppFriendships_TenantId_UserId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppFriendships_TenantId_UserId] ON [dbo].[AppFriendships]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppSubscriptionPayments_EditionId]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppSubscriptionPayments_EditionId] ON [dbo].[AppSubscriptionPayments]
(
	[EditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AppSubscriptionPayments_ExternalPaymentId_Gateway]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppSubscriptionPayments_ExternalPaymentId_Gateway] ON [dbo].[AppSubscriptionPayments]
(
	[ExternalPaymentId] ASC,
	[Gateway] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppSubscriptionPayments_Status_CreationTime]    Script Date: 2019/6/11 14:28:40 ******/
CREATE NONCLUSTERED INDEX [IX_AppSubscriptionPayments_Status_CreationTime] ON [dbo].[AppSubscriptionPayments]
(
	[Status] ASC,
	[CreationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbpEditions] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AbpLanguages] ADD  DEFAULT ((0)) FOR [IsDisabled]
GO
ALTER TABLE [dbo].[AbpTenants] ADD  DEFAULT ((0)) FOR [IsInTrialPeriod]
GO
ALTER TABLE [dbo].[AbpTenants] ADD  DEFAULT ((0)) FOR [SubscriptionPaymentType]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AppChatMessages] ADD  DEFAULT ((0)) FOR [ReceiverReadState]
GO
ALTER TABLE [dbo].[AppSubscriptionPayments] ADD  DEFAULT ((0)) FOR [IsRecurring]
GO
ALTER TABLE [dbo].[AbpEntityChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityChanges_AbpEntityChangeSets_EntityChangeSetId] FOREIGN KEY([EntityChangeSetId])
REFERENCES [dbo].[AbpEntityChangeSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityChanges] CHECK CONSTRAINT [FK_AbpEntityChanges_AbpEntityChangeSets_EntityChangeSetId]
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY([EntityChangeId])
REFERENCES [dbo].[AbpEntityChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges] CHECK CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId]
GO
ALTER TABLE [dbo].[AbpFeatures]  WITH CHECK ADD  CONSTRAINT [FK_AbpFeatures_AbpEditions_EditionId] FOREIGN KEY([EditionId])
REFERENCES [dbo].[AbpEditions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpFeatures] CHECK CONSTRAINT [FK_AbpFeatures_AbpEditions_EditionId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] CHECK CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId]
GO
ALTER TABLE [dbo].[AbpPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AbpPermissions_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpPermissions] CHECK CONSTRAINT [FK_AbpPermissions_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AbpPermissions_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpPermissions] CHECK CONSTRAINT [FK_AbpPermissions_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpRoleClaims] CHECK CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoles_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpRoles] CHECK CONSTRAINT [FK_AbpRoles_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpSettings]  WITH CHECK ADD  CONSTRAINT [FK_AbpSettings_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpSettings] CHECK CONSTRAINT [FK_AbpSettings_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpEditions_EditionId] FOREIGN KEY([EditionId])
REFERENCES [dbo].[AbpEditions] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpEditions_EditionId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpTenants]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenants_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpTenants] CHECK CONSTRAINT [FK_AbpTenants_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserClaims] CHECK CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserLogins] CHECK CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_CreatorUserId] FOREIGN KEY([CreatorUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_CreatorUserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_DeleterUserId] FOREIGN KEY([DeleterUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_DeleterUserId]
GO
ALTER TABLE [dbo].[AbpUsers]  WITH CHECK ADD  CONSTRAINT [FK_AbpUsers_AbpUsers_LastModifierUserId] FOREIGN KEY([LastModifierUserId])
REFERENCES [dbo].[AbpUsers] ([Id])
GO
ALTER TABLE [dbo].[AbpUsers] CHECK CONSTRAINT [FK_AbpUsers_AbpUsers_LastModifierUserId]
GO
ALTER TABLE [dbo].[AbpUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserTokens] CHECK CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AppSubscriptionPayments]  WITH CHECK ADD  CONSTRAINT [FK_AppSubscriptionPayments_AbpEditions_EditionId] FOREIGN KEY([EditionId])
REFERENCES [dbo].[AbpEditions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppSubscriptionPayments] CHECK CONSTRAINT [FK_AppSubscriptionPayments_AbpEditions_EditionId]
GO
USE [master]
GO
ALTER DATABASE [AbpZeroTemplateDb] SET  READ_WRITE 
GO
