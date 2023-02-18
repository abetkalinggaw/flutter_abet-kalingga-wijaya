//Abet Kalingga Wijaya
import 'dart:io';

double luasLingkaran(double phi, int r) {
  return phi * r * r;
}

double kelilingLingkaran(double phi, int r) {
  return 2 * phi * r;
}

main() {
  print("========== Lingkaran ==========");
  double phi = 3.14;
  int r = 5;

  double hasilLuas = luasLingkaran(phi, r);
  double hasilKeliling = kelilingLingkaran(phi, r);

  print("Luas Lingkaran : $hasilLuas");
  print("Keliling Lingkaran : $hasilKeliling");
}
