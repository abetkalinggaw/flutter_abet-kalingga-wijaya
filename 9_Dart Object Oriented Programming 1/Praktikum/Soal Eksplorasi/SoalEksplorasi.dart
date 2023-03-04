// Abet Kalingga Wijaya

class Buku {
  int id;
  String judul;
  String penerbit;
  int harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);

  @override
  String toString() {
    return 'Buku ID: $id - Judul: $judul || Penerbit: $penerbit || Harga: Rp.$harga || Kategori: $kategori';
  }
}

class Bookstore {
  List<Buku> listBuku = [];

  void tambahBuku(Buku buku) {
    listBuku.add(buku);
  }

  List<Buku> ambilBuku() {
    return listBuku;
  }

  void hapusBuku(int id) {
    listBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  print("-------- GRAMUDIYU BOOKSTORE --------");
  // Membuat daftar buku
  var rakBuku = Bookstore();

  // Menambah buku ke daftar buku
  rakBuku.tambahBuku(Buku(1, 'Ilmu Hacking', 'Elex Media Komputindo', 135000,
      'Computer & Technology'));
  rakBuku.tambahBuku(Buku(2, 'Harry Potter and The Prisoner of Azkaban',
      'Bloomsbury (UK)', 170000, 'Fiction'));
  rakBuku.tambahBuku(Buku(3, 'The Subtle Art of Not Giving a F*ck', 'HarperOne',
      70000, 'Self-help book'));

  // Print semua buku di rak
  var semuaBuku = rakBuku.ambilBuku();
  print('Rak Buku :');
  semuaBuku.forEach((buku) => print(buku));

  // Menghapus bouku
  var hapusId = 1;
  print('\n------ MENGHAPUS BUKU ID $hapusId DARI RAK ------');
  rakBuku.hapusBuku(hapusId);

  // print rak final
  var finalBuku = rakBuku.ambilBuku();
  print('\nRak Buku Terbaru :');
  finalBuku.forEach((buku) => print(buku));
}
