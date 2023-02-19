// Abet Kalingga Wijaya
import 'dart:io';

main() {
  print("======= PROGRAM TABEL PERKALIAN =======");
  int i, j;
  stdout.write("Masukan angka : ");
  int angka = int.parse(stdin.readLineSync()!);
  print("--" * 20);

  for (i = 1; i <= angka; i++) {
    for (j = 1; j <= angka; j++) {
      stdout.write(i * j);
      stdout.write("\t");
    }
    print(" ");
  }
}
