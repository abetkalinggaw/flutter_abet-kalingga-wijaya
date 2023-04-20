class ContactModel {
  late int? id;
  late String nama;
  late String nomor;

  ContactModel({
    this.id,
    required this.nama,
    required this.nomor,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'nomor': nomor,
    };
  }

  ContactModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nama = map['nama'];
    nomor = map['nomor'];
  }
}
