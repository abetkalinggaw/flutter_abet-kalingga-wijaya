// Abet Kalingga Wijaya

class Hewan {
  double berat;
  Hewan(this.berat);
}

// Class Mobil
class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  // Method untuk menghitung total muatan mobil
  double totalMuatan() {
    double total = 0;
    for (Hewan hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }

  // Method untuk menambahkan hewan pada muatan
  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print('Hewan dengan berat ${hewan.berat} ditambahkan ke muatan.');
    } else {
      print('Kapasitas muatan tidak mencukupi.');
    }
  }
}

void main() {
  Mobil mobil = Mobil(500);

  Hewan kucing = Hewan(3);
  mobil.tambahMuatan(kucing);

  Hewan anjing = Hewan(10);
  mobil.tambahMuatan(anjing);

  print('Total muatan mobil: ${mobil.totalMuatan()} kg');
}
