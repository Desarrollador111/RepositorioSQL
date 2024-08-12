/****** Object:  UserDefinedTableType [dbo].[CoordenadasGeograficas]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TYPE [dbo].[CoordenadasGeograficas] AS TABLE(
	[Latitud] [decimal](9, 6) NULL,
	[Longitud] [decimal](9, 6) NULL
)
