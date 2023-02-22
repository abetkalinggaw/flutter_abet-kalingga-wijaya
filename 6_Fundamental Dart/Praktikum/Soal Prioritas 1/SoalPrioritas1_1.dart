//Abet Kalingga Wijaya

int luasPersegi(int sisi) {
  return sisi * sisi;
}

int luasPersegiPanjang(int panjang, int lebar) {
  return panjang * lebar;
}

main() {
  // Persegi
  print("========== Persegi ==========");
  int sisi = 5;
  int hasilLuasP = luasPersegi(sisi);
  int kelilingP = sisi * 4;

  print("Luas Persegi : $hasilLuasP");
  print("Keliling Persegi : $kelilingP");

  print("");

  // Persegi panjang
  print("========== Persegi Panjang ==========");
  int panjang = 2;
  int lebar = 10;
  int hasilLuasPP = luasPersegiPanjang(panjang, lebar);
  int kelilingPP = hasilLuasPP * 2;

  print("Luas Persegi Panjang : $hasilLuasPP");
  print("Keliling Persegi Panjang : $kelilingPP");
}
