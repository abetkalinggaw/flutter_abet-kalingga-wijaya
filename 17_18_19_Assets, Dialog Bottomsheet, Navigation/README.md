## Summary 
### Assets
* Adalah file yang dibundled dan di deployed bersamaan dengan aplikasi.
* Tipe assets : JSON files, icon, image dan font file
* Untuk menentukan assets kita perlu mengidentifikasi setiap file yang akan digunakan pada pubspec.yaml yang terletak pada root project.

### Dialog Bottomsheet
* Dialog bottomsheet ini adalah dialog yang terbuka dari bawah layar. Sebagian besar aplikasi menggunakan bottomsheet ini untuk menambahkan beberapa jenis pengaturan tambahan.
* Alert dialog : berguna untuk menginformasikan kepada pengguna tentang situasi tertentu, membutuhkan helper method `showDialog`

### Navigation
* Cara agar aplikasi dapat berpindah dari satu halaman ke halaman lain
* Agar aplikasi dapat berpindah halaman dapat menggunakan `Navigator.push()` dan agar kembali ke halaman sebelumnya dapat menggukanan `Navigator.pop()`
* Navigation menggunakan routes halaman harus memiliki alamat/route, untuk mendaftarkan route dapat menambah initialRoute dan routes pada MaterialApp. Tiap route adalah fungsi yang membentuk halaman