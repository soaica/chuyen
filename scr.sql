USE [project]
GO
/****** Object:  Table [dbo].[Accommodations]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accommodations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name_acc] [nvarchar](max) NULL,
	[des_acc] [text] NULL,
	[thumbnail] [nvarchar](max) NULL,
	[price_acc] [smallmoney] NULL,
	[discount_acc] [decimal](5, 2) NULL,
	[quanity_acc] [tinyint] NULL,
	[address_acc] [text] NULL,
	[category] [nvarchar](max) NULL,
	[location] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
 CONSTRAINT [PK_Accommodations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment_Acc]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Acc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[acc_id] [int] NULL,
	[data] [text] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Comment_Acc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment_Tour]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Tour](
	[ID] [int] NOT NULL,
	[user_id] [int] NULL,
	[tour_id] [int] NULL,
	[data] [text] NULL,
	[status] [bit] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
 CONSTRAINT [PK_Comment_Tour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] NOT NULL,
	[fullname] [nvarchar](max) NULL,
	[mail] [nvarchar](max) NULL,
	[phone] [nchar](10) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name_tour] [text] NULL,
	[description] [text] NULL,
	[thumbnail] [nvarchar](max) NULL,
	[location] [nvarchar](50) NULL,
	[price_tour] [decimal](16, 4) NULL,
	[total_time] [nvarchar](50) NOT NULL,
	[category_tour] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[created_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](max) NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[status] [bit] NULL,
	[level_user] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([ID], [fullname], [mail], [phone], [user_id]) VALUES (0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Contact] ([ID], [fullname], [mail], [phone], [user_id]) VALUES (1, N'DucChuyen', N'chuyenkien798@gmail', N'04        ', NULL)
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (2, N'
ÐÊM 1: TP.H? CHÍ MINH - ÐÀ L?T', N'Bu?i T?i:
21h30: Xe và hu?ng d?n viên L? Hành K? Nguyên dón du khách t?i di?m h?n, kh?i hành tour du l?ch Ðà L?t 3 ngày 3 dêm . Quý khách ngh? dêm trên xe.GÀY 01: ÐÀ L?T – NÚI LANGBIANG – N?C THANG THIÊN ÐU?NG

Bu?i Sáng:
06h00: Ð?n Ðà L?t quý khách v? nhà hàng dùng di?m tâm sáng buffet.
07h30: Xe s? dua quý khách d?n v?i nhà th? Domaine de Marie d?c dáo v?i nét ki?n trúc Á – Âu, ng?m m?t góc thành ph? hoa trên d?i Mai Anh. Tham quan mua s?m t?i c?a hàng d? len du?c làm t? các tr? em m? côi dang h?c t?p và sinh s?ng t?i Nhà Th? .
09h00: Ðoàn d?n núi Langbiang, quý khách tham quan nhà th? G?, làng dân t?c, chinh ph?c d?nh Langbiang cao 2.169m, du khách có th? ng?m toàn c?nh Thác Anknoet, h? Dankia, su?i Vàng - su?i B?c t? trên d?nh Langbiang (t? túc xe Jeep). Noi dây t?ng luu d?u chân Bác si Yersin trong hành trình khám phá Cao Nguyên Lâm Viên.
10h30: Ðoàn d?ng chân Thung Lung Gió - Tham quan Vu?n Dâu Berry là noi tr?ng dâu s?ch cùng các lo?i nông s?n nhu Cà chua, b?p c?i,... Ðoàn ghé thu?ng th?c trà atiso mi?n phí t?i co s? d?a phuong.
Bu?i Trua:
12h00: Xe dua doàn v? nhà hàng dùng com trua.
13h00: Quý khách nh?n phòng khách s?n ngh? ngoi.
Bu?i Chi?u: 
14h30: Xe dua quý khách tham quan Ga Ðà L?t – m?t trong nh?ng nhà ga c? nh?t Vi?t Nam, quý khách cùng ch?p ?nh luu ni?m v?i Ð?u Xe L?a ch?y b?ng hoi nu?c quý hi?m, thu?ng th?c cafe Gare h?o h?ng. Ngoài ra, doàn còn có th? tham gia chuong trình du ngo?n b?ng xe l?a, ng?m c?nh thanh bình vùng ngo?i ô Ðà L?t (chi phí cá nhân).
15h30: Ðoàn ti?p t?c tham quan Cánh Ð?ng Hoa C?m Tú C?u r?ng hon 3ha, du khách ngoài vi?c du?c chìm d?m trong vuong qu?c hoa C?m Tú C?u bao la còn có th? check in v?i công trình N?c Thang Thiên Ðu?ng n?i ti?ng.
16h30: Quý khách vi?ng chùa Linh Phu?c (còn g?i là chùa Ve Chai) m?t công trình ki?n trúc kh?m sành d?c s?c c?a thành ph? Ðà L?t, chiêm ngu?ng tu?ng R?ng dài 49m, du?c k?t t? 12.000 v? chai bia, linh tháp Ð?i h?ng chung cao 7 t?ng, tu?ng M? Quan Âm kh?ng l? du?c k?t t? 3 t?n hoa b?t t?…
Bu?i T?i:
18h00: Quý khách dùng com t?i. D?o ph?, hòa mình vào không khí se l?nh c?a cao nguyên Lâm Viên.', NULL, N'Hanoi', CAST(14000.0000 AS Decimal(16, 4)), N'4ngay 2 dem', N'Bien', 1, CAST(N'1753-01-01T00:00:00.000' AS DateTime), CAST(N'1753-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (3, N'
ÐÊM 1: TP.H? CHÍ MINH - ÐÀ L?T', N'Bu?i T?i:
21h30: Xe và hu?ng d?n viên L? Hành K? Nguyên dón du khách t?i di?m h?n, kh?i hành tour du l?ch Ðà L?t 3 ngày 3 dêm . Quý khách ngh? dêm trên xe.GÀY 01: ÐÀ L?T – NÚI LANGBIANG – N?C THANG THIÊN ÐU?NG

Bu?i Sáng:
06h00: Ð?n Ðà L?t quý khách v? nhà hàng dùng di?m tâm sáng buffet.
07h30: Xe s? dua quý khách d?n v?i nhà th? Domaine de Marie d?c dáo v?i nét ki?n trúc Á – Âu, ng?m m?t góc thành ph? hoa trên d?i Mai Anh. Tham quan mua s?m t?i c?a hàng d? len du?c làm t? các tr? em m? côi dang h?c t?p và sinh s?ng t?i Nhà Th? .
09h00: Ðoàn d?n núi Langbiang, quý khách tham quan nhà th? G?, làng dân t?c, chinh ph?c d?nh Langbiang cao 2.169m, du khách có th? ng?m toàn c?nh Thác Anknoet, h? Dankia, su?i Vàng - su?i B?c t? trên d?nh Langbiang (t? túc xe Jeep). Noi dây t?ng luu d?u chân Bác si Yersin trong hành trình khám phá Cao Nguyên Lâm Viên.
10h30: Ðoàn d?ng chân Thung Lung Gió - Tham quan Vu?n Dâu Berry là noi tr?ng dâu s?ch cùng các lo?i nông s?n nhu Cà chua, b?p c?i,... Ðoàn ghé thu?ng th?c trà atiso mi?n phí t?i co s? d?a phuong.
Bu?i Trua:
12h00: Xe dua doàn v? nhà hàng dùng com trua.
13h00: Quý khách nh?n phòng khách s?n ngh? ngoi.
Bu?i Chi?u: 
14h30: Xe dua quý khách tham quan Ga Ðà L?t – m?t trong nh?ng nhà ga c? nh?t Vi?t Nam, quý khách cùng ch?p ?nh luu ni?m v?i Ð?u Xe L?a ch?y b?ng hoi nu?c quý hi?m, thu?ng th?c cafe Gare h?o h?ng. Ngoài ra, doàn còn có th? tham gia chuong trình du ngo?n b?ng xe l?a, ng?m c?nh thanh bình vùng ngo?i ô Ðà L?t (chi phí cá nhân).
15h30: Ðoàn ti?p t?c tham quan Cánh Ð?ng Hoa C?m Tú C?u r?ng hon 3ha, du khách ngoài vi?c du?c chìm d?m trong vuong qu?c hoa C?m Tú C?u bao la còn có th? check in v?i công trình N?c Thang Thiên Ðu?ng n?i ti?ng.
16h30: Quý khách vi?ng chùa Linh Phu?c (còn g?i là chùa Ve Chai) m?t công trình ki?n trúc kh?m sành d?c s?c c?a thành ph? Ðà L?t, chiêm ngu?ng tu?ng R?ng dài 49m, du?c k?t t? 12.000 v? chai bia, linh tháp Ð?i h?ng chung cao 7 t?ng, tu?ng M? Quan Âm kh?ng l? du?c k?t t? 3 t?n hoa b?t t?…
Bu?i T?i:
18h00: Quý khách dùng com t?i. D?o ph?, hòa mình vào không khí se l?nh c?a cao nguyên Lâm Viên.', NULL, N'Hanoi', CAST(14000.0000 AS Decimal(16, 4)), N'4ngay 2 dem', N'Bien', 1, CAST(N'2019-10-28T16:50:57.253' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (4, N'
ÐÊM 1: TP.H? CHÍ MINH - ÐÀ L?T', N'Bu?i T?i:
21h30: Xe và hu?ng d?n viên L? Hành K? Nguyên dón du khách t?i di?m h?n, kh?i hành tour du l?ch Ðà L?t 3 ngày 3 dêm . Quý khách ngh? dêm trên xe.GÀY 01: ÐÀ L?T – NÚI LANGBIANG – N?C THANG THIÊN ÐU?NG

Bu?i Sáng:
06h00: Ð?n Ðà L?t quý khách v? nhà hàng dùng di?m tâm sáng buffet.
07h30: Xe s? dua quý khách d?n v?i nhà th? Domaine de Marie d?c dáo v?i nét ki?n trúc Á – Âu, ng?m m?t góc thành ph? hoa trên d?i Mai Anh. Tham quan mua s?m t?i c?a hàng d? len du?c làm t? các tr? em m? côi dang h?c t?p và sinh s?ng t?i Nhà Th? .
09h00: Ðoàn d?n núi Langbiang, quý khách tham quan nhà th? G?, làng dân t?c, chinh ph?c d?nh Langbiang cao 2.169m, du khách có th? ng?m toàn c?nh Thác Anknoet, h? Dankia, su?i Vàng - su?i B?c t? trên d?nh Langbiang (t? túc xe Jeep). Noi dây t?ng luu d?u chân Bác si Yersin trong hành trình khám phá Cao Nguyên Lâm Viên.
10h30: Ðoàn d?ng chân Thung Lung Gió - Tham quan Vu?n Dâu Berry là noi tr?ng dâu s?ch cùng các lo?i nông s?n nhu Cà chua, b?p c?i,... Ðoàn ghé thu?ng th?c trà atiso mi?n phí t?i co s? d?a phuong.
Bu?i Trua:
12h00: Xe dua doàn v? nhà hàng dùng com trua.
13h00: Quý khách nh?n phòng khách s?n ngh? ngoi.
Bu?i Chi?u: 
14h30: Xe dua quý khách tham quan Ga Ðà L?t – m?t trong nh?ng nhà ga c? nh?t Vi?t Nam, quý khách cùng ch?p ?nh luu ni?m v?i Ð?u Xe L?a ch?y b?ng hoi nu?c quý hi?m, thu?ng th?c cafe Gare h?o h?ng. Ngoài ra, doàn còn có th? tham gia chuong trình du ngo?n b?ng xe l?a, ng?m c?nh thanh bình vùng ngo?i ô Ðà L?t (chi phí cá nhân).
15h30: Ðoàn ti?p t?c tham quan Cánh Ð?ng Hoa C?m Tú C?u r?ng hon 3ha, du khách ngoài vi?c du?c chìm d?m trong vuong qu?c hoa C?m Tú C?u bao la còn có th? check in v?i công trình N?c Thang Thiên Ðu?ng n?i ti?ng.
16h30: Quý khách vi?ng chùa Linh Phu?c (còn g?i là chùa Ve Chai) m?t công trình ki?n trúc kh?m sành d?c s?c c?a thành ph? Ðà L?t, chiêm ngu?ng tu?ng R?ng dài 49m, du?c k?t t? 12.000 v? chai bia, linh tháp Ð?i h?ng chung cao 7 t?ng, tu?ng M? Quan Âm kh?ng l? du?c k?t t? 3 t?n hoa b?t t?…
Bu?i T?i:
18h00: Quý khách dùng com t?i. D?o ph?, hòa mình vào không khí se l?nh c?a cao nguyên Lâm Viên.', NULL, N'Hanoi', CAST(14000.0000 AS Decimal(16, 4)), N'4ngay 2 dem', N'Bien', 1, CAST(N'2019-10-28T16:52:40.470' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (5, N'
ÐÊM 1: TP.H? CHÍ MINH - ÐÀ L?T', N'Bu?i T?i:
21h30: Xe và hu?ng d?n viên L? Hành K? Nguyên dón du khách t?i di?m h?n, kh?i hành tour du l?ch Ðà L?t 3 ngày 3 dêm . Quý khách ngh? dêm trên xe.GÀY 01: ÐÀ L?T – NÚI LANGBIANG – N?C THANG THIÊN ÐU?NG

Bu?i Sáng:
06h00: Ð?n Ðà L?t quý khách v? nhà hàng dùng di?m tâm sáng buffet.
07h30: Xe s? dua quý khách d?n v?i nhà th? Domaine de Marie d?c dáo v?i nét ki?n trúc Á – Âu, ng?m m?t góc thành ph? hoa trên d?i Mai Anh. Tham quan mua s?m t?i c?a hàng d? len du?c làm t? các tr? em m? côi dang h?c t?p và sinh s?ng t?i Nhà Th? .
09h00: Ðoàn d?n núi Langbiang, quý khách tham quan nhà th? G?, làng dân t?c, chinh ph?c d?nh Langbiang cao 2.169m, du khách có th? ng?m toàn c?nh Thác Anknoet, h? Dankia, su?i Vàng - su?i B?c t? trên d?nh Langbiang (t? túc xe Jeep). Noi dây t?ng luu d?u chân Bác si Yersin trong hành trình khám phá Cao Nguyên Lâm Viên.
10h30: Ðoàn d?ng chân Thung Lung Gió - Tham quan Vu?n Dâu Berry là noi tr?ng dâu s?ch cùng các lo?i nông s?n nhu Cà chua, b?p c?i,... Ðoàn ghé thu?ng th?c trà atiso mi?n phí t?i co s? d?a phuong.
Bu?i Trua:
12h00: Xe dua doàn ', NULL, N'Hanoi', CAST(178.0000 AS Decimal(16, 4)), N'4ngay 2 dem', N'Nui', 1, CAST(N'2019-10-28T16:55:00.963' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (9, N'Khám phá thiên nhiên tuoi d?p ? Gò Gang – TP. Vung Tàu', N'T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*?T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*', NULL, N'dannang', CAST(140000.0000 AS Decimal(16, 4)), N'1tuan', N'2', NULL, CAST(N'2019-10-31T14:58:32.223' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (10, N'asd', N'asd', N'', N'asd', CAST(14000000.0000 AS Decimal(16, 4)), N'', N'', 0, CAST(N'2019-10-31T15:09:36.643' AS DateTime), CAST(N'2019-10-31T15:09:36.643' AS DateTime))
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (11, N'Khám phá thiên nhiên tuoi d?p ? Gò Gang – TP. Vung Tàu', N'T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*?T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*', NULL, N'dannang', CAST(144400.0000 AS Decimal(16, 4)), N'1tuan', N'2', NULL, CAST(N'2019-10-31T15:42:42.397' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (12, N'Khám phá thiên nhiên tuoi d?p ? Gò Gang – TP. Vung Tàu', N'T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*?T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*', NULL, N'dannang', CAST(144400.0000 AS Decimal(16, 4)), N'1tuan', N'2', NULL, CAST(N'2019-11-01T10:02:52.283' AS DateTime), NULL)
INSERT [dbo].[Tour] ([ID], [name_tour], [description], [thumbnail], [location], [price_tour], [total_time], [category_tour], [status], [created_time], [update_time]) VALUES (13, N'Khám phá thiên nhiên tuoi d?p ? Gò Gang – TP. Vung Tàu', N'T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*?T? do tham quan và khám phá Phu?ng Hoàng C? Tr?n v?i các món an d?a phuong, t? do ch?p hình ho?c ng?i u?ng cà phê, nghe nh?ng b?n nh?c tr? tình, ng?m c?nh th? tr?n c? d?c sông Ðà Giang và c?m nh?n cu?c s?ng t?i noi dây. B?n cung có th? tr?i nghi?m trên m?t chi?c thuy?n nh? d? th? l?ng l? trôi d?c theo sông, ng?m nhìn cu?c s?ng c?a ngu?i dân hai bên b?, chui qua nh?ng cây c?u b?n s? th?y r?t thú v? . Sau b?a t?i Quý khách t? do khám phá v? d?p huy?n bí và lung linh nhu Phong Hoa c?a Phu?ng Hoàng v? dêm. Ngh? dêm t?i khách s?n tiêu chu?n 4*', NULL, N'dannang', CAST(144400.0000 AS Decimal(16, 4)), N'1tuan', N'2', NULL, CAST(N'2019-11-01T10:11:49.830' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Tour] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (1, N'Nguyễn Đức Chuyên', N'ducchuyen', N'25f9e794323b453885f5181f1b624d0b', NULL, NULL, 1, N'admin')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (2, N'Trần Văn Bảo', N'bao', N'9f14579cd06fbbd2a877765f51431f70', NULL, NULL, 1, N'user')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (3, N'Chuyên', N'ducchuyene', N'a53797d7695c239927db51e2788311d3', NULL, NULL, 1, N'user')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (17, N'Nguyễn Thế An', N'duclong', N'F5BB0C8DE146C67B44BABBF4E6584CC0', CAST(N'2019-10-31T13:34:53.587' AS DateTime), NULL, 1, N'user      ')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (18, N'Nguyễn Thị Minh', N'Minhbao', N'F5BB0C8DE146C67B44BABBF4E6584CC0', CAST(N'2019-10-31T13:39:56.803' AS DateTime), NULL, 1, N'user      ')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (19, N'Trần Minh Tuấn', N'tuanan', N'E46DF8F2DEA278B206741EE8BC73B600', CAST(N'2019-10-31T13:42:14.980' AS DateTime), NULL, 1, N'user      ')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (20, N'Hải yến', N'haiyen', N'9F14579CD06FBBD2A877765F51431F70', CAST(N'2019-10-31T13:44:27.103' AS DateTime), NULL, 1, N'user      ')
INSERT [dbo].[User] ([ID], [fullname], [username], [password], [created], [updated], [status], [level_user]) VALUES (21, N'Đào bá Linh', N'haiyend', N'225C26612CEDE4A0774D93C086C49835', CAST(N'2019-10-31T14:44:19.723' AS DateTime), NULL, 1, N'user      ')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Comment_Acc]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Acc_Accommodations] FOREIGN KEY([acc_id])
REFERENCES [dbo].[Accommodations] ([ID])
GO
ALTER TABLE [dbo].[Comment_Acc] CHECK CONSTRAINT [FK_Comment_Acc_Accommodations]
GO
ALTER TABLE [dbo].[Comment_Acc]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Acc_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Comment_Acc] CHECK CONSTRAINT [FK_Comment_Acc_User]
GO
ALTER TABLE [dbo].[Comment_Tour]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour_Tour] FOREIGN KEY([tour_id])
REFERENCES [dbo].[Tour] ([ID])
GO
ALTER TABLE [dbo].[Comment_Tour] CHECK CONSTRAINT [FK_Comment_Tour_Tour]
GO
ALTER TABLE [dbo].[Comment_Tour]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Tour_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Comment_Tour] CHECK CONSTRAINT [FK_Comment_Tour_User]
GO
/****** Object:  StoredProcedure [dbo].[DangnhapUser]    Script Date: 11/1/2019 10:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[DangnhapUser]
@username nvarchar(MAX) Out,
@password nvarchar(MAX) Out
As
begin
 SELECT TOP (1000) [ID]
      ,[fullname]
      ,[username]
      ,[password]
      ,[created]
      ,[updated]
      ,[status]
      ,[level_user]
  FROM [project].[dbo].[User]
  where [project].[dbo].[User].[username]=@username and [project].[dbo].[User].[password]=@password
end
GO
