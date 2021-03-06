/****** Object:  Table [dbo].[Bonus]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonus](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[cat] [int] NOT NULL,
 CONSTRAINT [PK_Bonus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bonus_Cat]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonus_Cat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bonus_Cat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bonus_SubCat]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bonus_SubCat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bonus_SubCat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emlak]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emlak](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](250) NULL,
	[size] [decimal](18, 0) NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[location] [nvarchar](500) NULL,
	[sahib] [int] NOT NULL,
	[thumnail] [int] NULL,
 CONSTRAINT [PK_Emlak] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emlak_Muqavilesi]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emlak_Muqavilesi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kirayeci_id] [int] NOT NULL,
	[sahibkar_id] [int] NOT NULL,
	[muqavile_id] [int] NOT NULL,
	[emlak_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[chat] [int] NULL,
 CONSTRAINT [PK_Emlak_Muqavilesi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emlak_Photo]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emlak_Photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emlak_id] [int] NOT NULL,
	[photo_id] [int] NOT NULL,
 CONSTRAINT [PK_Emlak_Photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kirayeci]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kirayeci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NOT NULL,
	[balance] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Kirayeci] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kirayeci_Bonus]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kirayeci_Bonus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kirayeci_id] [int] NOT NULL,
	[bonus_id] [int] NOT NULL,
	[bonus] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Kirayeci_Bonus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](500) NOT NULL,
	[author] [int] NOT NULL,
	[qr] [int] NOT NULL,
	[muqavile] [int] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muqavile]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muqavile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Muqavile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sahibkar]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sahibkar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[balance] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Sahibkar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sahibkar_bonus]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sahibkar_bonus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sahibkar_id] [int] NOT NULL,
	[bonus_id] [int] NOT NULL,
	[bonus] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Sahibkar_bonus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bonus]  WITH CHECK ADD  CONSTRAINT [FK_Bonus_Bonus_SubCat] FOREIGN KEY([cat])
REFERENCES [dbo].[Bonus_SubCat] ([id])
GO
ALTER TABLE [dbo].[Bonus] CHECK CONSTRAINT [FK_Bonus_Bonus_SubCat]
GO
ALTER TABLE [dbo].[Bonus_SubCat]  WITH CHECK ADD  CONSTRAINT [FK_Bonus_SubCat_Bonus_Cat] FOREIGN KEY([parent])
REFERENCES [dbo].[Bonus_Cat] ([id])
GO
ALTER TABLE [dbo].[Bonus_SubCat] CHECK CONSTRAINT [FK_Bonus_SubCat_Bonus_Cat]
GO
ALTER TABLE [dbo].[Emlak]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Sahibkar] FOREIGN KEY([sahib])
REFERENCES [dbo].[Sahibkar] ([id])
GO
ALTER TABLE [dbo].[Emlak] CHECK CONSTRAINT [FK_Emlak_Sahibkar]
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Muqavilesi_Emlak] FOREIGN KEY([emlak_id])
REFERENCES [dbo].[Emlak] ([id])
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi] CHECK CONSTRAINT [FK_Emlak_Muqavilesi_Emlak]
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Muqavilesi_Kirayeci] FOREIGN KEY([kirayeci_id])
REFERENCES [dbo].[Kirayeci] ([id])
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi] CHECK CONSTRAINT [FK_Emlak_Muqavilesi_Kirayeci]
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Muqavilesi_Muqavile] FOREIGN KEY([muqavile_id])
REFERENCES [dbo].[Muqavile] ([id])
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi] CHECK CONSTRAINT [FK_Emlak_Muqavilesi_Muqavile]
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Muqavilesi_Sahibkar] FOREIGN KEY([sahibkar_id])
REFERENCES [dbo].[Sahibkar] ([id])
GO
ALTER TABLE [dbo].[Emlak_Muqavilesi] CHECK CONSTRAINT [FK_Emlak_Muqavilesi_Sahibkar]
GO
ALTER TABLE [dbo].[Emlak_Photo]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Photo_Emlak] FOREIGN KEY([emlak_id])
REFERENCES [dbo].[Emlak] ([id])
GO
ALTER TABLE [dbo].[Emlak_Photo] CHECK CONSTRAINT [FK_Emlak_Photo_Emlak]
GO
ALTER TABLE [dbo].[Emlak_Photo]  WITH CHECK ADD  CONSTRAINT [FK_Emlak_Photo_Photo] FOREIGN KEY([photo_id])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[Emlak_Photo] CHECK CONSTRAINT [FK_Emlak_Photo_Photo]
GO
ALTER TABLE [dbo].[Kirayeci_Bonus]  WITH CHECK ADD  CONSTRAINT [FK_Kirayeci_Bonus_Bonus] FOREIGN KEY([bonus_id])
REFERENCES [dbo].[Bonus] ([id])
GO
ALTER TABLE [dbo].[Kirayeci_Bonus] CHECK CONSTRAINT [FK_Kirayeci_Bonus_Bonus]
GO
ALTER TABLE [dbo].[Kirayeci_Bonus]  WITH CHECK ADD  CONSTRAINT [FK_Kirayeci_Bonus_Kirayeci] FOREIGN KEY([kirayeci_id])
REFERENCES [dbo].[Kirayeci] ([id])
GO
ALTER TABLE [dbo].[Kirayeci_Bonus] CHECK CONSTRAINT [FK_Kirayeci_Bonus_Kirayeci]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Emlak_Muqavilesi] FOREIGN KEY([muqavile])
REFERENCES [dbo].[Emlak_Muqavilesi] ([id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Emlak_Muqavilesi]
GO
ALTER TABLE [dbo].[Sahibkar_bonus]  WITH CHECK ADD  CONSTRAINT [FK_Sahibkar_bonus_Bonus] FOREIGN KEY([bonus_id])
REFERENCES [dbo].[Bonus] ([id])
GO
ALTER TABLE [dbo].[Sahibkar_bonus] CHECK CONSTRAINT [FK_Sahibkar_bonus_Bonus]
GO
ALTER TABLE [dbo].[Sahibkar_bonus]  WITH CHECK ADD  CONSTRAINT [FK_Sahibkar_bonus_Sahibkar] FOREIGN KEY([sahibkar_id])
REFERENCES [dbo].[Sahibkar] ([id])
GO
ALTER TABLE [dbo].[Sahibkar_bonus] CHECK CONSTRAINT [FK_Sahibkar_bonus_Sahibkar]
GO
USE [master]
GO
ALTER DATABASE [e-icare] SET  READ_WRITE 
GO
