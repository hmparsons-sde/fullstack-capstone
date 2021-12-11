USE [master]
GO
/****** Object:  Database [Poddammit]    Script Date: 12/11/2021 1:57:20 PM ******/
CREATE DATABASE [Poddammit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Poddammit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NSSSQLSERVER\MSSQL\DATA\Poddammit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Poddammit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NSSSQLSERVER\MSSQL\DATA\Poddammit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Poddammit] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Poddammit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Poddammit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Poddammit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Poddammit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Poddammit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Poddammit] SET ARITHABORT OFF 
GO
ALTER DATABASE [Poddammit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Poddammit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Poddammit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Poddammit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Poddammit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Poddammit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Poddammit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Poddammit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Poddammit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Poddammit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Poddammit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Poddammit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Poddammit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Poddammit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Poddammit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Poddammit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Poddammit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Poddammit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Poddammit] SET  MULTI_USER 
GO
ALTER DATABASE [Poddammit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Poddammit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Poddammit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Poddammit] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Poddammit] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Poddammit] SET QUERY_STORE = OFF
GO
USE [Poddammit]
GO
/****** Object:  Table [dbo].[Episodes]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episodes](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[GenreId] [int] NOT NULL,
	[Audio] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[ExplicitContent] [int] NULL,
	[PubDateMs] [int] NULL,
	[Podcast] [int] NOT NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistEpisode]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistEpisode](
	[PlaylistId] [uniqueidentifier] NOT NULL,
	[EpisodeId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlists](
	[Title] [varchar](50) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[GenreId] [int] NOT NULL,
	[ExplicitContent] [int] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[EpisodeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Playlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PodcastEpisode]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PodcastEpisode](
	[Id] [uniqueidentifier] NOT NULL,
	[PodcastId] [uniqueidentifier] NOT NULL,
	[EpisodeId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Podcasts]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Podcasts](
	[Id] [uniqueidentifier] NOT NULL,
	[Audio] [varchar](max) NULL,
	[Image] [varchar](50) NULL,
	[Title] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[GenreIds] [int] NULL,
	[Thumbnail] [varchar](max) NULL,
	[ListenScore] [decimal](18, 0) NULL,
	[TotalEpisodes] [int] NULL,
	[ExplicitContent] [int] NULL,
	[Episodes] [int] NOT NULL,
 CONSTRAINT [PK_Podcasts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/11/2021 1:57:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[FirebaseKey] [varchar](50) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Playlists]    Script Date: 12/11/2021 1:57:21 PM ******/
CREATE NONCLUSTERED INDEX [IX_Playlists] ON [dbo].[Playlists]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PlaylistEpisode] ADD  CONSTRAINT [DF_PlaylistEpisode_PlaylistId]  DEFAULT (newid()) FOR [PlaylistId]
GO
ALTER TABLE [dbo].[PlaylistEpisode] ADD  CONSTRAINT [DF_PlaylistEpisode_EpisodeId]  DEFAULT (newid()) FOR [EpisodeId]
GO
ALTER TABLE [dbo].[Playlists] ADD  CONSTRAINT [DF_Playlists_UserId]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[Playlists] ADD  CONSTRAINT [DF_Playlists_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Playlists] ADD  CONSTRAINT [DF_Playlists_EpisodeId]  DEFAULT (newid()) FOR [EpisodeId]
GO
ALTER TABLE [dbo].[PodcastEpisode] ADD  CONSTRAINT [DF_PodcastEpisode_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[PodcastEpisode] ADD  CONSTRAINT [DF_PodcastEpisode_PodcastId]  DEFAULT (newid()) FOR [PodcastId]
GO
ALTER TABLE [dbo].[PodcastEpisode] ADD  CONSTRAINT [DF_PodcastEpisode_EpisodeId]  DEFAULT (newid()) FOR [EpisodeId]
GO
ALTER TABLE [dbo].[Podcasts] ADD  CONSTRAINT [DF_Podcasts_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Uid]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[PlaylistEpisode]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistEpisode_Episodes] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[Episodes] ([Id])
GO
ALTER TABLE [dbo].[PlaylistEpisode] CHECK CONSTRAINT [FK_PlaylistEpisode_Episodes]
GO
ALTER TABLE [dbo].[PlaylistEpisode]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistEpisode_Playlists] FOREIGN KEY([PlaylistId])
REFERENCES [dbo].[Playlists] ([Id])
GO
ALTER TABLE [dbo].[PlaylistEpisode] CHECK CONSTRAINT [FK_PlaylistEpisode_Playlists]
GO
ALTER TABLE [dbo].[Playlists]  WITH CHECK ADD  CONSTRAINT [FK_Playlists_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Playlists] CHECK CONSTRAINT [FK_Playlists_Users]
GO
ALTER TABLE [dbo].[PodcastEpisode]  WITH CHECK ADD  CONSTRAINT [FK_PodcastEpisode_Episodes] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[Episodes] ([Id])
GO
ALTER TABLE [dbo].[PodcastEpisode] CHECK CONSTRAINT [FK_PodcastEpisode_Episodes]
GO
ALTER TABLE [dbo].[PodcastEpisode]  WITH CHECK ADD  CONSTRAINT [FK_PodcastEpisode_Podcasts] FOREIGN KEY([PodcastId])
REFERENCES [dbo].[Podcasts] ([Id])
GO
ALTER TABLE [dbo].[PodcastEpisode] CHECK CONSTRAINT [FK_PodcastEpisode_Podcasts]
GO
USE [master]
GO
ALTER DATABASE [Poddammit] SET  READ_WRITE 
GO
