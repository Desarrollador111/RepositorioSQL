/****** Object:  Table [dbo].[articulos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[articulos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[descripcion] [varchar](30) NULL,
	[precio] [float] NULL,
	[Fila1] [varchar](40) NULL
) ON [PRIMARY]
