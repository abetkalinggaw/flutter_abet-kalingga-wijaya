// Abet Kalingga Wijaya
import 'dart:io';

main() {
  print("======= PROGRAM TABEL PERKALIAN =======");
  var col, row;
  stdout.write("Masukan angka : ");
  int angka = int.parse(stdin.readLineSync()!);
  print("--" * 20);

  for (col = 1; col <= angka; col++) {
    for (row = 1; row <= angka; row++) {
      stdout.write(col * row);
      stdout.write("\t");
    }
    print(" ");
  }
}
