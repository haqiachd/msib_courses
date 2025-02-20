void main() {
  // List nama mahasiswa
  List<String> names = [
    "Haqi",
    "Pram",
    "Dani",
    "Mahen",
    "Fadil",
  ];

  // List matakulaih
  Set<String> courses = {
    "Mobile Framework",
    "Web Framework",
    "Image Processing",
    "Embedded System",
    "Artificial Intelligence",
  };

  // data mahasiswa
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    names[0]: {
      "nim": "E412221",
      "mataKuliah": [courses.elementAt(0), courses.elementAt(1)]
    },
    names[1]: {
      "nim": "E412222",
      "mataKuliah": [courses.elementAt(2), courses.elementAt(3)]
    },
    names[2]: {
      "nim": "E412223",
      "mataKuliah": [courses.elementAt(4), courses.elementAt(1)]
    },
    names[3]: {
      "nim": "E412224",
      "mataKuliah": [courses.elementAt(0), courses.elementAt(2)]
    },
    names[4]: {
      "nim": "E412225",
      "mataKuliah": [courses.elementAt(3), courses.elementAt(4)]
    }
  };

  // menambahkan mahasiswa baru
  String mahasiswaBaru = "Michael";
  names.add(mahasiswaBaru);
  dataMahasiswa[mahasiswaBaru] = {
    "nim": "E412226",
    "mataKuliah": [courses.elementAt(0), courses.elementAt(4)]
  };

  // menghapus satu mahasiswa dari daftar
  String mahasiswaHapus = names[2];
  names.remove(mahasiswaHapus);
  dataMahasiswa.remove(mahasiswaHapus);

  // Menampilkan daftar mahasiswa beserta NIM dan mata kuliahnya
  print("Daftar Mahasiswa setelah perubahan:");
  for (var nama in dataMahasiswa.keys) {
    print("Nama: $nama");
    print("NIM: ${dataMahasiswa[nama]!['nim']}");
    print("Mata Kuliah: ${dataMahasiswa[nama]!['mataKuliah'].join(', ')}");
    print("-" * 60);
  }

}
