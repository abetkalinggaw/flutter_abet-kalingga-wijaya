// Abet Kalingga Wijaya
import 'dart:io';

main() {
  int rows = 6;

  // ATAS
  for (int i = rows; i > 1; i--) {
    for (int j = 1; j <= (rows - i); j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= ((2 * i) - 1); k++) {
      stdout.write("0");
    }
    stdout.writeln();
  }

  // BAWAH
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= (rows - i); j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= ((2 * i) - 1); k++) {
      stdout.write("0");
    }
    stdout.writeln();
  }
}
