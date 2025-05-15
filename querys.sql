-- Listar las tablas y sus nombres
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';
-- Verificar extensiones PGVector
SELECT * FROM pg_available_extensions WHERE name = 'vector';
-- Listar el contenido almacenado de los documentos
SELECT document FROM langchain_pg_embedding;
-- Listar las columnas y metadata
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'langchain_pg_embedding';
-- Eliminar tabla con los datos de los archivos
TRUNCATE TABLE langchain_pg_embedding;
