/*Book Information table create statment */
CREATE TABLE [dbo].[BookInfor](
	[ISBN] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Author] [nvarchar](50) NULL,
	[Edition] [nvarchar](50) NULL,
	[Buy Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_kakaraparthiv_WADfl15_BookInfor] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/* Users table create statment */
CREATE TABLE [dbo].[Users](
	[Email] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[AddressLine1] [nvarchar](max) NULL,
	[AddressLine2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/* TRANSACTIONs table create statment*/
CREATE TABLE [dbo].[Transactions](
	[emailAddress] [nvarchar](50) NOT NULL,
	[isbnNumber] [nvarchar](50) NOT NULL,
	[dateSold] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[soldPrice] [nchar](10) NULL,
 CONSTRAINT [PK_kakaraparthiv_WADfl15_Transactions] PRIMARY KEY CLUSTERED 
(
	[dateSold] ASC,
	[isbnNumber] ASC,
	[emailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/* Book Information table data*/

INSERT INTO [dbo].[kakaraparthiv_WADfl15_BookInfor]
           ([ISBN]
           ,[Title]
           ,[Author]
           ,[Edition]
           ,[Buy Price])
     VALUES
           (978-0071457743
           ,Engineering Formulas
           ,George Geick
           ,Eighth
           ,11.50)
GO

INSERT INTO [dbo].[kakaraparthiv_WADfl15_BookInfor]
           ([ISBN]
           ,[Title]
           ,[Author]
           ,[Edition]
           ,[Buy Price])
     VALUES
           (978-0735667044
           ,Microsoft Visual Basic 2013 Step by Step
           ,Michael Halvoson
           ,Two
           ,9.5
)
GO