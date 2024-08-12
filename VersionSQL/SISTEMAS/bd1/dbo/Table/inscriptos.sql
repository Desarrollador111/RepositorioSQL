/****** Object:  Table [dbo].[inscriptos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[inscriptos](
	[documento] [char](8) NOT NULL,
	[nombre] [varchar](30) NULL,
	[deporte] [varchar](15) NOT NULL,
	[año] [datetime] NOT NULL,
	[matricula] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[documento] ASC,
	[deporte] ASC,
	[año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
