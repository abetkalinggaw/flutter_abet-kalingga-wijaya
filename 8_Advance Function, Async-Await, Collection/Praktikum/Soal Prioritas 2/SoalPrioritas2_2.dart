// Abet Kalingga Wijaya

void main() {
  List<int> nilai = [7, 5, 3, 5, 2, 1];
  double totalNilai = 0;
  for (int i = 0; i < nilai.length; i++) {
    totalNilai += nilai[i];
  }
  double rataRata = totalNilai / nilai.length;

  print('Data nilai : $nilai');
  print('Nilai Rata-rata : ${rataRata.ceil()}');
}
