/****** Object:  Table [dbo].[clientes]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[clientes](
	[legajo] [char](4) NULL,
	[nombre] [varchar](30) NULL,
	[domicilio] [varchar](30) NULL,
	[ciudad] [varchar](15) NULL,
	[provincia] [varchar](20) NULL,
	[fechaingreso] [datetime] NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[clientes] ADD  DEFAULT ('Cordoba') FOR [provincia]
