//Abet Kalingga Wijaya
import 'dart:io';

double luasLingkaran(double phi, int r) {
  return phi * r * r;
}

main() {
  print("========== Program Luas Lingkaran ==========");
  double phi = 3.14;
  stdout.write("Masukan jari-jari lingkaran : ");
  int r = int.parse(stdin.readLineSync()!);
  double hasilLuas = luasLingkaran(phi, r);

  print("Luas Lingkaran : $hasilLuas");
}
