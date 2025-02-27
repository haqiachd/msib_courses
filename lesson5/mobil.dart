import 'kendaraan.dart';

// Penerapan Inheritance
class Mobil extends Kendaraan {
  int doorCount;

  Mobil(String name, String year, String color, int engineCapacity, this.doorCount)
      : super(name, year, color, engineCapacity);

  @override
  void service(Kendaraan car) {
    print('Servis mobil $name ($year) dilakukan .');
  }

  @override
  void displayInfo() {
    print('- Mobil: $name ($year) - Warna: $color - Kapasitas Mesin: ${engineCapacity}cc - $doorCount Pintu');
  }
}

