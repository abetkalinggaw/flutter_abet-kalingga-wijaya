// Abet Kalingga Wijaya

import 'dart:io';
import 'dart:async';

Future<List<int>> listMultiplikator(List<int> dataList, int pengali) async {
  List<int> hasil = [];
  for (int i = 0; i < dataList.length; i++) {
    int angkaPengali = await Future.delayed(
        Duration(milliseconds: 10), () => dataList[i] * pengali);
    hasil.add(angkaPengali);
  }
  return hasil;
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5];
  stdout.write("Masukan Angka Pengali = ");
  int pengali = int.parse(stdin.readLineSync()!);

  List<int> hasil = await listMultiplikator(dataList, pengali);

  print("List Data = $dataList");
  print("Hasil = $hasil");
}
