/****** Object:  Table [dbo].[medicamentos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[medicamentos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[laboratorio] [varchar](20) NULL,
	[precio] [float] NULL,
	[cantidad] [int] NULL
) ON [PRIMARY]
