/*
perluangan di dalam Dart juga ada empat macam:
1. Perulangan For
2. Perulangan While
3. Perulangan Do/While
4. Perulangan Foreach (For)
*/

import 'dart:io';

// PERULANGAN FOR
void perulanganFor() {
  stdout.write("Jumlah Perulangan : ");
  int n = 10;

  for (int i = 1; i <= n; i++) {
    print("Perulangan ke-$i");
  }
}

// PERULANGAN WHILE
void perulanganWhile() {
  int angka = 5;
  int percobaan = 0;

  print("Selamat Datang di Permainan Tebak Angka");
  stdout.write("Mau Bermain? Y/N ");
  var play = 'y';
  bool playing = (play == "Y") ? true : false;

  while (playing) {
    stdout.write("Tebak angka > ");
    String? jawab = stdin.readLineSync();
    int? tebakAngka = (jawab != null) ? int.tryParse(jawab);
    if (tebakAngka == angka) {
      print("Selamat Angka Tertebak : $angka");
      if (percobaan == 0) {
        print("Hebat langsung tertebak");
      } else {
        print("Dengan melakukan percobaan sebanyak $percobaan kali");
      }
      playing = false;
      break;
    }
    percobaan++;
  }
}

void perulanganDoWhile() {
  int i = 0;
  do {
    stdout.write("input? y/n: ");
    String? n = stdin.readLineSync();
    if (n == "n") {
      print("Melakukan perulangan sebanyak $i");
      break;
    }
    i++;
  } while (true);
}

void perulanganForEach() {
  var names = ["Mia", "Ryujin", "Park Chorong", "Nayeon", "Suzy"];
  for (var n in names) {
    print(n);
  }
  print("Jumlah nama : ${names.length}");
}

main() {
  perulanganForEach();
}
