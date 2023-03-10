// Abet Kalingga Wijaya

import 'dart:io';

class Matematika {
  double hasil(double x, double y) {
    return 0;
  }
}

class KelipatanPersekutuanTerkecil extends Matematika {
  double x, y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  double hasil(double x, double y) {
    double max = x > y ? x : y;

    while (true) {
      if (max % this.x == 0 && max % this.y == 0) {
        return max;
      }
      max++;
    }
  }
}

class FaktorPersekutuanTerbesar extends Matematika {
  double x, y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  double hasil(double x, double y) {
    while (x != y) {
      if (x > y) {
        x = x - y;
      } else {
        y = y - x;
      }
    }
    return x;
  }
}

void main() {
  stdout.write("Masukkan Bilangan x : ");
  double x = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Bilangan y : ");
  double y = double.parse(stdin.readLineSync()!);

  KelipatanPersekutuanTerkecil operationKPK =
      KelipatanPersekutuanTerkecil(x, y);
  FaktorPersekutuanTerbesar operationFPB = FaktorPersekutuanTerbesar(x, y);

  print(
      "Kelipatan Persekutuan Terkecil dari $x dan $y adalah ${operationKPK.hasil(x, y)}");
  print(
      "Faktor Persekutuan Terbesar dari $x dan $y adalah ${operationFPB.hasil(x, y)}");
}
