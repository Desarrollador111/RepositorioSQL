/****** Object:  Table [dbo].[cuentas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[cuentas](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[documento] [char](8) NOT NULL,
	[nombre] [varchar](30) NULL,
	[saldo] [money] NULL
) ON [PRIMARY]
