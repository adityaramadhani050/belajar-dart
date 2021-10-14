# SOLID PRINCIPLE

### Single Responbility Principle (SRP)

Sebuah modul harus bertanggung jawab kepada satu, dan hanya satu aktor. prinsip ini digunakan untuk mengatur sebuah class memiliki satu tanggung jawab, apabila terdapat dua tanggung jawab atau fungsionalitas yang tidak terkait maka tanggung jawab atau fungsionalitas dari class tersebut harus dibagi menjadi class yang berbeda. sehingga ketika melakukan perubahan pada fungsionalitas pada suatu class kita hanya fokus pada masing-masing class.  
Contoh: seseorang (class) memiliki tugas atau tanggung jawab sebagai juru masak, penjaga gedung, melayani pelanggan dan mengemudi. maka dengan menerapkan prinsip SRP kita dapat membagi tugas tersebut ke orang lain (class) sesuai dengan tugas dan tanggung jawabnya menjadi (class) koki, (class) satpam, (class) customer service dan (class) sopir.

BAD:

```dart
class Person {
  void memasak() {
    print('memasak makanan');
  }

  void menjaga() {
    print('menjaga gedung agar aman');
  }

  void melayani() {
    print('melayani pelanggan dengan senang hati');
  }

  void mengemudi() {
    print('mengantarkan kemana saja');
  }
}
```

Berdasarkan kode diatas, class person memiliki banyak tanggung jawab (responbility). dengan menerapkan prinsip RSP kita dapat memisahkan masing-masing function atau tanggung jawab ke dalam class baru. sehingga hasilnya akan menjadi seperti ini:

GOOD:

```dart
class Chef {
  void memasak() {
    print('memasak makanan');
  }
}

class Security {
  void menjaga() {
    print('menjaga gedung agar aman');
  }
}

class CustomerService {
  void melayani() {
    print('melayani pelanggan dengan senang hati');
  }
}

class Driver {
  void mengemudi() {
    print('mengantarkan kemana saja');
  }
}

```

### Open / Close Principle (OCP)

Menurut Bertrand Mayer pada tahun 1988 sebuah artefak perangkat lunak harus terbuka untuk ditambahkan tetapi tertutup untuk dimodifikasi. Terbuka untuk ditambahkan adalah keadaan sebuah sistem dapat ditambahkan dengan spesifikasi baru yang dibutuhkan. Sedangkan tertutup untuk dimodifikasi adalah agar ketika ingin menambahkan spesifikasi baru, kita tidak perlu mengubah atau memodifikasi sistem yang telah ada. Penerapan OCP memanfaatkan interface dan abstraksi kelas dengan tujuan agar mudah diperbaiki tanpa harus mengganggu kelas yang mewarisi dan ketika membuat fugsionalitas baru, cukup dengan membuat kelas baru dan mewarisi interface atau abstraksi tersebut.

BEFORE:

```dart
class MyRobot {
  void talk() {
    print('robot berbicara');
  }

  void walk() {
    print('robot berjalan');
  }
}
```

lalu kita ingin menambahkan kemampuan dari robot tersebut yaitu robot dapat terbang dan membunuh musuh. pendekatan yang salah adalah kita menambahkan kemampuan tersebut secara langsung dengan mengubah isi class MyRobot.

BAD:

```dart
class MyRobot {
  void talk() {
    print('robot berbicara');
  }

  void fly() {
    print('robot terbang');
  }

  void killEnemy() {
    print('robot membunuh musuh');
  }
}
```

Dengan menghilangkan fungsi walk() pada class MyRobot, maka dapat membuat sistem mengalami error apabila terdapat sistem yang menggunakan class MyRobot memanggil fungsi walk(). untuk menghindari kesalahan tersebut maka lebih baik menambahkan fitur atau kemampuannya.

GOOD:

```dart
class MyRobot {
  void talk() {
    print('robot berbicara');
  }

  void walk() {
    print('robot berjalan');
  }
}

class MySuperRobot extends MyRobot {
  void fly() {
    print('robot terbang');
  }

  void killEnemy() {
    print('robot membunuh musuh');
  }
}
```

Dengan demikian apabila terdapat sistem yang menggunakan class MyRobot lalu diubah menjadi MySuperRobot agar dapat terbang, maka sistem tersebut tidak akan mengalami error dan tetap bisa menggunakan fungsi walk.
