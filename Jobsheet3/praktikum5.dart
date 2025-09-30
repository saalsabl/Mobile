void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Record the annotation in a variable declaration  
  (String, int) mahasiswa = ('Aaisyah Nursalsabiil', 2341720171);
  print(mahasiswa);

  var angka = (10, 20);
  print("Sebelum tukar: $angka");

  var hasil = (10, 20);
  print("Sebelum tukar: $hasil");
  
  var mahasiswa2 = ('Aaisyah Nursalsabiil', a:2341720171, b:true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

  (int, int) tukar((int, int)record) {
    var(a, b) = record;
    return(a, b);
  }

  // Langkah ke 1, merupakan kode yang menggunakan Records yaitu tipe data mirip tuple 
  // yang bisa menyimpan beberapa nilai dengan nama (named fields) maupun tanpa nama (positional fields).
  // pada langkah ini tidak terjadi error, karena dart sudah versi terbaru

  // Langkah 3, pada langkah ini, kode ini terdapat Fungsi tukar yang menerima record (int, int).
  // Kode var (a, b) = record; melakukan destructuring sehingga a = 10, b = 20.
  // Return (b, a) dan nilai dibalik jadi (20, 10) pada fungsi main().

  // Langkah 4, pada langkah 4 kode akan error karena variabel mahasiswa bertipe record tapi belum diinisialisasi.
  // Untuk menyelesaikannya langsung inisialisasi record mahasiswa dengan field nama (String) dan NIM (int).

 // Langkah 5, Kode berhasil dijalankan karena di Dart bisa membuat record dengan kombinasi positional field ($1, $2, …) dan named field (a, b).