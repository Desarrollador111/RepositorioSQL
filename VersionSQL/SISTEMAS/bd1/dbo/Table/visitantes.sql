/****** Object:  Table [dbo].[visitantes]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[visitantes](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[edad] [tinyint] NULL,
	[domicilio] [varchar](30) NULL,
	[ciudad] [varchar](20) NULL,
	[montocompra] [decimal](6, 2) NOT NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[visitantes] ADD  CONSTRAINT [DF_visitantes_ciudad]  DEFAULT ('Cordoba') FOR [ciudad]
ALTER TABLE [dbo].[visitantes] ADD  CONSTRAINT [DF_visitantes_montocompra]  DEFAULT ((0)) FOR [montocompra]
