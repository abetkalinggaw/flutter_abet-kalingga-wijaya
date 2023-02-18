// Abet Kalingga Wijaya

double volumeTabung(double phi, int r, int t) {
  return phi * (r * r) * t;
}

main() {
  print("========== Tabung ==========");
  double phi = 3.14;
  int r = 5;
  int t = 10;

  double hasilVolume = volumeTabung(phi, r, t);

  print("Volume Tabung = $hasilVolume");
}
