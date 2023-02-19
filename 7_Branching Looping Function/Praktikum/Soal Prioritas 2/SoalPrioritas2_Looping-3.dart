import 'dart:io';

findFactorial(double angka) {
  if (angka == 1) {
    return 1;
  }
  return angka * findFactorial(angka - 1);
}

void main() {
  print("========== PROGRAM FAKTORIAL ==========");
  stdout.write("Masukan angka : ");
  double angka = double.parse(stdin.readLineSync()!);

  print("Hasil Faktorial dari $angka = ${findFactorial(angka)}");
}
