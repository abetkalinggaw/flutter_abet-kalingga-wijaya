// Abet Kalingga Wijaya
import 'dart:io';

void main() {
  print("========== PROGRAM PENCARI FAKTOR BILANGAN ==========");
  stdout.write("Masukan angka : ");
  int angka = int.parse(stdin.readLineSync()!);
  print("==================== HASIL ====================");

  for (var i = 1; i < angka; i++) {
    if (angka % i == 0) {
      print(i);
    }
  }
}
