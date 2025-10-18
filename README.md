# PostgreSQL + PGAdmin4 Docker Setup (Agung Permana)

## 📌 Deskripsi
Project ini menjalankan service **PostgreSQL** dan **PGAdmin4** menggunakan Docker Compose.  
Disertakan juga script SQL untuk membuat database, tabel, serta tiga user dengan role berbeda:
- `backend_dev` → CRUD semua tabel  
- `bi_dev` → Hanya SELECT  
- `data_engineer` → CREATE, MODIFY, DROP semua objek  

---

## 🚀 Cara Menjalankan

1. Clone repository ini:
   
- git clone https://github.com/agungpermana/docker-postgres-pgadmin.git
- cd docker-postgres-pgadmin
   
2. Jalankan Docker Compose:

- docker-compose up -d

3. Buka pgAdmin4 di browser:

- http://localhost:44093

4. Login dengan:

- Email: admin@admin.com
- Password: ifunggul

5. Hubungkan ke server PostgreSQL:

- Host: postgres_AgungPermana
- Port: 5432
- User: postgres
- Password: ifunggul
