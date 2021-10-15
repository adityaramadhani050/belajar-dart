/*
1. Operator Aritmatika
  Penjumlahan (+)
  Pengurangan (-)
  Pembagian (/) yang menghasilkan nilai double.
  Pembagian (~/) yang menghasilkan nilai integer.
  Perkalian (*)
  Sisa bagi atau modulo (%)
  Increment (++)
  Derement (--)
2. Operator Relasi
  Sama dengan (==)
  Tidak samadengan (!=)
  Lebih besar (>)
  Lebih kecil (<)
  Lebih besar sama dengan (>=)
  Lebih kecil sama dengan (<=)
3. Operator Penugasan
  Pengisian (=)
  Penjumlahan (+=)
  Pengurangan (-=)
  Pembagian (/=)
  Perkalian (*=)
  Sisa Bagi (%=)
4. Operator Logika
  And (&&)
  Or (||)
  Not (!)
5. Operator Bitwise
  And (&)
  Or (|)
  Xor (^)
  Not (~)
  Left Shift (<<)
  Right Shift (>>)
6. Operator Ternary (?)
*/

import 'dart:io';

main() {
  print("PROGRAM OPERATOR");

  stdout.write("Nilai a: ");
  double a = 10.0;
  stdout.write("Nilai b: ");
  double b = 2.0;

  double hasil;

  // operator penjumlahan
  hasil = a + b;
  print("$a + $b = $hasil");

  // operator pengurangan
  hasil = a - b;
  print("$a - $b = $hasil");

  // operator perkalian
  hasil = a * b;
  print("$a * $b = $hasil");

  // operator pembagian
  hasil = a / b;
  print("$a / $b = $hasil");

  // operator sisa bagi
  hasil = a % b;
  print("$a % $b = $hasil");
}
