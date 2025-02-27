// Penerapan abstraction
abstract class Kendaraan {
  // Penerapan encapsulation
  String name;
  String year;
  String color;
  int engineCapacity;

  // Penerapan Constructor
  Kendaraan(this.name, this.year, this.color, this.engineCapacity);

  // Penerapan Polymorphism
  void service(Kendaraan car);
  void displayInfo();
}

