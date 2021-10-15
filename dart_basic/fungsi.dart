/*
// fungsi yang tak mengembalikan nilai
void namaFungsi(){
  //...magic...
}

// fungsi yang mengembalikan nilai
String namaFungsi(){
  //...black magic...
}

// fungsi yang memiliki parameter
int namaFungsi(int param1, int param2){
  //...sesuatu...
}
*/

import 'dart:io';

// membuat fungsi luas persegi
int? luasPersegi(String? sisi) {
  int? val = (sisi != null) ? int.tryParse(sisi) : null;
  return (val != null) ? val * val : null;
}

main() {
  stdout.write("Input panjang sisi: ");
  String? input = stdin.readLineSync();

  int? hasil = luasPersegi(input);

  // memanggil fungsi

  print("Luas Persegi: $hasil");
}
