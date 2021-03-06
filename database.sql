USE [MyOnlineQuiz]
GO
/****** Object:  Table [dbo].[quiz]    Script Date: 7/19/2021 12:04:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[option1] [nvarchar](max) NOT NULL,
	[option2] [nvarchar](max) NOT NULL,
	[option3] [nvarchar](max) NOT NULL,
	[option4] [nvarchar](max) NOT NULL,
	[answer] [varchar](12) NOT NULL,
	[created_date] [date] NOT NULL,
	[user_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/19/2021 12:04:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[role] [int] NOT NULL,
	[createdDate] [date] NOT NULL,
	[email] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quiz] ON 

INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4077, N'What your name?', N'Michel', N'Linda', N'Elsa', N'Batman', N'4', CAST(N'2021-07-14' AS Date), 2006)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4054, N'In case of Large Systems :', N'Only few tests should be run', N'Testing should be on the basis of Risk', N'Only Good Test Cases should be executed.', N'Test Cases written by good test engineers should be executed.', N'2', CAST(N'2021-07-13' AS Date), 2006)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4078, N'1 m = ? cm', N'10', N'100', N'1000', N'1   ', N'2', CAST(N'2021-07-15' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4079, N'What browser you use now?', N'Chrome', N'Firefox', N'Edge', N'Cốc Cốc', N'1 3', CAST(N'2021-07-14' AS Date), 2006)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4087, N'
Q1', N'1', N'2', N'3', N'4', N'1 2', CAST(N'2021-07-18' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (1003, N'The name of capital of VietNam after year of 1975?', N'Sai Gon', N'Ho Chi Minh', N'Ha Noi ', N'Ha Tay   ', N'3', CAST(N'2021-07-18' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4088, N'Q1', N'1', N'22', N'3', N'4', N'2 3', CAST(N'2021-07-18' AS Date), 2012)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (3002, N'Tác phẩm Sóng của tác giả nào?', N'Xuân Quỳnh', N'Xuân Diệu', N'Tố Hữu', N'Nguyễn Bỉnh Khiêm  ', N'1', CAST(N'2021-07-14' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (3004, N'What your favorite food?', N'Sea food', N'Meat', N'Milk', N'Rice', N'1', CAST(N'2021-07-11' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (1009, N'3 + 2 =', N'5', N'4', N'3', N'1  ', N'1 3', CAST(N'2021-07-15' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4069, N'Năm nào sau đây là năm nhuận', N'2016', N'2020', N'2018', N'2015   ', N'1 2', CAST(N'2021-07-15' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (3005, N'Question?', N'OP1', N'OP2', N'OP3', N'OP4  ', N'1', CAST(N'2021-07-14' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4024, N'In a system designed to work out the tax to be paid:
An employee has £4000 of salary tax free. The next £1500 is taxed at 10% The next £28000 is
taxed at 22% Any further amount is taxed at 40% Which of these groups of numbers would fall
into the same equivalence class?
', N'£4800; £14000; £28000', N'£5200; £5500; £28000', N'£28001; £32000; £35000', N'£5800; £28000; £32000', N'4', CAST(N'2021-07-12' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4053, N'Deciding How much testing is enough should take into account :<br>
i. Level of Risk including Technical and Business product and project risk<br>
ii. Project constraints such as time and budget<br>
iii. Size of Testing Team<br>
iv. Size of the Development Team
', N'i,ii,iii are true and iv is false', N'i,,iv are true and ii is false', N'i,ii are true and iii,iv are false', N'ii,iii,iv are true and i is false', N'3', CAST(N'2021-07-13' AS Date), 2006)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4055, N'Which class are you in?', N'SE1436', N'SE1438', N'SE1437', N'SE1435', N'4', CAST(N'2021-07-13' AS Date), 2006)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4022, N'Who are you?
', N'Dat', N'Long', N'Nam', N'Duc Anh ', N'4', CAST(N'2021-07-14' AS Date), 1001)
INSERT [dbo].[quiz] ([id], [question], [option1], [option2], [option3], [option4], [answer], [created_date], [user_id]) VALUES (4043, N'ai trong tiếng anh là gì?', N'who', N'where', N'what', N'how  ', N'1', CAST(N'2021-07-15' AS Date), 1001)
SET IDENTITY_INSERT [dbo].[quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2001, N'nam', N'123', 2, CAST(N'2021-07-04' AS Date), N'namc@gtv.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2008, N'admin1', N'123', 1, CAST(N'2021-07-12' AS Date), N'ad1@ff.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (1001, N'admin', N'123', 1, CAST(N'2021-07-04' AS Date), N'adm.tc@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2010, N'ducanh', N'123', 2, CAST(N'2021-07-14' AS Date), N'ducanh12@gmail.com')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2011, N'ducanhle', N'123', 1, CAST(N'2021-07-15' AS Date), N'anhldhe141597@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2012, N'csharp', N'123', 1, CAST(N'2021-07-18' AS Date), N'c.go@vn.cn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2004, N'namc', N'123', 1, CAST(N'2021-07-12' AS Date), N'namc.gov@gg.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2006, N'duongtb', N'123', 1, CAST(N'2021-07-12' AS Date), N'duongtb@fpt.edu.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2007, N'zz1000', N'123', 2, CAST(N'2021-07-12' AS Date), N'z1000@gov.vn')
INSERT [dbo].[user] ([id], [user_name], [password], [role], [createdDate], [email]) VALUES (2009, N'namm', N'123', 2, CAST(N'2021-07-13' AS Date), N'nn@fpt.edu.vn')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
