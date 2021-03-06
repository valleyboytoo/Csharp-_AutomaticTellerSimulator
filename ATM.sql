USE [master]
GO
CREATE DATABASE [ATM]
GO
USE [ATM]
GO
CREATE TABLE [dbo].[Accounts](
	[AccountNumber] [nvarchar](6) NOT NULL,
	[Type] [nvarchar](1) NULL,
	[CustomerID] [nvarchar](5) NULL,
	[Amount] [decimal](15, 2) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2019-07-11 14:08:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'10001', N'C', N'D001', CAST(457.98 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'10005', N'C', N'J001', CAST(7210.00 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'10011', N'C', N'S001', CAST(10657.84 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'10021', N'C', N'C001', CAST(1027.63 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'10031', N'C', N'C002', CAST(4.10 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'20001', N'S', N'C002', CAST(54.45 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'20008', N'S', N'J001', CAST(35.00 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'20030', N'S', N'D001', CAST(21.53 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'20034', N'S', N'S001', CAST(1083.00 AS Decimal(15, 2)))
INSERT [dbo].[Accounts] ([AccountNumber], [Type], [CustomerID], [Amount]) VALUES (N'20101', N'S', N'C001', CAST(790.00 AS Decimal(15, 2)))
INSERT [dbo].[Customers] ([CustomerID], [Name]) VALUES (N'C001', N'Jerry Cann')
INSERT [dbo].[Customers] ([CustomerID], [Name]) VALUES (N'C002', N'Eric Clapton')
INSERT [dbo].[Customers] ([CustomerID], [Name]) VALUES (N'D001', N'Korben Dallas')
INSERT [dbo].[Customers] ([CustomerID], [Name]) VALUES (N'J001', N'Elton John')
INSERT [dbo].[Customers] ([CustomerID], [Name]) VALUES (N'S001', N'Carlos Santana')

GO

