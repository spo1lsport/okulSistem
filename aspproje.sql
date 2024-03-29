USE [Okul]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8.12.2022 19:34:36 ******/
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
/****** Object:  Table [dbo].[Ders]    Script Date: 8.12.2022 19:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](max) NOT NULL,
	[Kredisi] [int] NOT NULL,
	[OkulYonetimId] [int] NOT NULL,
 CONSTRAINT [PK_Ders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 8.12.2022 19:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NOT NULL,
	[KayitTarih] [datetime2](7) NOT NULL,
	[OgrenciNo] [int] NOT NULL,
	[DTarih] [datetime2](7) NOT NULL,
	[Bolum] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciDers]    Script Date: 8.12.2022 19:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciDers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DersId] [int] NOT NULL,
	[OgrenciId] [int] NOT NULL,
 CONSTRAINT [PK_OgrenciDers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OkulYonetim]    Script Date: 8.12.2022 19:34:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OkulYonetim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NOT NULL,
	[Gorevi] [nvarchar](max) NOT NULL,
	[YonetimTip] [int] NOT NULL,
 CONSTRAINT [PK_OkulYonetim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221130142537_Reset', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Ders] ON 

INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (8, N'Türkçe', 12, 12)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (10, N'Matematik', 6, 11)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (12, N'Fizik', 6, 13)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (13, N'Biyoloji', 6, 14)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (14, N'OOP', 8, 15)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (15, N'Python', 4, 15)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (16, N'Web Programlama', 6, 15)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (17, N'C#', 4, 15)
INSERT [dbo].[Ders] ([Id], [Ad], [Kredisi], [OkulYonetimId]) VALUES (18, N'Mantık', 2, 10)
SET IDENTITY_INSERT [dbo].[Ders] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 

INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (3, N'Furkan Cengiz', CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), 144, CAST(N'2000-12-01T00:00:00.0000000' AS DateTime2), N'Matematik Öğretmenliği')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (4, N'Kerem Vatan', CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2), 255, CAST(N'2000-05-02T00:00:00.0000000' AS DateTime2), N'Biyokimya')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (5, N'Süleyman Ozer', CAST(N'2022-12-08T16:57:24.3270000' AS DateTime2), 124, CAST(N'1998-07-25T00:00:00.0000000' AS DateTime2), N'Bilgisayar Programcılığı')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (6, N'Fatma Aktaş', CAST(N'2019-09-15T00:00:00.0000000' AS DateTime2), 111, CAST(N'2001-12-02T00:00:00.0000000' AS DateTime2), N'Deniz Bilimleri')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (7, N'Ebru Çakır', CAST(N'2019-02-22T00:00:00.0000000' AS DateTime2), 412, CAST(N'2001-12-02T00:00:00.0000000' AS DateTime2), N'Havacılık')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (8, N'Yaren Yıldız', CAST(N'2019-11-09T00:00:00.0000000' AS DateTime2), 123, CAST(N'2000-12-25T00:00:00.0000000' AS DateTime2), N'Biyokimya')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (10, N'Abdullah Yüksel', CAST(N'2020-02-01T00:00:00.0000000' AS DateTime2), 515, CAST(N'2000-09-12T00:00:00.0000000' AS DateTime2), N'Biyokimya')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (11, N'Emre Koç', CAST(N'2020-11-12T00:00:00.0000000' AS DateTime2), 515, CAST(N'2002-02-14T00:00:00.0000000' AS DateTime2), N'Havacılık')
INSERT [dbo].[Ogrenci] ([Id], [AdSoyad], [KayitTarih], [OgrenciNo], [DTarih], [Bolum]) VALUES (12, N'Ömer Bozkurt', CAST(N'2022-05-24T00:00:00.0000000' AS DateTime2), 873, CAST(N'2022-05-24T00:00:00.0000000' AS DateTime2), N'Bilgisayar ProgramcılığıL')
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[OgrenciDers] ON 

INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (10, 8, 3)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (11, 10, 3)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (12, 18, 3)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (13, 14, 4)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (14, 13, 4)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (15, 12, 4)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (16, 14, 10)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (17, 8, 10)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (18, 18, 10)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (19, 14, 2)
INSERT [dbo].[OgrenciDers] ([Id], [DersId], [OgrenciId]) VALUES (20, 12, 9)
SET IDENTITY_INSERT [dbo].[OgrenciDers] OFF
GO
SET IDENTITY_INSERT [dbo].[OkulYonetim] ON 

INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (10, N'Fevzi Uzun', N'Matematik', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (11, N'Süleyman Özer', N'Matematik', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (12, N'Barış Tavşan', N'Türkçe', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (13, N'Altay Yılmaz', N'Fizik', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (14, N'Muhammet Akan', N'Biyoloji', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (15, N'Yaren Keski·n', N'Yazılım', 12)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (16, N'Sinem Polat', N'Dekan', 11)
INSERT [dbo].[OkulYonetim] ([Id], [AdSoyad], [Gorevi], [YonetimTip]) VALUES (18, N'Batuhan Karadeniz', N'Öğrenci İşleri', 13)
SET IDENTITY_INSERT [dbo].[OkulYonetim] OFF
GO
