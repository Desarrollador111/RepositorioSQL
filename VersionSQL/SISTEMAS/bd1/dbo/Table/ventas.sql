/****** Object:  Table [dbo].[ventas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[ventas](
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[montocompra] [decimal](6, 2) NULL,
	[tipopago] [char](1) NULL,
	[vendedor] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
