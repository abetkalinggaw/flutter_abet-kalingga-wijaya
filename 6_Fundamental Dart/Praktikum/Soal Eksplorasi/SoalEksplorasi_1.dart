// Abet Kalingga Wijaya
import 'dart:io';

void main() {
  print("========== Program Palindrome ========== ");
  stdout.write("Masukkan Kata : ");
  String? kata = stdin.readLineSync();
  String? balik = kata!.split('').reversed.join('');

  var upKata = kata.toUpperCase();
  var upBalik = balik.toUpperCase();

  print("============== Checking ==============");

  if (kata == balik) {
    print("$upKata Palindrome");
    print(
        "Penjelasan : Kata $upKata jika dibalik adalah $upBalik sehingga kata ini merupakan kata Palindrome.");
  } else {
    print("$upKata Bukan Palindrome");
    print(
        "Penjelasan : Kata Kata $upKata jika dibalik adalah $upBalik sehingga kata ini bukan Palindrome karena ketika dibalik cara membacanya menjadi berbeda.");
  }
}
