## Summary

### Flutter State Management (Provider)

###### State

- Data yang dapat dibaca saat widget dibuat dan dapat berubah saat widget sedang aktif. State ini hanya dimiliki oleh StatefulWidget
- State dibuat sebagai property class dan digunakan pada widget saat build.
- Untuk mengubah state kita dapat menggunakan method `setState` pada widget.

###### Global State

Global State perlu dibuat dan digunakan karena supaya widget satu dengan lainnya dapat memanfaatkan state yang sama dengan mudah.

###### Provider

Untuk menggunakan Provider kita perlu menambahkan package provider pada bagian dependencies dalam file pubspec.yaml dan jalankan perintah `flutter pub get` pada terminal.
