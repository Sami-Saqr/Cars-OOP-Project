// abstract class
abstract class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo(); // abstract method
}

// inheritance + polymorphism
class Car extends Vehicle {
  String model;
  static int carCount = 0; // static member

  // constructor
  Car(String brand, this.model, int year) : super(brand, year) {
    carCount++;
  }

  // encapsulation (private field with getter)
  int _price = 0;

  int get price => _price;

  set price(int value) {
    if (value > 0) _price = value;
  }

  // override method (polymorphism)
  @override
  void displayInfo() {
    print("Car: $brand $model - $year - \$$_price");
  }
}

// main function
void main() {
  // object
  Car car1 = Car("Toyota", "Corolla", 2020);
  car1.price = 20000;

  Car car2 = Car("BMW", "X5", 2023);
  car2.price = 50000;

  car1.displayInfo();
  car2.displayInfo();

  print("Total Cars in Inventory: ${Car.carCount}");
}
