/****** Object:  Table [dbo].[alumnos]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[alumnos](
	[legajo] [char](5) NOT NULL,
	[documento] [char](8) NOT NULL,
	[apellido] [varchar](30) NULL,
	[nombre] [varchar](30) NULL,
	[notafinal] [decimal](4, 2) NULL,
	[Colum1] [varchar](40) NULL,
 CONSTRAINT [UQ_alumnos_documento] UNIQUE NONCLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
