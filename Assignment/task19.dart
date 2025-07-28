
// Simple Vehicle superclass
class Vehicle {
  String type;
  String fuelType;
  int maxSpeed;

  Vehicle(this.type, this.fuelType, this.maxSpeed);

  void displayDetails() {
    print('Type: $type');
    print('Fuel Type: $fuelType');
    print('Max Speed: $maxSpeed km/h');
  }
}

// Car subclass
class Car extends Vehicle {
  Car(String fuelType, int maxSpeed) : super('Car', fuelType, maxSpeed);
}

// Bike subclass
class Bike extends Vehicle {
  Bike(String fuelType, int maxSpeed) : super('Bike', fuelType, maxSpeed);
}

void main() {
  Car car = Car('Petrol', 220);
  Bike bike = Bike('Electric', 120);

  print('Car Details:');
  car.displayDetails();
  print('');
  print('Bike Details:');
  bike.displayDetails();
}
