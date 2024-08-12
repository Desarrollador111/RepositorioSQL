/****** Object:  Procedure [dbo].[Sp_autor]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROC [dbo].[Sp_autor]
    @Autor VARCHAR(30),                            
	@Titulo VARCHAR(50) = NULL,                   
    @AnioPublicacion INT = NULL,                   -- Año de publicación (opcional)
    @Categoria VARCHAR(50) = NULL,                 -- Categoría del libro (opcional)
    @OrdenarPor VARCHAR(20) = 'titulo',            -- Columna por la cual ordenar
    @OrdenarDireccion VARCHAR(4) = 'ASC',          -- Dirección de ordenación ('ASC' o 'DESC')
    @Pagina INT = 10,                               
    @RegistrosPorPagina INT = 5                   
AS
BEGIN
    SET NOCOUNT ON;

    -- Manejo de errores
    BEGIN TRY
        -- Variables para manejar la paginación
        DECLARE @Inicio INT;
        SET @Inicio = (@Pagina - 1) * @RegistrosPorPagina;

        -- Creación de la consulta dinámica
        DECLARE @SQL NVARCHAR(MAX);
        SET @SQL = N'
        SELECT 
            titulo, 
            autor, 
            editorial, 
            anio_publicacion, 
            categoria
        FROM 
            libros
        WHERE 
            autor = @Autor AND
            (@Titulo IS NULL OR titulo LIKE ''%'' + @Titulo + ''%'') AND
            (@AnioPublicacion IS NULL OR anio_publicacion = @AnioPublicacion) AND
            (@Categoria IS NULL OR categoria = @Categoria)
        ORDER BY ' + @OrdenarPor + ' ' + @OrdenarDireccion + '
        OFFSET ' + CAST(@Inicio AS NVARCHAR) + ' ROWS
        FETCH NEXT ' + CAST(@RegistrosPorPagina AS NVARCHAR) + ' ROWS ONLY;';

        -- Ejecución de la consulta dinámica
        EXEC sp_executesql @SQL,
            N'@Autor VARCHAR(60), @Titulo VARCHAR(100), @AnioPublicacion INT, @Categoria VARCHAR(50)',
            @Autor, @Titulo, @AnioPublicacion, @Categoria;

    END TRY
    BEGIN CATCH
        -- Captura y manejo de errores
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT 
            @ErrorMessage = ERROR_MESSAGE(), 
            @ErrorSeverity = ERROR_SEVERITY(), 
            @ErrorState = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
