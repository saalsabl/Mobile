void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  var nim = ['2', '3', '4', '1', '7', '2', '0', '1', '6', '2'];
  var listNIM = [...nim];
  print(listNIM);
  print("${listNIM.length}");

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);


  var login = 'User';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);


  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

// Langkah 1 terdapat error karena variabel list1 tidak didefinisikan, 
// dapat diperbaiki dengan mengganti variabel dengan yang sudah dodefinisikan sebelumnya

// Langkah 4 terdapat error karena variabel promoActive belum diinisialisasi, sehingga
// perlu diinisialisasi terlebih dahulu. Output jika kondisi true adalah [Home, Furniture, Plants, Outlet]
// sedangkan jika kondisi false adalah [Home, Furniture, Plants]. Penggunaan if di dalam list
// berfungsi untuk menambahkan elemen ke list hanya jika kondisi bernilai true

//Langkah 5, terdapat error karena variabel login belum diinisialisasikan,
// sehingga perlu diinisialisasi terlebih dahulu. Outputnya ketika menggunakan login = 'Manager'
// akan muncul [Home, Furniture, Plants, Inventory] 
// sedangkan jika login selain dengan status 'Manager' adalah [Home, Furniture, Plants].
// Jadi elemen 'Inventory' hanya akan muncul kalau login cocok dengan 'Manager'.

//Langkah 6, kode ini menggunakan Collection For, yaitu cara menambahkan elemen 
// ke list baru dengan melakukan iterasi pada list lain. 
// Manfaatnya adalah kode menjadi lebih ringkas daripada membuat list kosong lalu melakukan
// for loop untuk menambahkan elemen, Membuat kode lebih bersih, mudah dibaca, dan deklaratif, 
//dan Bisa dikombinasikan dengan collection if untuk menambahkan kondisi.
