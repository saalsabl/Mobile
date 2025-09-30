## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa 
screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

## Jawab : 
2. Function adalah blok kode yang bisa dipangguil untuk menjalankan suatu tugas tertentu dan berfungsi untuk modularisasi kode agar lebih rapi dah mudah digunakan
3. - positional parameters : merupakan parameter standar yang harus disediakan saat memanggil fungsi sesuai dengan urutannya
- Optional Parameters: merupakan parameter yang bisa dihilangkan saat memanggil fungsi dan memiliki nilai default. Terdapat 2 jenis Optional parameter yaitu Parameter posisi opsional dan parameter bernama(opsional).
- Named Parameters: parameter ini sama seperti parameter bernama opsional, namun bisa juga dideklarasikan sebagai parameter wajib menggunakan required. Tanda kurung kurawal {} digunakan untuk menandai parameter bernama.
```
// positional parameter
void tambah(int a, int b) {
  print(a + b);
}
void main() {
  tambah(2, 3); 
}

// optional parameter
void info(String nama, [int? umur]) {
  print("Nama: $nama, Umur: ${umur ?? 'tidak diketahui'}");
}
void main() {
  info("Aaisyah");
  info("Aaisyah", 21);
}

// named parameter
void sapa({String nama = "Anonim", int umur = 0}) {
  print("Halo $nama, umur $umur tahun");
}
void main() {
  sapa(nama: "Aaisyah", umur: 21);
  sapa(); // Default
}
```

4. Function sebagai first class artinya function dapat disimpan dalam variabel, dikirim sebagai argumen, atau dikembalikan dari function lain.
```
void halo(String nama) {
  print("Halo $nama");
}
void eksekusi(void Function(String) f, String arg) {
  f(arg);
}
void main() {
  var sapa = halo; 
  sapa("Aaisyah");

  eksekusi(halo, "Nursalsabiil"); 
}
```

5. Anonymous Functions merupakan function tanpa nama yang biasanya dipakai langsung pada kode baris (inline), sering dipakai untuk callback.
```
void main() {
  var list = ['nanas', 'mangga', 'anggur'];

  list.forEach((item) {
    print("Buah: $item");
  });
}
```

6. Pada Lexical Scope, variabel hanya bisa diakses di dalam scope (cakupan) tempat fungsi tersebut dideklarasikan. Sedangkan pada Lexical Closure function yang menyimpan akses ke variabel di luar scope-nya, meskipun scope asal sudah selesai dieksekusi.
```
// lexical scope
void main() {
  var nama = "Aaisyah";
  void sapa() {
    print("Halo $nama"); // bisa akses karena masih dalam scope
  }
  sapa();
}

// lexical closure
Function hitungKelipatan(int faktor) {
  return (int angka) => angka * faktor;
}

void main() {
  var kali2 = hitungKelipatan(2);
  var kali3 = hitungKelipatan(3);
  print(kali2(5)); 
  print(kali3(5)); 
}
```

7. Dart tidak bisa langsung return lebih dari 1 value dengan return biasa, tapi bisa dengan List, Map, dan Record
```
// list
List<int> hitung(int a, int b) {
  return [a + b, a - b];
}

// map
Map<String, int> hitung(int a, int b) {
  return {"tambah": a + b, "kurang": a - b};
}

// record
(int, int) hitung(int a, int b) {
  return (a + b, a - b);
}
```