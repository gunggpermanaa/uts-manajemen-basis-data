-- Buat database (jika belum ada)
CREATE DATABASE db_salam;

\c db_salam;

-- Buat tabel contoh
CREATE TABLE test_table (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO test_table (name) VALUES
('Test'), ('Coba Tambah'), ('Data Backend'), ('Data BI');

-- Buat user
CREATE USER backend_dev WITH PASSWORD 'ifunggul';
CREATE USER bi_dev WITH PASSWORD 'ifunggul';
CREATE USER data_engineer WITH PASSWORD 'ifunggul';

-- Hak akses untuk backend_dev (CRUD)
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO backend_dev;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO backend_dev;

-- Hak akses untuk bi_dev (READ ONLY)
GRANT CONNECT ON DATABASE db_salam TO bi_dev;
GRANT USAGE ON SCHEMA public TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO bi_dev;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO bi_dev;

-- Hak akses untuk data_engineer (CREATE, MODIFY, DROP)
GRANT CREATE, CONNECT, TEMP ON DATABASE db_salam TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO data_engineer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO data_engineer;
