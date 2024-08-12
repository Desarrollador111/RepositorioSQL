/****** Object:  Table [dbo].[visitas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[visitas](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[mail] [varchar](50) NULL,
	[pais] [varchar](20) NULL,
	[fechayhora] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[visitas] ADD  DEFAULT ('Anonimo') FOR [nombre]
