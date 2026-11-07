CREATE TABLE IF NOT EXISTS facturas (
    -- Columnas clave
    id_factura INT NOT NULL,
    num_linea SMALLINT NOT NULL,

    -- Columnas con restricciones 1
    descripcion TEXT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0), 
    precio_unidad DECIMAL(10, 2) NOT NULL CHECK (precio_unidad >= 0), -- Cantidad no puede ser negativo
    importe_bruto DECIMAL(12, 2) GENERATED ALWAYS AS (cantidad * precio_unidad) VIRTUAL, -- Importe calculada automaticamente

    -- Columnas con restricciones 2
    fecha_inicio DATE,
    fecha_final DATE,

    -- Clave primaria doble
    PRIMARY KEY (id_factura, num_linea),

    -- Comprueba si ambas existen y que la fecha de fin nunca sea inferior a inicio
    CHECK (fecha_final IS NULL OR fecha_inicio IS NULL OR fecha_inicio <= fecha_final)
);