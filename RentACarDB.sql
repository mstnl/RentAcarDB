USE [RentACarDB]
GO
/****** Object:  Table [dbo].[Araclar]    Script Date: 9.06.2024 10:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araclar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Tipi] [nvarchar](50) NULL,
	[Resim] [nvarchar](255) NULL,
	[VitesTuru] [nvarchar](20) NULL,
	[YakitTuru] [nvarchar](20) NULL,
	[GunlukKiralamaUcreti] [decimal](18, 2) NULL,
	[KisiSayisi] [int] NULL,
	[KapiSayisi] [int] NULL,
	[Klima] [bit] NULL,
	[Plaka] [nvarchar](50) NULL,
	[ModelYili] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 9.06.2024 10:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](255) NULL,
	[Eposta] [nvarchar](100) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[AdminMi] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyonlar]    Script Date: 9.06.2024 10:56:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyonlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[AracId] [int] NULL,
	[BaslangicTarihi] [datetime] NULL,
	[BitisTarihi] [datetime] NULL,
	[OnayDurumu] [bit] NULL,
	[ToplamUcret] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Araclar] ON 

INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (1, N'Toyota', N'Corolla', N'Binek', N'resim1.jpg', N'Otomatik', N'Benzin', CAST(100.00 AS Decimal(18, 2)), 5, 4, 1, N'06AA001', 2020)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (2, N'Honda', N'Civic', N'Binek', N'resim2.jpg', N'Manuel', N'Benzin', CAST(90.00 AS Decimal(18, 2)), 5, 4, 0, N'07BB002', 2021)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (3, N'Ford', N'Focus', N'Binek', N'resim3.jpg', N'Otomatik', N'Dizel', CAST(110.00 AS Decimal(18, 2)), 5, 4, 1, N'05KK002', 2022)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (4, N'BMW', N'X5', N'SUV', N'resim4.jpg', N'Otomatik', N'Dizel', CAST(150.00 AS Decimal(18, 2)), 5, 4, 1, N'11PP002', 2023)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (5, N'Mercedes', N'A180', N'Binek', N'resim5.jpg', N'Otomatik', N'Benzin', CAST(120.00 AS Decimal(18, 2)), 5, 4, 1, N'08HH555', 2024)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (6, N'Audi', N'A3', N'Binek', N'resim6.jpg', N'Otomatik', N'Dizel', CAST(130.00 AS Decimal(18, 2)), 5, 4, 1, N'06SS023', 2019)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (7, N'Volkswagen', N'Golf', N'Binek', N'resim7.jpg', N'Manuel', N'Benzin', CAST(95.00 AS Decimal(18, 2)), 5, 4, 0, N'05TT888', 2018)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (8, N'Nissan', N'Qashqai', N'SUV', N'resim8.jpg', N'Otomatik', N'Dizel', CAST(140.00 AS Decimal(18, 2)), 5, 4, 1, N'02RR236', 2017)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (9, N'Hyundai', N'Elantra', N'Binek', N'resim9.jpg', N'Manuel', N'Benzin', CAST(85.00 AS Decimal(18, 2)), 5, 4, 1, N'55AZ223', 2020)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (10, N'Kia', N'Sportage', N'SUV', N'resim10.jpg', N'Otomatik', N'Dizel', CAST(145.00 AS Decimal(18, 2)), 5, 4, 1, N'06UY456', 2021)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (12, N'qqqq', N'string', N'string', N'string', N'string', N'string', CAST(0.00 AS Decimal(18, 2)), 0, 0, 1, N'string', 0)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (13, N'Kia', N'Kia', N'Kia', N'Kia', N'Otomatik', N'Dizel', CAST(111.00 AS Decimal(18, 2)), 1, 2, 1, N'11rr456', 2021)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (14, N'string', N'string', N'string', N'string', N'string', N'string', CAST(0.00 AS Decimal(18, 2)), 0, 0, 1, N'string', 0)
INSERT [dbo].[Araclar] ([id], [Marka], [Model], [Tipi], [Resim], [VitesTuru], [YakitTuru], [GunlukKiralamaUcreti], [KisiSayisi], [KapiSayisi], [Klima], [Plaka], [ModelYili]) VALUES (15, N'deneme', N'string', N'string', N'string', N'string', N'string', CAST(0.00 AS Decimal(18, 2)), 0, 0, 1, N'string', 0)
SET IDENTITY_INSERT [dbo].[Araclar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [Eposta], [Ad], [Soyad], [AdminMi]) VALUES (1, N'admin', N'admin123', N'admin@rentacar.com', N'Admin', N'User', 1)
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [Eposta], [Ad], [Soyad], [AdminMi]) VALUES (2, N'user1', N'user123', N'user1@rentacar.com', N'John', N'Doe', 0)
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [Eposta], [Ad], [Soyad], [AdminMi]) VALUES (3, N'user2', N'user123', N'user2@rentacar.com', N'Jane', N'Doe', 0)
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [Sifre], [Eposta], [Ad], [Soyad], [AdminMi]) VALUES (6, N'veli', N'string', N'string', N'string', N'string', 1)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[Rezervasyonlar] ON 

INSERT [dbo].[Rezervasyonlar] ([Id], [KullaniciId], [AracId], [BaslangicTarihi], [BitisTarihi], [OnayDurumu], [ToplamUcret]) VALUES (1, 2, 3, CAST(N'2022-10-11T00:00:00.000' AS DateTime), CAST(N'2022-10-20T00:00:00.000' AS DateTime), 1, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[Rezervasyonlar] ([Id], [KullaniciId], [AracId], [BaslangicTarihi], [BitisTarihi], [OnayDurumu], [ToplamUcret]) VALUES (2, 3, 5, CAST(N'2023-09-09T00:00:00.000' AS DateTime), CAST(N'2023-09-20T00:00:00.000' AS DateTime), 1, CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[Rezervasyonlar] ([Id], [KullaniciId], [AracId], [BaslangicTarihi], [BitisTarihi], [OnayDurumu], [ToplamUcret]) VALUES (3, 2, 9, CAST(N'2022-08-08T00:00:00.000' AS DateTime), CAST(N'2022-08-30T00:00:00.000' AS DateTime), 1, CAST(700.00 AS Decimal(18, 2)))
INSERT [dbo].[Rezervasyonlar] ([Id], [KullaniciId], [AracId], [BaslangicTarihi], [BitisTarihi], [OnayDurumu], [ToplamUcret]) VALUES (4, 3, 4, CAST(N'2022-07-07T00:00:00.000' AS DateTime), CAST(N'2022-08-15T00:00:00.000' AS DateTime), 1, CAST(800.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Rezervasyonlar] OFF
GO
ALTER TABLE [dbo].[Rezervasyonlar]  WITH CHECK ADD FOREIGN KEY([AracId])
REFERENCES [dbo].[Araclar] ([id])
GO
ALTER TABLE [dbo].[Rezervasyonlar]  WITH CHECK ADD FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanicilar] ([Id])
GO
