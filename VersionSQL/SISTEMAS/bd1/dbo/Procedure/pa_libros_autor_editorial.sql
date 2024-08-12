/****** Object:  Procedure [dbo].[pa_libros_autor_editorial]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROC [dbo].[pa_libros_autor_editorial]
    @autor VARCHAR(5) = 'Richard Bach',        
	@editorial VARCHAR(10) = 'Planeta',          
    @titulo VARCHAR(100) = NULL,                  
    @anio_publicacion INT = NULL,                 
    @categoria VARCHAR(50) = NULL,               
    @ordenar_por VARCHAR(20) = 'titulo',          
    @ordenar_direccion VARCHAR(45) = 'ASC',        
    @pagina INT = 10,                              
    @registros_por_pagina INT = 5               
AS
BEGIN

    DECLARE @inicio INT;
    SET @inicio = (@pagina - 1) * @registros_por_pagina;

    -- Fecha actual
    DECLARE @fecha_actual DATE = GETDATE();

    -- Selección de libros con filtros y paginación
    SELECT 
        titulo, 
        autor, 
        editorial, 
        anio_publicacion, 
        categoria, 
        @fecha_actual AS fecha_consulta
    FROM 
        libros
    WHERE 
        (@autor IS NULL OR autor = @autor) AND
        (@editorial IS NULL OR editorial = @editorial) AND
        (@titulo IS NULL OR titulo LIKE '%' + @titulo + '%') AND
        (@anio_publicacion IS NULL OR anio_publicacion = @anio_publicacion) AND
        (@categoria IS NULL OR categoria = @categoria)
    ORDER BY 
        CASE WHEN @ordenar_por = 'titulo' THEN titulo END,
        CASE WHEN @ordenar_por = 'autor' THEN autor END,
        CASE WHEN @ordenar_por = 'editorial' THEN editorial END,
        CASE WHEN @ordenar_por = 'anio_publicacion' THEN anio_publicacion END,
        CASE WHEN @ordenar_por = 'categoria' THEN categoria END
    OFFSET @inicio ROWS
    FETCH NEXT @registros_por_pagina ROWS ONLY;
END
