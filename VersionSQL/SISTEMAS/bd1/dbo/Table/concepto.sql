/****** Object:  Table [dbo].[concepto]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[concepto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_venta] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[precio_unitario] [decimal](18, 2) NULL,
	[cantidad] [int] NULL,
	[importe] [decimal](18, 2) NULL,
 CONSTRAINT [PK_concepto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[concepto]  WITH CHECK ADD  CONSTRAINT [FK_concepto_venta] FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta] ([id])
ALTER TABLE [dbo].[concepto] CHECK CONSTRAINT [FK_concepto_venta]
