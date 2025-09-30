//Langkah 1
// void main() {
//   var list = [1,2,3];

//   assert(list.length == 3);
//   assert(list[1] == 2);

//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }
// Langkah 2 : Jelaskan hasil run
// Kode menunjukkan bahwa list dapat diakses menggunakan indeks.
// Nilai list.length mencetak 3 karena list memiliki 3 elemen. 
// Nilai list[1] awalnya adalah 2 jadi dicetak 2. Setelah diubah list[1] =1,
// Elemen indeks ke-1 berubah menjadi 1, lalu dicetak 1.

void main() {
  final List<dynamic> list = List.filled(5, null, growable: false);

  list[1] = "Aaisyah Nursalsabiil 2341720171";
  list[2] = "Aaisyah Nursalsabiil 2341720171";

  print(list);
}

// Langkah 1 dan 2 : pada langkah 1 tdk terdapat error, ouput menampilkan angka 3 2 1