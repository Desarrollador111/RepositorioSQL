/****** Object:  Table [dbo].[libros]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[libros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](40) NULL,
	[autor] [varchar](30) NULL,
	[editorial] [varchar](15) NULL,
	[anio_publicacion] [int] NULL,
	[categoria] [varchar](50) NULL
) ON [PRIMARY]

SET ANSI_PADDING ON

CREATE CLUSTERED INDEX [I_libros_titulo] ON [dbo].[libros]
(
	[titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
