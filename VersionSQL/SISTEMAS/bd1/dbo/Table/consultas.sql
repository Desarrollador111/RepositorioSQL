/****** Object:  Table [dbo].[consultas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[consultas](
	[fechayhora] [datetime] NOT NULL,
	[medico] [varchar](30) NOT NULL,
	[documento] [char](8) NOT NULL,
	[paciente] [varchar](30) NULL,
	[obrasocial] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[fechayhora] ASC,
	[medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
