/****** Object:  Table [dbo].[empleados]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[empleados](
	[documento] [char](8) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[seccion] [varchar](20) NULL,
	[sueldo] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
