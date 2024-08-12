/****** Object:  Table [dbo].[usuarios]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[usuarios](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
	[segundoApe] [varchar](20) NULL
) ON [PRIMARY]
