/****** Object:  Table [dbo].[notas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[notas](
	[documento] [char](8) NOT NULL,
	[materia] [varchar](30) NULL,
	[nota] [decimal](4, 2) NULL
) ON [PRIMARY]
