/****** Object:  Table [dbo].[autos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[autos](
	[patente] [char](6) NOT NULL,
	[marca] [varchar](20) NULL,
	[modelo] [char](4) NULL,
	[precio] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
