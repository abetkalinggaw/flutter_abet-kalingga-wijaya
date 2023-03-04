// Abet Kalingga Wijaya

void main() {
  // INPUT 1
  List<String> listData = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];

  Set<String> uniqueData = Set<String>.from(listData);
  List<String> finalData = uniqueData.toList();

  print("List Data : $listData");
  print("Final List Data : $finalData");
}
