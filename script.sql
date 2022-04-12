USE [daffodillDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/12/2022 1:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[English] [nvarchar](max) NULL,
	[WordLabel] [int] NOT NULL,
	[WordNote] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ViewCount] [int] NOT NULL,
	[LastViewedDate] [datetime2](7) NOT NULL,
	[Priority] [bit] NOT NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordsExamples]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordsExamples](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Example] [nvarchar](max) NULL,
	[ExampleNote] [nvarchar](max) NULL,
	[WordsMeaningsId] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_WordsExamples] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordsMeanings]    Script Date: 4/12/2022 1:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordsMeanings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Meaning] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[WordsId] [int] NOT NULL,
 CONSTRAINT [PK_WordsMeanings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220407214805_m1', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220408222420_m2', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220408223546_m3', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220408223626_m4', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220408225051_m44', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220409221138_m5', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220409221446_m6', N'3.1.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220409221733_m7', N'3.1.23')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d1b6913-71a1-4e0c-9ef2-b6baaec8ab8a', N'aaa@hotmail.com', N'AAA@HOTMAIL.COM', N'aaa@hotmail.com', N'AAA@HOTMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAYHmUGBG9vR6QTIIST7ewSBlAH8k4UpJEMun0G8KlSR3kiz9K+7WB1XCJK3sLXd3w==', N'ZPEF2H76REVX5LBGNHU6347GY4TLK5FA', N'1f4919fc-c728-4850-91f8-90f1d49306fd', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (1, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (2, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (3, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (4, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (5, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (6, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (7, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (8, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (9, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (10, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (11, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (12, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (13, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (14, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (15, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (16, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (17, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (18, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (19, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (20, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (21, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (22, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (23, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (24, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (25, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (26, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (27, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (28, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (29, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (30, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (31, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (32, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (33, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (34, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (35, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (36, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (37, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (38, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (39, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (40, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (41, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (42, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (43, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (44, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (45, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (46, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (47, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (48, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (49, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (50, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (51, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (52, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (53, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (54, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (55, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (56, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (57, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (58, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (59, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (60, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (61, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (62, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (63, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (64, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (65, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (66, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (67, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (68, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (69, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (70, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (71, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (72, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (73, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (74, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (75, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (76, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (77, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (78, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (79, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (80, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (81, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (82, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (83, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (84, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (85, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (86, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (87, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (88, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (89, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (90, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (91, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (92, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (93, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (94, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (95, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (96, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (97, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (98, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (99, N'asd')
GO
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (100, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (101, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (102, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (103, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (104, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (105, N'asd')
INSERT [dbo].[Products] ([Id], [ProductName]) VALUES (106, N'asd')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Words] ON 

INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (49, N'ragged', 0, NULL, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (50, N'emergence', 0, NULL, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 8, CAST(N'2022-04-12 00:58:46.2535958' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (51, N'advertised ', 0, NULL, CAST(N'2022-04-11 22:52:03.1254740' AS DateTime2), 11, CAST(N'2022-04-12 00:58:45.1782346' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (75, N'inquiry ', 0, N'ɪnˈkwaɪə.ri', CAST(N'2022-04-11 23:57:55.6742767' AS DateTime2), 15, CAST(N'2022-04-12 00:58:50.8371884' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (76, N'thwarted', 0, N'/θwɔːrt/', CAST(N'2022-04-12 00:01:42.1222974' AS DateTime2), 17, CAST(N'2022-04-12 00:58:49.2582782' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (77, N'presence ', 0, NULL, CAST(N'2022-04-12 00:07:58.0616787' AS DateTime2), 13, CAST(N'2022-04-12 00:58:50.4054871' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (78, N'intent', 0, N' /ɪnˈtent/', CAST(N'2022-04-12 00:56:58.0413062' AS DateTime2), 2, CAST(N'2022-04-12 00:58:51.5255297' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (79, N'insufficient', 0, N'/ˌɪn.səˈfɪʃ.ənt/', CAST(N'2022-04-12 01:01:30.9580984' AS DateTime2), 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (80, N'burdens ', 0, N'/ˈbɝː.dən/', CAST(N'2022-04-12 01:25:56.7548419' AS DateTime2), 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Words] ([Id], [English], [WordLabel], [WordNote], [CreatedDate], [ViewCount], [LastViewedDate], [Priority]) VALUES (81, N'distinguishes ', 0, NULL, CAST(N'2022-04-12 01:30:48.8355217' AS DateTime2), 0, CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Words] OFF
SET IDENTITY_INSERT [dbo].[WordsExamples] ON 

INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (9, N'the children were wearing dirty, ragged clothes', NULL, 4)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (10, N'two ragged children stood outside the station, begging for money', NULL, 5)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (11, N'China''s emergence as an economic power', NULL, 6)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (12, N'the emergence of a new strain of the HIV virus', NULL, 6)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (13, N'the country''s emergence from bankruptcy', NULL, 7)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (14, N'we adversited our car in the local newspaper', NULL, 8)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (15, N'her advertises his services on the company notice board', NULL, 8)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (16, N'i am going to advertise someone to clean my house', NULL, 8)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (17, N'there''s no harm in applying for other jobs, but if i were you i wouldn''t advertise the fact at work', NULL, 8)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (18, N'I''ve been making inquiries about / into the cost of a round-the-world-ticket', NULL, 9)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (19, N'inquiry into matter is pointless - no one will tell you anything', NULL, 9)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (20, N'We have received hundreds of calls from people making inquiries about availability of the product.', NULL, 9)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (21, N'a judicial inquiry', NULL, 10)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (22, N'Citizens have demanded a full inquiry into the goverment''s handling of the epidemic', NULL, 10)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (23, N'the company has received more than 1000 inquiries since the launched the insurance policy last month.', NULL, 10)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (24, N'our holiday plans were thwarted by the airline pilots'' strike', NULL, 11)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (25, N'she was overawed by the presence of so many people', NULL, 12)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (26, N'the presence of pollen in the atmosphere causes hay fever in some people', NULL, 12)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (27, N'he''s usually quite polite in my presence', NULL, 12)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (28, N'the document was signed in the presence of two witnesses', NULL, 12)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (29, N'his daughter''s presence seemed to fill her empty bedroom', NULL, 13)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (30, N'the united nations has maintained a presence in the region for some time.', NULL, 14)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (31, N'there was a strong police presence at the demonstration', NULL, 14)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (32, N'he stood there in the corner of the room, a dark, brooding presence', NULL, 14)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (33, N'she had an intent look on her face', NULL, 15)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (34, N'i''ve tried persuading her not to go but she''s intent on it', NULL, 15)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (35, N'he seems intent on upsetting everyone in the room', NULL, 15)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (36, N'i spent half life morning on the which wasn''t really my intent', NULL, 16)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (37, N'it was not his intent to hurt anyone', NULL, 16)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (38, N'she was charged with possessing weapons with intent to endanger life', NULL, 16)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (39, N'There was clearly no intent to cause harm, and the judge ruled that the injury was accidental.', NULL, 16)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (40, N'This indicates that this threat is being used and propagated with malicious intent', NULL, 16)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (41, N'there was insufficient money to fund the project', NULL, 18)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (42, N'there was insufficient evidence, so we had to find him not guilty', NULL, 18)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (43, N'Nevertheless, insufficient support was forthcoming and by the project had stalled.', NULL, 18)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (44, N'the little donkey struggled under its heavy burden', NULL, 19)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (45, N'the burden of responsibility', NULL, 20)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (46, N'my elderly mother worries that she''s a burden to me', NULL, 20)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (47, N'buying a house often places a large financial burden on young couples', NULL, 20)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (48, N'He''s colour-blind and can''t distinguish (the difference) between red and green easily.', NULL, 21)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (49, N'I sometimes have difficulty distinguishing Spanish from Portuguese.', NULL, 21)
INSERT [dbo].[WordsExamples] ([Id], [Example], [ExampleNote], [WordsMeaningsId]) VALUES (50, N'It''s important to distinguish between business and pleasure.', NULL, 21)
SET IDENTITY_INSERT [dbo].[WordsExamples] OFF
SET IDENTITY_INSERT [dbo].[WordsMeanings] ON 

INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (4, N'(of clothes) torn and not in good condition', NULL, 49)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (5, N'(of a person) untidy, dirty and wearing old torn clothes', NULL, 49)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (6, N'the fact of something becoming known or starting to exist:', NULL, 50)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (7, N'the fact of someone or something coming to the end of a difficult period or experience:', NULL, 50)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (8, N'to make something known generally or in public especially in order to sell it', NULL, 51)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (9, N'(the process of asking) a question', NULL, 75)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (10, N'an official process to discover the facts about something bad that has happened', NULL, 75)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (11, N'to stop something from happening or someone from doing something', NULL, 76)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (12, N'the fact that someone or something is in place', NULL, 77)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (13, N'a feeling that someone is still in a place although they are not there or are dead.', NULL, 77)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (14, N'a group of police or soldiers who are watching or controlling situation', NULL, 77)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (15, N'giving all your attention to something', NULL, 78)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (16, N'the fact that you want and plan to do something', NULL, 78)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (18, N'not enough', NULL, 79)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (19, N'a heavy load that you carry', NULL, 80)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (20, N'something difficylt or unpleasant that you have to deal with or worry about', NULL, 80)
INSERT [dbo].[WordsMeanings] ([Id], [Meaning], [Description], [WordsId]) VALUES (21, N'to notice or understand the difference between two things, or to make one person or thing seem different from another:', NULL, 81)
SET IDENTITY_INSERT [dbo].[WordsMeanings] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[WordsExamples]  WITH CHECK ADD  CONSTRAINT [FK_WordsExamples_WordsMeanings_WordsMeaningsId] FOREIGN KEY([WordsMeaningsId])
REFERENCES [dbo].[WordsMeanings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WordsExamples] CHECK CONSTRAINT [FK_WordsExamples_WordsMeanings_WordsMeaningsId]
GO
ALTER TABLE [dbo].[WordsMeanings]  WITH CHECK ADD  CONSTRAINT [FK_WordsMeanings_Words_WordsId] FOREIGN KEY([WordsId])
REFERENCES [dbo].[Words] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WordsMeanings] CHECK CONSTRAINT [FK_WordsMeanings_Words_WordsId]
GO
