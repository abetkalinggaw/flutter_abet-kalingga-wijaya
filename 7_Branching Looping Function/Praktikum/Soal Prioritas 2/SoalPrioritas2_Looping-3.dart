//Abet Kalingga Wijaya
import 'dart:io';

faktorial(double angka) {
  if (angka == 1) {
    return 1;
  }
  return angka * faktorial(angka - 1);
}

void main() {
  print("========== PROGRAM FAKTORIAL ==========");
  stdout.write("Masukan angka : ");
  double angka = double.parse(stdin.readLineSync()!);

  print("Hasil Faktorial dari $angka = ${faktorial(angka)}");
}
