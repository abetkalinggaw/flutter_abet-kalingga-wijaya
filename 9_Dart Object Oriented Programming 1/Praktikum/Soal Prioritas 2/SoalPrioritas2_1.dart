// Abet Kalingga Wijaya

import 'dart:io';

class Calculator {
  double penjumlahan(double angka1, double angka2) {
    return angka1 + angka2;
  }

  double pengurangan(double angka1, double angka2) {
    return angka1 - angka2;
  }

  double perkalian(double angka1, double angka2) {
    return angka1 * angka2;
  }

  double pembagian(double angka1, double angka2) {
    return angka1 / angka2;
  }
}

void main() {
  Calculator calculator = Calculator();
  print('------ Program Calculator ------');
  print('Masukkan dua bilangan yang ingin dihitung !');
  stdout.write('Bilangan pertama : ');
  double angka1 = double.parse(stdin.readLineSync()!);
  stdout.write('Bilangan kedua : ');
  double angka2 = double.parse(stdin.readLineSync()!);

  print('\n-------- Hasil --------');
  print('Hasil penjumlahan : ${calculator.penjumlahan(angka1, angka2)}');
  print('Hasil pengurangan : ${calculator.pengurangan(angka1, angka2)}');
  print('Hasil perkalian : ${calculator.perkalian(angka1, angka2)}');
  print('Hasil pembagian : ${calculator.pembagian(angka1, angka2)}');
}
