/****** Object:  Table [dbo].[prestamos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[prestamos](
	[titulo] [varchar](40) NOT NULL,
	[documento] [char](8) NOT NULL,
	[fechaprestamo] [datetime] NOT NULL,
	[fechadevolucion] [datetime] NULL,
	[devuelto] [char](1) NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[prestamos] ADD  DEFAULT ('Sin titulo') FOR [titulo]
ALTER TABLE [dbo].[prestamos] ADD  DEFAULT ('N/A') FOR [documento]
ALTER TABLE [dbo].[prestamos] ADD  DEFAULT ('1990-01-01') FOR [fechaprestamo]
ALTER TABLE [dbo].[prestamos] ADD  DEFAULT ('n') FOR [devuelto]
