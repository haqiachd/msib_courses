import 'dart:io';

int hitungTotalGaji(List<int> gaji) {
  return gaji.reduce((a, b) => a + b);
}

int tunjanganPegawai(String jabatan, [int tunjangan = 5000]) {
  if (jabatan.toLowerCase() == 'manager') {
    return tunjangan * 2;
  } else if (['prajurit', 'sersan', 'letnan', 'kapten']
      .contains(jabatan.toLowerCase())) {
    return tunjangan * 3;
  }
  return tunjangan;
}

int hitungBonus(int tahunKerja) {
  if (tahunKerja == 0) return 0;
  return 500000 + hitungBonus(tahunKerja - 1);
}

int gajiBersih(int gaji) => (gaji * 0.9).toInt();

void main() {
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);
  print('----------------------\n');

  List<Map<String, dynamic>> pegawai = [];
  List<String> jabatanList = ['Jenderal', 'Kolonel', 'Mayor', 'Letnan', 'Sersan'];

  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-$i: ");
    String nama = stdin.readLineSync()!;

    print("Pilih jabatan pegawai ke-$i ($nama) : ");
    for (int j = 0; j < jabatanList.length; j++) {
      print("${j + 1}. ${jabatanList[j]}");
    }
    stdout.write("Silahkan masukan nomor jabawan : ");
    int pilihanJabatan = int.parse(stdin.readLineSync()!);
    String jabatan = jabatanList[pilihanJabatan - 1];

    stdout.write("Masukkan gaji pegawai ke-$i ($nama) : ");
    int gaji = int.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tahun kerja pegawai ke-$i ($nama) : ");
    int tahunKerja = int.parse(stdin.readLineSync()!);

    print('\n--------------------------------\n');
    pegawai.add({
      'id': i,
      'nama': nama,
      'jabatan': jabatan,
      'gaji': gaji,
      'tunjangan': tunjanganPegawai(jabatan),
      'bonus': hitungBonus(tahunKerja),
      'gajiBersih': gajiBersih(gaji),
    });
  }

  print("\n=== Daftar Pegawai ===");
  print("=======================================================");
  print("| ID  | Nama       | Jabatan   | Gaji     | Gaji Bersih |");
  print("=======================================================");
  for (var p in pegawai) {
    print("| ${p['id'].toString().padRight(3)} "
        "| ${p['nama'].padRight(10)} "
        "| ${p['jabatan'].padRight(8)} "
        "| ${p['gaji'].toString().padRight(8)} "
        "| ${p['gajiBersih'].toString().padRight(10)} |");
  }
  print("=======================================================");

  print("\n=== Pegawai dengan ID Genap ===");
  pegawai
      .where((p) => p['id'] % 2 == 0)
      .forEach((p) => print("- ${p['nama']}"));

  print("\n=== Pegawai dengan ID Ganjil ===");
  pegawai
      .where((p) => p['id'] % 2 != 0)
      .forEach((p) => print("- ${p['nama']}"));

  print("\nTotal Gaji Pegawai: ${hitungTotalGaji(pegawai.map((p) => p['gaji'] as int).toList())}");
}
