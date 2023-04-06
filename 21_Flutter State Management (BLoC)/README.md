## Summary

### Flutter State Management (BLoC)

##### Declarative UI

- Flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini.
- State adalah ketika sebuah widget sedang aktif adan widget tersebut menyimpan data di memori, Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah. Ada 2 jenis state dalam Flutter yaitu, ephemeral state dan app state.

##### Ephemeral State

- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses widgetnya, contoh : PageView, BottomNavigationBar, Switch Button.
- State ini tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi `setState()`

##### App State

Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contoh : Login info, Penganturan preferensi user, keranjang belanja yang dimana informasi yang pengguna pilih di suatu screen akan muncul di screen yang berbeda.

##### Pendekatan State Management

- setState()
- Provider
- BLoC
