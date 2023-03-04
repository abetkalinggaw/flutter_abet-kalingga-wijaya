## Summary
### Advance Functions, Async-Await, Collection in Dart

### Advance Functions
Dalam bahasa pemrograman dart terdapat beberapa fungsi bawaan dari yang bisa kita gunakan. Berikut merupakan fungsi yang umum :

* Numbers (int, double)
* Strings (String)
* Booleans (bool)
* Lists (List, array)
* Sets (Set)
* Maps (Map)
* Runes (Runes; seting diganti dengan karakter API)
* Simbol (Symbol)
* Nilai nol (Null)

Beberapa jenis fungsi lain yang memiliki peran khusus untuk melengkapi code yang kita susun dalam bahasa pemrograman Dart :
* Object
* Enum
* Future and Stream
* Iterable
* Never
* dynamic
* void


### Async-Await
Operasi asinkronus merupakan operasi yang membiarkan program menyelesaikan pekerjaan sambil menunggu operasi lain selesai. contohnya adalah sebahai berikut :
* Mengambil data melalui jaringan.
* Menulis ke database.
* Membaca data dari file.

Perhitungan asinkron seperti itu biasanya memberikan hasilnya sebagai `Future`. Untuk berinteraksi dengan hasil asinkronus ini, kita dapat menggunakan kata kunci `Async` dan `Await` dalam source code.

### Collections
Collections adalah objek yang mewakili sekelompok objek, yang disebut elemen. Iterables adalah sejenis koleksi.

Collections bisa kosong/empty atau bisa berisi banyak elemen sekaligus. Tergantung pada tujuan collections ini diperuntukan, Collections dapat memiliki struktur dan implementasi yang berbeda.
Contoh Collections pada bahasa pemrograman Dart : 

* Daftar : Digunakan untuk membaca elemen berdasarkan index.
* Set : Digunakan untuk memuat elemen yang hanya dapat muncul sekali.
* Map : Digunakan untuk membaca elemen menggunakan key.


Reference :
<https://dart.dev/guides/language/language-tour>
<https://dart.dev/codelabs/async-await>
<https://dart.dev/codelabs/iterables>