import 'dart:io';

void main() {
  String kategori;
  stdout.write('Masukan nama: ');
  String nama = stdin.readLineSync()!;
  stdout.write('Masukan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);

  // cek nilai pake if
  if (nilai >= 90) {
    kategori = 'Kategori: A - Sangat Baik';
  } else if (nilai >= 80) {
    kategori = 'Kategori: B - Baik';
  } else if (nilai >= 70) {
    kategori = 'Kategori: C - Cukup';
  } else if (nilai >= 60) {
    kategori = 'Kategori: D - Kurang';
  } else {
    kategori = 'Kategori: E - Gagal';
  }

  // cek nilai pake switch
  switch (nilai ~/ 10) {
    case 10:
    case 9:
      kategori = 'A';
      break;
    case 8:
      kategori = 'B';
      break;
    case 7:
      kategori = 'C';
      break;
    case 6:
      kategori = 'D';
      break;
    default:
      kategori = 'E';
  }

  print('Kategori: $kategori');
}
