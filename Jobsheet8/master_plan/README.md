# PEMROGRAMAN MOBILE PERTEMUAN 10 - Dasar State Management

Nama: Aaisyah Nursalsabiil N. P
Kelas: TI - 3D
NIM: 23418720171


### PRAKTIKUM 1
![prak1](img\prak1.jpg) <br>

#### Tugas Praktikum 1: Dasar State dengan Model-View
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

#### Jawab
2. Langkah 4 bertujuan untuk menyederhanakan proses impor model di file lain. Tujuannya agar struktur kode lebih modular dan rapi dan memudahkan pengelolaan saat jumlah model bertambah.
3. Variabel plan digunakan untuk menyimpan data rencana (plan) yang sedang aktif ditampilkan pada layar. Di dalam Plan, ada properti tasks yang akan berubah setiap kali pengguna menambah, menghapus, atau memperbarui tugas di aplikasi. Variabel ini dibuat const karena  Plan dan Task adalah kelas yang immutable (tidak bisa diubah isinya langsung). Jadi, setiap kali ada perubahan, kita tidak mengubah objek lama, melainkan membuat objek Plan baru dengan data yang sudah diperbarui.
4. Hasil dari langkah 9 berupa tampilan daftar tugas (to-do list) dengan Checkbox untuk menandai apakah tugas sudah selesai atau belum dan TextFormField untuk menulis atau mengedit deskripsi tugas.
5. Langkah 11 digunakan untuk inisialisasi data awal atau controller sedangkan langkah 13 digunakan untuk membersihkan resource seperti controller, stream, atau listener agar tidak terjadi memory leak.