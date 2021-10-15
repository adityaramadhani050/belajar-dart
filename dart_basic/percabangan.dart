/*
Ada lima macam bentuk percabangan pada Dart:
  - Percabangan If;
  - Percabangan If-Else;
  - Percabangan If-Else If-Else;
  - percabangan Switch-Case;
  - Percabangan dengan Operator Ternary.
*/
import 'dart:io';

// PERCABANGAN IF
void programDiskon() {
  print("### Program Kasir ###");
  stdout.write("Total belanja: ");
  int totalBelanja = 250000;

  if (totalBelanja >= 100000) {
    print("Selamat anda dapat hadiah!");
  }
}

// PERCABANGAN IF-ELSE
void login() {
  print("=== Login ===");
  stdout.write("Password: ");
  String password = "kopi";

  // cek password yang diinputkan
  if (password == "kopi") {
    print("Selamat datang bos!");
  } else {
    print("Kamu siapa? Pergi sana!");
  }
}

// PERCABANGAN IF-ELSE IF-ELSE
void grade() {
  print("*** Program Grade ***");

  stdout.write("Inputkan nilai: ");
  int nilai = 78;

  String grade;

  if (nilai >= 90)
    grade = "A+";
  else if (nilai >= 80)
    grade = "A";
  else if (nilai >= 70)
    grade = "B+";
  else if (nilai >= 60)
    grade = "B";
  else if (nilai >= 50)
    grade = "C+";
  else if (nilai >= 40)
    grade = "C";
  else if (nilai >= 30)
    grade = "D";
  else if (nilai >= 20)
    grade = "E";
  else
    grade = "F";

  print("Grade: $grade");
}

//SWITCH CASE
void quoteHarian() {
  print("~~~ Quote Harian ~~~");
  stdout.write("Input hari: ");
  String hari = "senin";

  String quote;

  switch (hari) {
    case "senin":
      {
        quote = "Mari kita mulai dari senin";
        break;
      }
    case "selasa":
      {
        quote = "Selesaikan tugas, dan bersantailah";
        break;
      }
    case "rabu":
      {
        quote = "Serbu! hari ini penuh semangat!";
        break;
      }
    case "kamis":
      {
        quote = "Meski hujan gerimis, aku belajar coding";
        break;
      }
    case "jumat":
      {
        quote = "Jum'at berkah";
        break;
      }
    case "sabtu":
      {
        quote = "Tenangkan jiwa di hari akhir!";
        break;
      }
    case "minggu":
      {
        quote = "Selamat berlibur!";
        break;
      }
    default:
      {
        quote = "Hari yang anda masukan salah!";
      }
  }

  print(quote);
}

// TERNARY
void ternary() {
  print("apakah kamu suka aku?");
  stdout.write("jawab (y/t): ");
  String jawab = "y";

  // menggunakan operator ternary sebagai ganti if/esle
  var hasil = (jawab == 'y') ? "menikah" : "jomblo lagi";

  print("Selamat kamu $hasil");
}

void ternaryBercabang() {
  stdout.write("Masukkan Angka: ");
  int angka = 25;
  var status = (angka > 10)
      ? ((angka % 2 == 0) ? "bilangan genap" : "bilangan ganjil ")
      : "angka kurang dari 10";
  print("$status");
}

main() {
  ternary();
}
