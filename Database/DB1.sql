USE [master]
GO
/****** Object:  Database [Poddammit]    Script Date: 12/18/2021 10:10:56 AM ******/
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
/****** Object:  Table [dbo].[Episodes]    Script Date: 12/18/2021 10:10:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episodes](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[Genre] [int] NOT NULL,
	[Audio] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
	[ExplicitContent] [int] NULL,
	[Description] [varchar](max) NULL,
	[Title] [varchar](max) NULL,
	[PodcastId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistEpisode]    Script Date: 12/18/2021 10:10:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistEpisode](
	[PlaylistId] [uniqueidentifier] NOT NULL,
	[EpisodeId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 12/18/2021 10:10:56 AM ******/
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
/****** Object:  Table [dbo].[PodcastEpisode]    Script Date: 12/18/2021 10:10:56 AM ******/
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
/****** Object:  Table [dbo].[Podcasts]    Script Date: 12/18/2021 10:10:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Podcasts](
	[Id] [uniqueidentifier] NOT NULL,
	[Image] [varchar](max) NULL,
	[Title] [varchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[Genre] [int] NULL,
	[ListenScore] [decimal](18, 0) NULL,
	[TotalEpisodes] [int] NULL,
	[ExplicitContent] [int] NULL,
 CONSTRAINT [PK_Podcasts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/18/2021 10:10:56 AM ******/
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
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'0a69b164-eb2d-447b-88cc-461a53b01f7d', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'At the center of it all was Shoko Asahara, an exceptionally savvy blind man, that fostered his cult from humble beginnings, offering training and workshops that would allow his students to gain great psychic powers and enlightenment', N'218 - The Aum Shinrikyo Death Cult, Part I: Mountain Wizards', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'4fc14904-4218-4670-b6cd-5d4cf5621037', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'When his prophecy of “harumageddon” didn’t come to fruition, Asahara took it upon himself to cause this catastrophe and ordered his young sapient followers to carry out the subway gas attack with much alacrity.', N'219 - The Aum Shinrikyo Death Cult, Part II: The Bitter Cookie', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'06f1bf28-1291-4c89-8c79-8f72f0683802', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'In 2018, Asahara and twelve other Aum cult members were executed by hanging. The cult continues to this day under the name Aleph.', N'221 - The Aum Shinrikyo Death Cult, Part IV: A Billionaire''s Testicles', N'6828e0ed-3684-4558-ba1a-7decb857eae8')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'552d7474-0dde-4c85-8800-cb0c2571d0db', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'1995. Tokyo. A doomsday-obsessed cult of manga nerds carried out a horrifying terror attack on the Tokyo subway system by releasing deadly sarin gas into the system.', N'220 - The Aum Shinrikyo Death Cult, Part III: The Soldiers of White Love', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
GO
INSERT [dbo].[PlaylistEpisode] ([PlaylistId], [EpisodeId]) VALUES (N'f5403c67-a210-4402-a15b-3610084b878d', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[Playlists] ([Title], [UserId], [Type], [GenreId], [ExplicitContent], [Id], [EpisodeId]) VALUES (N'Bloody Funny', N'874545b3-f3c3-4081-ad34-330d3a6e15d6', N'2', 2, 0, N'f5403c67-a210-4402-a15b-3610084b878d', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[PodcastEpisode] ([Id], [PodcastId], [EpisodeId]) VALUES (N'b76436da-2ca7-4df9-a459-55f675f704de', N'36da0217-4858-4269-a370-9d49dc094414', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'2e32ab72-0877-46a0-822e-147efd75b4ef', N'https://upload.wikimedia.org/wikipedia/en/2/2c/LastPod_logo.jpg', N'Last Podcast on the Left', 2, 4, CAST(89 AS Decimal(18, 0)), 675, NULL)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'760e85b0-ac6a-4249-91b8-288035016b5f', N'https://pyxis.nymag.com/v1/imgs/741/c47/f4b61fb6a3f29d799f58be559c5fcf79d1-crime-in-sports.2x.rsquare.w190.jpg', N'Crime In Sports', 3, 3, CAST(92 AS Decimal(18, 0)), 310, NULL)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'36da0217-4858-4269-a370-9d49dc094414', N'https://img.podcastone.com/images/new/joodkmjin/smalltownmurder_logo.jpg', N'Small Town Murder', 2, 2, CAST(90 AS Decimal(18, 0)), 294, NULL)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'7bd4db79-702d-41a0-9a38-d55fccfefd18', N'https://images.squarespace-cdn.com/content/v1/577602e6e3df28df0015b9cd/1468994961635-X18CIUQMZ5CXXY793PH6/341710248.jpg?format=1000w', N'The Dollop', 5, 5, CAST(79 AS Decimal(18, 0)), 510, NULL)
GO
INSERT [dbo].[Users] ([FirebaseKey], [UserId], [FirstName], [LastName]) VALUES (N'8Nvdzli40kXG5RBZutkdgchrvpl1', N'874545b3-f3c3-4081-ad34-330d3a6e15d6', N'Holly', N'Parsons')
INSERT [dbo].[Users] ([FirebaseKey], [UserId], [FirstName], [LastName]) VALUES (N'Apz7wjxDGMcg5hi1PNJkoW8Tptk2', N'89ea5785-eb64-4f1b-8310-d8f0b3dd76b0', N'Holly', N'Test')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Playlists]    Script Date: 12/18/2021 10:10:56 AM ******/
CREATE NONCLUSTERED INDEX [IX_Playlists] ON [dbo].[Playlists]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Episodes] ADD  CONSTRAINT [DF_Episodes_PodcastId]  DEFAULT (newid()) FOR [PodcastId]
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
