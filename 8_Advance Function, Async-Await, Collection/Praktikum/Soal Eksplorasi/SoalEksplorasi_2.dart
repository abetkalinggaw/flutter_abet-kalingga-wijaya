// Abet Kalingga Wijaya

void main() {
  List<String> data = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  Map<String, int> frequency = {};

  for (var i = 0; i < data.length; i++) {
    var listData = data[i];
    frequency[listData] = (frequency[listData] ?? 0) + 1;
  }

  print('List Data : $data');
  frequency.forEach((data, jumlah) {
    print('- $data : $jumlah');
  });
}
