/*
Create a class Vehicle
It has two properties: brand (String) and year (int)
It has a constructor to initialize both.
Create a class Car that extends Vehicle
Add a new property model (String)
Use a constructor that takes all 3 values: brand, year, and model
In the main() function:
Create a Car object and print all its details.
 */
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);
  void displayInfo() {
    print('Brand: $brand');
    print('Year: $year');
  }
}
class Car extends Vehicle {
  String model;

  Car(String brand, int year, this.model) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Model: $model');
  }
}
void main(){
  Car car = Car('Toyota', 2020, 'Corolla');
  car.displayInfo();
}
