// Abet Kalingga Wijaya

class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> courses = [];

  Student(this.nama, this.kelas);

  void addCourse(Course course) {
    courses.add(course);
    print('${course.judul} berhasil ditambahkan.');
  }

  void removeCourse(Course course) {
    print('\n--- Proses Menghapus Course ---');
    if (courses.contains(course)) {
      courses.remove(course);
      print('${course.judul} berhasil dihapus.');
    } else {
      print(
          'Course tidak dapat dihapus. Karena ${course.judul} tidak ada di list Course anda.');
    }
  }

  void showCourses() {
    print('\n--- Detail Mahasiswa ---');
    print('Nama : $nama');
    print('Kelas : $kelas');
    print('Daftar Course Yang Diambil : ');
    courses.forEach((course) {
      print('- ${course.judul} : ${course.deskripsi}');
    });
  }
}

void main() {
  Course c1 = Course('Statistik',
      'Materi ini memberikan pengetahuan dan pemahaman kepada mahasiswa untuk dapat menggunakan statistik');
  Course c2 = Course('Desain User Interface',
      'Materi membuat tampilan dalam perangkat lunak agar dapat User Friendly');
  Course c3 = Course('Dart Programming',
      'Materi pemrograman dasar menggunakan Bahasa Pemrograman Dart');

  Student student = Student('Abet Kalingga Wijaya', 'MBKM X');

  // Proses Menambah Course
  print('--- Proses Menambah Course ---');
  student.addCourse(c1);
  student.addCourse(c2);
  student.addCourse(c3);

  // Print Course
  student.showCourses();

  // Proses Menghapus Course Desain User Interface
  student.removeCourse(c2);

  // Print Course
  student.showCourses();

  // Proses Menghapus Course
  student.removeCourse(c2);
}
