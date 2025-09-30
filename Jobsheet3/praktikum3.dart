void main() {
  var gifts = {
    //Key: Value
    'first': 'patridge',
    'second' : 'turtledoves',
    'fifth' : 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'patridge';
  gifts['second'] = 'turtledoves';  
  gifts['fifth'] = 'golden rings';

  gifts['fifth'] = 'Aaisyah Nursalsabiil';
  gifts['NIM'] = '2341720171';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  nobleGases[99] = 'Aaisyah Nursalsabiil';
  nobleGases[100] = '2341720171';

  mhs1['Nama'] = 'Aaisyah Nursalsabiil';
  mhs1['NIM'] = '2341720171';

  mhs2[1] = 'Aaisyah Nursalsabiil';
  mhs2[2] = '2341720171';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);


}

// Langkah 1-3 tidak ada error, Pada langkah ke-3 bagian awal, isi gift dan
// nobleGases  sudah dicetak (output pertama), kemudian terdapat 
// assignment ulang: gifts['fifth'] yang awalnya 1 diganti jadi "golden rings" 
// dan nobleGases[18] yang awalnya 2 diganti jadi "argon".