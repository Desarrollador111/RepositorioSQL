/****** Object:  Table [dbo].[inmuebles]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[inmuebles](
	[documento] [varchar](8) NOT NULL,
	[apellido] [varchar](30) NULL,
	[nombre] [varchar](30) NULL,
	[domicilio] [varchar](20) NULL,
	[barrio] [varchar](20) NULL,
	[ciudad] [varchar](20) NULL,
	[tipo] [char](1) NULL,
	[superficie] [decimal](8, 2) NULL
) ON [PRIMARY]
