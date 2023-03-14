## Summary
### Deep Dive Into Dart Object Oriented Programming

### Constructor
* Method yang dijalankan saat pembuatan object
* Dapat menerima parameter
* Tidak memiliki nilai return
* Nama sama dengan nama class yang dibuat

### Inheritance
* Membuat class baru dengan memanfaatkan class yang sudah ada
* Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru

### Overriding Method
* Menulis ulang method yang ada pada super-class
* Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda
* Overriding dapat dilakuan pada class yang akan melakukan inheritance, method sudah pada class induk, method baru ditulis ulang seperti membuat method baru pada class anak. untuk melakukan overriding perlu menambahkan tanda @override di baris sebelum method yang dibuat.

### Interface
* Interface berupa class yang menunjukkan method apa saja yang ada pada suatu class
* Seluruh method wajib di-override, digunakan dengan menggunakan implements 

class induk => `class Hewan {}`
interface => `class Kambing implements Hewan {}`

### Abstract Class
* Berupa class abstrak yang menunjukkan method apa saja yang ada pada suatu class
* Menggunakan extends
* Tidak dapat dibuat objek, tidak semua method harus di override

abstract class => `class Hewan {}` => `class Kambing extends Hewan {}`

### Polymorphism
* Kemampuan data berubah menjadi bentuk lain, tipe data yang dapat dihunakan adalah super class
* Dapat dilakukan pada class dengan extends atau implements

### Generics
* Generics dapat digunakan pada class atau fungsi yang dapat memberi kemempuan agar dapat menerima data dengan tipe data yang berbeda
* Tipe data yang diinginkan dapat ditentukan saat membuat class atau saat menjalankan fungsi