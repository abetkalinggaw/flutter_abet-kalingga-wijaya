// Abet Kalingga Wijaya

import 'dart:io';

class bangunRuang {
  final double panjang;
  final double lebar;
  final double tinggi;

  bangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends bangunRuang {
  final double sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends bangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);
}

void main() {
  print('========= Volume Kubus =========');

  stdout.write("Masukkan sisi kubus : ");
  double sisi = double.parse(stdin.readLineSync()!);

  Kubus kubus = Kubus(sisi);

  print('Volume dari bangun ruang = ${kubus.volume()}');

  print('\n========= Volume Balok =========');
  stdout.write("Masukkan panjang balok : ");
  double panjang = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan lebar balok : ");
  double lebar = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi balok : ");
  double tinggi = double.parse(stdin.readLineSync()!);

  Balok balok = Balok(panjang, lebar, tinggi);

  print('Volume dari bangun ruang = ${balok.volume()}');
}
