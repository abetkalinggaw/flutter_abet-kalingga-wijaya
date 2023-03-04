// Abet Kalingga Wijaya

List<List<dynamic>> listNama = [
  ['Abet', 21],
  ['Asep', 18],
  ['Kane', 25],
  ['Budi', 20],
];

Map<String, int> listToMap = Map.fromEntries(
  listNama.map(
    (nestedList) => MapEntry(nestedList[0], nestedList[1]),
  ),
);

void main() {
  print('List Data : $listNama');
  print('Convert to Map : $listToMap');
}
