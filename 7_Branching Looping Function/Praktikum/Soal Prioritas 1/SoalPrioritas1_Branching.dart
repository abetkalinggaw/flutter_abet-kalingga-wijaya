// Abet Kalingga Wijaya
import 'dart:io';

void main() {
  stdout.write("Masukan angka : ");
  int nilai = int.parse(stdin.readLineSync()!);

  if (nilai > 70) {
    print("Nilai A");
  } else if (nilai > 40) {
    print("Nilai B");
  } else if (nilai > 0) {
    print("Nilai C");
  } else {
    return;
  }
}
