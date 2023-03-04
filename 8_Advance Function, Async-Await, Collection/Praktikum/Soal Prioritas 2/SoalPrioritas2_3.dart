// Abet Kalingga Wijaya

import 'dart:async';
import 'dart:io';

void main() {
  stdout.write("Masukkan sebuah bilangan : ");
  int angka = int.parse(stdin.readLineSync()!);
  print("------------");

  calculatefaktorial(angka).then((hasilFaktorial) =>
      print("Hasil Faktorial dari $angka adalah $hasilFaktorial"));
}

Future<int> calculatefaktorial(int angka) async {
  if (angka < 0) {
    throw Exception("Bilangan tidak boleh negatif");
  }

  int faktorial = 1;
  for (int i = 1; i <= angka; i++) {
    faktorial *= i;
    await Future.delayed(Duration(milliseconds: 100));
  }
  return faktorial;
}
