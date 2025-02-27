import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> vehicleList = [];

  void addVehicle(Kendaraan vehicle) {
    vehicleList.add(vehicle);
  }

  void displayVehicles() {
    print('\nDaftar kendaraan yang ada didalam Garasi:');
    for (var vehicle in vehicleList) {
      vehicle.displayInfo();
    }
  }

  void serviceAllVehicles(String serviceDate) {
    print('\nMelakukan servis semua kendaraan pada tanggal $serviceDate...');
    for (var vehicle in vehicleList) {
      vehicle.service(vehicle);
    }
  }
}