# SOLID PRINCIPLE

### Single Responbility Principle (SRP)

Sebuah modul harus bertanggung jawab kepada satu, dan hanya satu aktor. Prinsip ini digunakan untuk mengatur sebuah class memiliki satu tanggung jawab, apabila terdapat dua tanggung jawab atau fungsionalitas yang tidak terkait maka tanggung jawab atau fungsionalitas dari class tersebut harus dibagi menjadi class yang berbeda. Sehingga ketika melakukan perubahan pada fungsionalitas pada suatu class kita hanya fokus pada masing-masing class.  
Contoh: seseorang (class) memiliki tugas atau tanggung jawab sebagai juru masak, penjaga gedung, melayani pelanggan dan mengemudi. Maka dengan menerapkan prinsip SRP kita dapat membagi tugas tersebut ke orang lain (class) sesuai dengan tugas dan tanggung jawabnya menjadi (class) koki, (class) satpam, (class) customer service dan (class) sopir.

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

Berdasarkan kode diatas, class person memiliki banyak tanggung jawab (responbility). Dengan menerapkan prinsip RSP kita dapat memisahkan masing-masing function atau tanggung jawab ke dalam class baru. Sehingga hasilnya akan menjadi seperti ini:

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

Lalu kita ingin menambahkan kemampuan dari robot tersebut yaitu robot dapat terbang dan membunuh musuh. Pendekatan yang salah adalah kita menambahkan kemampuan tersebut secara langsung dengan mengubah isi class MyRobot.

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

Dengan menghilangkan fungsi walk() pada class MyRobot, maka dapat membuat sistem mengalami error apabila terdapat sistem yang menggunakan class MyRobot memanggil fungsi walk(). Untuk menghindari kesalahan tersebut maka lebih baik menambahkan fitur atau kemampuannya.

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

### Liskov Subtitution Principle (LSP)

LSP adalah tentang pendelegasian sebuah tanggung jawab. Subclass atau anak turunan harus bisa melakukan apa yang superclass atau induknya lakukan. Misal superclass dapat menghitung jumlah total, maka subclass atau anak turunannya harus bisa melakukan hal yang sama. Fungsi yang terdapat pada superclass harus relevan untuk subclass atau kita dapat membuat fungsi yang general pada superclass supaya relevan dengan subclass nantinya.

BAD:

```dart
abstract class Product {
  String getName();
  int getPrice();
  DateTime getExpiredDate();

  void showProductInfo() {
    print('Product Info');
  }
}

class Vegetable extends Product {
  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }

  @override
  String getName() {
    return 'Broccoli';
  }

  @override
  int getPrice() {
    return 10000;
  }
}
```

Pada contoh kode diatas memiliki class abstract bernama Product yang di dalamnya terdapat beberapa anggota abstract. Class tersebut diwariskan kepada class Vegetable. Untuk saat ini class tersebut tidak ada masalah dan berjalan dengan baik. Lalu kita ingin menambahkan sebuah class produk baru yaitu produk smartphone dan class tersebut mewarisi class product.

```dart
abstract class Product {
  String getName();
  int getPrice();
  DateTime getExpiredDate();

  void showProductInfo() {
    print('Product Info');
  }
}

class Vegetable extends Product {
  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }

  @override
  String getName() {
    return 'Broccoli';
  }

  @override
  int getPrice() {
    return 10000;
  }
}

class Smartphone extends Product {
  @override
  DateTime getExpiredDate() {
    return DateTime.now(); // smartphone ada kadaluarsa?
  }

  @override
  String getName() {
    return 'samsung';
  }

  @override
  int getPrice() {
    return 500000;
  }
}
```

Dikarenakan pada class product terdapat member yang abstrak maka ketika menambahkan class baru smartphone yang mewarisi dari class product, class smartphone harus mengimplementasikan fungsi dari superclassnya. Seperti yang diketahui sebuah smartphone atau benda elektronik tidak memiliki masa kadaluwarsa. Sehingga dalam kasus ini class product menjadi tidak relevan untuk diwariskan ke class smartphone dan tentunya ini melanggar aturan subclass.  
Untuk mengatasi kasus tersebut perlu dilakukan subtitusi fungsi yang tidak relevan ke dalam kelas abstraksi sendiri dan diwariskan ke class yang relevan dengannya.

GOOD:

```dart
abstract class Product {
  String getName();
  int getPrice();

  void showProductInfo() {
    print('Product Info');
  }
}

abstract class FoodProduct extends Product {
  DateTime getExpiredDate();
}

abstract class ElectronicProduct extends Product {
  int getWarrantyYear();
}

class Vegetable extends FoodProduct {
  @override
  String getName() {
    return 'Broccoli';
  }

  @override
  int getPrice() {
    return 10000;
  }

  @override
  DateTime getExpiredDate() {
    return DateTime.now();
  }
}

class Smartphone extends ElectronicProduct {
  @override
  String getName() {
    return 'samsung';
  }

  @override
  int getPrice() {
    return 500000;
  }

  @override
  int getWarrantyYear() {
    return 1;
  }
}
```

Dengan menerapkan prinsip liskov seperti pada kode diatas dapat meningkatkan desain dari sistem yang dikembangkan dan ketergantungan antar klien dapat disubstitusikan tanpa klien tahu perubahan yang ada.

### Interface Segregation Principle (ISP)

Sebuah subclass tidak boleh dipaksa untuk bergantung pada interface yang tidak mereka gunakan. Kita pasti pernah membuat class yang mengimplementasikan sebuah public interface dan iterface tersebut diimplementasikan oleh class lainnya. Class-class yang kita buat terkadang hanya membutuhkan beberapa fungsi yang ada pada interface tersebut sehingga menurut aturan prinsip interface segregation hal ini kurang baik. Ketika prinsip interface segregation diterapkan, setiap class-class akan mengimplementasi beberapa interface class yang lebih kecil sesuai dengan fungsi-fungsi yang dibutuhkan class-class tersebut. ISP adalah tentang pemisahan tanggung jawab. Robot yang nggak punya alat untuk menyelesaikan tugas, jangan diberi tugas yang tidak semestinya. Misalnya robot yang tidak punya sayap, seharusnya tidak diberikan tugas untuk terbang. Namun sesuaikan tugas dengan kebutuhan masing-masing.

BAD:

```dart
abstract class VehicleInterface {
  void drive();
  void stop();
  void refuel();
  void openDoors();
}

class MotorCycle implements VehicleInterface {
  @override
  void drive() {}

  @override
  void refuel() {}

  @override
  void stop() {}

  // Can not be implemented
  @override
  void openDoors() {}
}
```

Di dalam interface Vehicle, terdapat beberapa interface, di antaranya drive(), stop(), refuel(), dan openDoors(). Ketika class Motorcycle mengimplementasikan interface tersebut, maka seluruh function dari interface Vehicle akan ter-override di dalam classs Motorcycle. Namun, ada hal yang kurang tepat, yaitu terdapat function openDoors(), sementara kenyataannya motorcycle tersebut seharusnya tidak memiliki pintu (doors).

GOOD:

```dart
abstract class Vehicle {
  void drive();
  void stop();
  void refuel();
}

abstract class DoorInterface {
  void openDoors();
}

class MotorCycle extends Vehicle {
  @override
  void drive() {}

  @override
  void refuel() {}

  @override
  void stop() {}
}

class Car extends Vehicle implements DoorInterface  {
  @override
  void drive() {}

  @override
  void refuel() {}

  @override
  void stop() {}

  @override
  void openDoors() {}
}
```

Dengan memisahkan interface menjadi bagian-bagian kecil, kegunaan dan tanggung jawab dari interface tersebut akan mudah dipahami oleh developer. Tujuannya adalah untuk menghasilkan desain yang fleksibel, dengan cukup dengan mengimplementasikan interface tertentu daripada mengimplementasikan satu interface yang di dalamnya terdiri dari banyak function yang lebih kompleks.

### Dependency Inversion Principle (DIP)

Dependency Inversion memiliki dua aturan yaitu yang pertama high-level module tidak boleh bergantung pada low-level, keduanya harus bergantung pada abstraction. Yang kedua adalah abstraction tidak boleh bergantung pada detail, detail harus bergantung pada abstraction. High-level module adalah kelas-kelas yang berurusan dengan kumpulan fungsionalitas yang mengimplementasikan aturan bisnis sesuai dengan desain yang telah ditentukan. Sedangkan low-leve module bertanggung jawab pada operasi yang lebih detail misalnya menulis informasi ke database atau menyampaikan pesan ke sistem operasi.  
contoh robot tidak boleh tergantung pada satu alat saja, akan tetapi dapat berubah-ubah sesuai dengan kebutuhan. Misalnya robot tidak boleh hanya tergantung pada spatula saja untuk memasak, tapi bisa juga menggunakan pisau, penjepit atau centong. Dapat dilihat sebelumnya spatula tertanam pada tangan robot, sehingga ia tidak bisa menggunakan alat lain. agar robot dapat menggunakan alat apa saja maka diperlukan sekrup yang bisa digunakan untuk bongkar pasang alat. Sekrup ini pada dunia programming bisa menggunakan interface atau abstract class.

BAD:

```dart
class Car {
  final Engine _engine;
  Car(this._engine);

  void start() {
    _engine.start();
  }
}

class Engine {
  void start() {

  }
}
```

pada contoh kode diatas kita memiliki sebuah class Car yang memiliki constructor untuk menambahkan engine, dalam hal ini dimodelkan sebagai class Engine. lalu bagaimana jika kita ingi mengganti engine dengan engine yang lain.

```dart
class Car {
  final Engine _engine;
  Car(this._engine);

  void start() {
    _engine.start();
  }
}

class Engine {
  void start() {

  }
}

class DieselEngine {
  void start() {

  }
}

void main() {
  Car car = Car(Engine());
  car.start();
  // kode diatas akan berjalan dengan baik
  // karena class atau objekyang dimasukkan sebagai parameter sesuai

  Car carDiesel = Car(DieselEngine());
  carDiesel.start()
  // kode diatas akan mengalami error
  // karena class atau objeck yang dimasukkan sebagai parameter tidak sesuai
}
```

Untuk mengatasi permasalah tersebut kita dapat menerapkan prinsip dependency inversion. yang pertama kita membuat class abstraction sebgai interface untuk diimplementasika ke high-level dan low-level terlebih dahulu.

GOOD:

```dart
abstract class EngineInterface {
  void start();
}
```

selanjutnya kita gunakan abstrak class yang telah dibuat ke dalam class high-level.

```dart
class Car {
  final EngineInterface _engine;

  Car(this._engine);

  void startEngine() {
    _engine.start();
  }
}
```

Sehingga kita dapat membuat class engine baru dengan masing-masing tipe mesin. selanjutnya kita implementasikan abstrak class ke dalam low-level.

```dart
class DieselEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin diesel');
  }
}

class PetrolEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin petrol');
  }
}

class HybridEngine implements EngineInterface {
  @override
  void start() {
    print('menyalakan mobil dengan mesin hybrid');
  }
}
```

Sehingga, kita dengan mudah dapat membuat jenis Car yang berbeda, cukup dari satu model class Car saja.

```dart
void main(List<String> arguments) {
  Car dieselCar = Car(DieselEngine());
  Car petrolCar = Car(PetrolEngine());
  Car hybridCar = Car(HybridEngine());

  dieselCar.startEngine();
  petrolCar.startEngine();
  hybridCar.startEngine();
}
```
