// Abet Kalingga Wijaya
import 'dart:io';

void main() {
  int rows = 8;

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= (rows - i); j++) {
      stdout.write("   ");
    }
    for (int k = 1; k <= ((2 * i) - 1); k++) {
      stdout.write("*" + "  ");
    }
    stdout.writeln();
  }
}
