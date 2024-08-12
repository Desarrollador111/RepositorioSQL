/****** Object:  Table [dbo].[remis]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[remis](
	[numero] [tinyint] IDENTITY(1,1) NOT NULL,
	[patente] [char](6) NULL,
	[marca] [varchar](15) NULL,
	[modelo] [char](4) NULL,
 CONSTRAINT [UQ_remis_patente] UNIQUE NONCLUSTERED 
(
	[patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
