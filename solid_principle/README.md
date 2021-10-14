# SOLID PRINCIPLE

### Single Responbility Principle

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
