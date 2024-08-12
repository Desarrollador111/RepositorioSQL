/****** Object:  Table [dbo].[vehiculos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[vehiculos](
	[patente] [char](6) NOT NULL,
	[tipo] [char](1) NULL,
	[horallegada] [datetime] NOT NULL,
	[horasalida] [datetime] NULL
) ON [PRIMARY]
