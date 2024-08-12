/****** Object:  Table [dbo].[peliculas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[peliculas](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](40) NULL,
	[actor] [varchar](20) NULL,
	[duracion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
