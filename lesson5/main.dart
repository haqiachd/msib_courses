// main.dart
import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  Garasi garage = Garasi();

  // Membuat object dari class mobile
  var car1 = Mobil('Toyota Camry', '2022', 'Black', 2500, 4);
  var car2 = Mobil('Honda Civic', '2021', 'White', 1800, 4);
  var car3 = Mobil('BMW X5', '2023', 'Gray', 3000, 4);

  // Membuat objct dari class motor
  var motorcycle1 = Motor('Yamaha R15', '2020', 'Blue', 155, false);
  var motorcycle2 = Motor('Honda Vario', '2022', 'Red', 125, true);
  var motorcycle3 = Motor('Kawasaki Ninja 250', '2023', 'Green', 250, false);

  // Menambahkan kendaraan ke garasi
  garage.addVehicle(car1);
  garage.addVehicle(car2);
  garage.addVehicle(car3);
  garage.addVehicle(motorcycle1);
  garage.addVehicle(motorcycle2);
  garage.addVehicle(motorcycle3);

  // Menampilkan daftar kendaraan di garasi
  garage.displayVehicles();
  // Melakukan servis untuk semua kendaraan
  garage.serviceAllVehicles('2025-02-27');
}

