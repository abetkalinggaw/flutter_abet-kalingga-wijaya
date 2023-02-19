// Abet Kalingga Wijaya
import 'dart:io';

bool isPrime(angka) {
  for (var i = 2; i <= angka / i; ++i) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}

main() {
  stdout.write("Masukan angka : ");
  int angka = int.parse(stdin.readLineSync()!);

  if (isPrime(angka)) {
    print("$angka bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}
