# Linux Shell Script

## 1. Pencarian File Berdasarkan Ekstensi (`find_extension.sh`)
Skrip ini digunakan untuk mencari semua file dengan ekstensi tertentu di dalam sebuah direktori.

### Penggunaan:
    ```bash
    ./find_extension.sh <directory> <extension>

### Contoh
    ```bash
    ./find_extension.sh /path/to/directory txt

### Deskripsi:
Skrip ini akan mencari dan menampilkan daftar semua file yang memiliki ekstensi yang diberikan di dalam direktori yang ditentukan.

## 2. Backup dan Kompresi Direktori ('backup_directory.sh')
Skrip ini membuat cadangan dari sebuah direktori dan mengompres hasil cadangan ke dalam format .tar.gz.

### Penggunaan
    ```bash
    ./backup_directory.sh <source_directory> <backup_location>
    
### Contoh
    ```bash
    ./backup_directory.sh /path/to/source /path/to/backup

### Deskripsi
Skrip ini akan menciptakan sebuah arsip kompresi dari direktori sumber yang ditentukan dan menyimpannya di lokasi cadangan yang ditentukan.

## 3. Mengcopy Public Key ke Server Remote ('copy_public_key.sh')
Skrip ini menyalin kunci publik ke sebuah server remote untuk autentikasi SSH tanpa password.

### Penggunaan:
    ```bash
    ./copy_public_key.sh <public_key_file> <username> <server_ip>

### Contoh 
    ```bash
    ./copy_public_key.sh ~/.ssh/id_rsa.pub username 192.168.1.100

### Deskripsi:
Skrip ini akan menyalin konten dari file kunci publik yang ditentukan ke file 'authorized_keys' di server remote yang ditentukan.

## 4. Monitoring Penggunaan Disk ('disk_usage_monitor.sh')
Skrip ini memonitor penggunaan disk pada sistem dan mengirim notifikasi jika penggunaan disk melebihi 80%.

### Penggunaan:
Skrip ini dijalankan secara otomatis melalui crontab atau dapat dijalankan secara manual untuk memeriksa penggunaan disk saat itu.

### Deskripsi:
Skrip ini akan memeriksa penggunaan disk pada partisi root (/) dan mengirim email notifikasi jika penggunaan disk melebihi ambang batas yang telah ditetapkan.



