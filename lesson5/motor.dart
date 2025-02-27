import 'kendaraan.dart';

// Penerapan Inheritance
class Motor extends Kendaraan {
  bool isMatic;

  Motor(String name, String year, String color, int engineCapacity, this.isMatic)
      : super(name, year, color, engineCapacity);

  @override
  void service(Kendaraan motor) {
    print('Servis motor $name ($year) dilakukan .');
  }

  @override
  void displayInfo() {
    print('- Motor: $name ($year) - Warna: $color - Kapasitas Mesin: ${engineCapacity}cc - ${isMatic ? "Matic" : "Manual"}');
  }
}
