void main() {
  // Nama dan NIM
  String nama = "Aaisyah Nursalsabiil";
  String nim = "2341720171";

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i -> $nama | NIM: $nim");
    } else {
      print("$i");
    }
  }
}

// Fungsi untuk mengecek bilangan prima
bool isPrima(int n) {
  if (n < 2) return false; // 0 dan 1 bukan prima
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
