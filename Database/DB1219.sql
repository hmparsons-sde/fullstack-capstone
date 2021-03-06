USE [master]
GO
/****** Object:  Database [Poddammit]    Script Date: 12/19/2021 8:06:28 PM ******/
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
/****** Object:  Table [dbo].[Episodes]    Script Date: 12/19/2021 8:06:28 PM ******/
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
/****** Object:  Table [dbo].[PlaylistEpisode]    Script Date: 12/19/2021 8:06:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistEpisode](
	[PlaylistId] [uniqueidentifier] NOT NULL,
	[EpisodeId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlists]    Script Date: 12/19/2021 8:06:28 PM ******/
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
/****** Object:  Table [dbo].[PodcastEpisode]    Script Date: 12/19/2021 8:06:28 PM ******/
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
/****** Object:  Table [dbo].[Podcasts]    Script Date: 12/19/2021 8:06:28 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 12/19/2021 8:06:28 PM ******/
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
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'5e56a2da-f5fa-4daa-8f60-06cddc41809e', 3, 35, NULL, N'https://images.radio.com/podcast/0b55943d3b.jpg', 0, N'Democrats outsmart Mitch McConnell on the debt limit but are still trying to solve their Joe Manchin problem, former Obama pollster Cornell Belcher offers his read on how to frame Republican extremism ahead of the midterms, and Fox News suffers a critical casualty in the War on Christmas. ', N'The War on Christmas Trees', N'cff6e697-f6e0-47b7-ba50-c8994cbdd97e')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'0a69b164-eb2d-447b-88cc-461a53b01f7d', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'At the center of it all was Shoko Asahara, an exceptionally savvy blind man, that fostered his cult from humble beginnings, offering training and workshops that would allow his students to gain great psychic powers and enlightenment', N'218 - The Aum Shinrikyo Death Cult, Part I: Mountain Wizards', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'c18346f5-172d-4782-9023-4882c603084e', 6, 30, NULL, N'https://media.wnyc.org/i/800/0/c/85/2021/10/Mixtape_EP1_Dakou_WK_4x3.png', 1, N'Cassette tapes trashed as scrap brought western rock music to China and created a cultural remix on the grandest possible scale.', N'Mixtape: Dakou', N'11dc6ef9-bcda-4384-ad54-62b079a1d823')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'cd2bd4a7-7c7d-4627-88cc-5116e6b05c1b', 6, 37, NULL, N'https://upload.wikimedia.org/wikipedia/en/f/f0/Dirty_John_Podcast_Logo.jpeg', 1, N'Debra Newell, an interior designer in Southern California, meets John Meehan on an over-50 dating site. His profile looks exciting: anesthesiologist, divorced, Christian. She falls in love fast. But her children dislike him and warn her that his stories don''t add up.', N'I - The Real Thing', N'6750d3aa-30a4-40a4-80e4-ebad62bbf1f0')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'4fc14904-4218-4670-b6cd-5d4cf5621037', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'When his prophecy of “harumageddon” didn’t come to fruition, Asahara took it upon himself to cause this catastrophe and ordered his young sapient followers to carry out the subway gas attack with much alacrity.', N'219 - The Aum Shinrikyo Death Cult, Part II: The Bitter Cookie', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'06f1bf28-1291-4c89-8c79-8f72f0683802', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'In 2018, Asahara and twelve other Aum cult members were executed by hanging. The cult continues to this day under the name Aleph.', N'221 - The Aum Shinrikyo Death Cult, Part IV: A Billionaire''s Testicles', N'6828e0ed-3684-4558-ba1a-7decb857eae8')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'a32e9016-1ce7-4461-82ed-9bac7dc59cc0', 6, 30, NULL, N'https://media.wnyc.org/i/800/0/c/85/2021/10/radiolab_mixtape_jackandbing-4-3-EpisodeImage.png', 1, N'Bing Crosby and some stolen Nazi technology won his audience back and changed media forever. ', N'Mixtape: Jack and Bing', N'11dc6ef9-bcda-4384-ad54-62b079a1d823')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'd43a6a82-6300-4e21-851b-a6cedf371195', 6, 30, NULL, N'https://media.wnyc.org/i/1860/1395/c/80/2021/11/Mixtape_EP5_Help_4x3.png', 1, N'Three stories of cassette tapes as peculiar helpers, carrying self-help, a village’s history and lost love.', N'Mixtape: Help?', N'11dc6ef9-bcda-4384-ad54-62b079a1d823')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'00a3537c-4b94-4635-9edb-b399c8633d0c', 6, 30, NULL, N'https://media.wnyc.org/i/1860/1395/c/80/2021/11/Mixtape_EP4_Cassetternet_4x3_2U639ap.png', 1, N'How the cassette tape created the internet.', N'Mixtape: Cassetternet', N'11dc6ef9-bcda-4384-ad54-62b079a1d823')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'552d7474-0dde-4c85-8800-cb0c2571d0db', 2, 5, NULL, N'https://i.scdn.co/image/1f7edbaed6a7457bd0251744a99493e99b1f5927', 0, N'1995. Tokyo. A doomsday-obsessed cult of manga nerds carried out a horrifying terror attack on the Tokyo subway system by releasing deadly sarin gas into the system.', N'220 - The Aum Shinrikyo Death Cult, Part III: The Soldiers of White Love', N'2e32ab72-0877-46a0-822e-147efd75b4ef')
INSERT [dbo].[Episodes] ([Id], [Type], [Genre], [Audio], [Image], [ExplicitContent], [Description], [Title], [PodcastId]) VALUES (N'9665e7d8-8fd5-480e-9049-d50516e4f312', 6, 30, NULL, N'https://media.wnyc.org/i/1860/1395/c/80/2021/11/Mixtape_EP3_Wandering_4x3_xFpJbja.png', 1, N'Many nights during the Vietnam war, if you listened closely, you’d swear you heard a ghost. Today, the story of that ghost and how it still haunts us today.', N'Mixtape: The Wandering Soul', N'11dc6ef9-bcda-4384-ad54-62b079a1d823')
GO
INSERT [dbo].[PlaylistEpisode] ([PlaylistId], [EpisodeId]) VALUES (N'f5403c67-a210-4402-a15b-3610084b878d', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[Playlists] ([Title], [UserId], [Type], [GenreId], [ExplicitContent], [Id], [EpisodeId]) VALUES (N'Bloody Funny', N'874545b3-f3c3-4081-ad34-330d3a6e15d6', N'2', 2, 0, N'f5403c67-a210-4402-a15b-3610084b878d', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[PodcastEpisode] ([Id], [PodcastId], [EpisodeId]) VALUES (N'b76436da-2ca7-4df9-a459-55f675f704de', N'36da0217-4858-4269-a370-9d49dc094414', N'0a69b164-eb2d-447b-88cc-461a53b01f7d')
GO
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'2e32ab72-0877-46a0-822e-147efd75b4ef', N'https://upload.wikimedia.org/wikipedia/en/2/2c/LastPod_logo.jpg', N'Last Podcast on the Left', 2, 6, CAST(89 AS Decimal(18, 0)), 675, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'760e85b0-ac6a-4249-91b8-288035016b5f', N'https://pyxis.nymag.com/v1/imgs/741/c47/f4b61fb6a3f29d799f58be559c5fcf79d1-crime-in-sports.2x.rsquare.w190.jpg', N'Crime In Sports', 3, 4, CAST(92 AS Decimal(18, 0)), 310, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'11dc6ef9-bcda-4384-ad54-62b079a1d823', N'https://i.ytimg.com/vi/aIMSDEyo2lQ/maxresdefault.jpg', N'Radiolab presents Mixtape', 6, 30, CAST(95 AS Decimal(18, 0)), 5, 1)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'bf9c2a73-90da-4c83-a017-975818c30723', N'https://www.omnycontent.com/d/clips/2fb3740d-3436-44af-8cc0-a91900716aa5/d60492a5-f0c9-443a-914b-ac2a017fffca/1dbfeda1-3cb0-47b9-9ec5-ac44005edbe1/image.jpg?t=1601271940&size=Large', N'The Teacher''s Pet', 7, 1, CAST(85 AS Decimal(18, 0)), 17, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'36da0217-4858-4269-a370-9d49dc094414', N'https://img.podcastone.com/images/new/joodkmjin/smalltownmurder_logo.jpg', N'Small Town Murder', 2, 4, CAST(90 AS Decimal(18, 0)), 294, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'cff6e697-f6e0-47b7-ba50-c8994cbdd97e', N'https://images.radio.com/podcast/0b55943d3b.jpg', N'Pod Save America', 3, 35, CAST(80 AS Decimal(18, 0)), 562, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'b657103f-7c74-411a-a977-ce9d420a03bc', N'https://teachinghub.as.ua.edu/wp-content/uploads/2016/10/serial-itunes-logo.png', N'Serial', 7, 1, CAST(99 AS Decimal(18, 0)), 32, 1)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'7bd4db79-702d-41a0-9a38-d55fccfefd18', N'https://images.squarespace-cdn.com/content/v1/577602e6e3df28df0015b9cd/1468994961635-X18CIUQMZ5CXXY793PH6/341710248.jpg?format=1000w', N'The Dollop', 5, 6, CAST(79 AS Decimal(18, 0)), 510, 0)
INSERT [dbo].[Podcasts] ([Id], [Image], [Title], [Type], [Genre], [ListenScore], [TotalEpisodes], [ExplicitContent]) VALUES (N'6750d3aa-30a4-40a4-80e4-ebad62bbf1f0', N'https://upload.wikimedia.org/wikipedia/en/f/f0/Dirty_John_Podcast_Logo.jpeg', N'Dirty John', 6, 37, CAST(86 AS Decimal(18, 0)), 16, 1)
GO
INSERT [dbo].[Users] ([FirebaseKey], [UserId], [FirstName], [LastName]) VALUES (N'8Nvdzli40kXG5RBZutkdgchrvpl1', N'874545b3-f3c3-4081-ad34-330d3a6e15d6', N'Holly', N'Parsons')
INSERT [dbo].[Users] ([FirebaseKey], [UserId], [FirstName], [LastName]) VALUES (N'Apz7wjxDGMcg5hi1PNJkoW8Tptk2', N'89ea5785-eb64-4f1b-8310-d8f0b3dd76b0', N'Holly', N'Test')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Playlists]    Script Date: 12/19/2021 8:06:28 PM ******/
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
