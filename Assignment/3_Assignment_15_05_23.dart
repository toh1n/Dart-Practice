/*
Name : Mazharul Islam Tohin
Assignment : 3
Date : 15-05-2023
*/


class Car{
  String brand = "";
  String model = "";
  int year = 0;
  double milesDriven = 0;
  static int numberOfCars = 0;

  Car(String brand,String model,int year){
    this.brand = brand;
    this.model = model;
    this.year = year;
    numberOfCars++;
  }

  void drive(double miles){
    milesDriven += miles;
  }

  getMilesDriven(){
    return milesDriven;
  }
  getBrand(){
    return brand;
  }
  getModel(){
    return model;
  }
  getYear(){
    return year;
  }
  getAge(){
    return 2023 - year;
  }

}

main(){
  Car car1 = Car("Aston Martin", "DB5", 1964);
  Car car2 = Car("Honda", "Civic", 2020);
  Car car3 = Car("Ford", "F-150", 2010);
  car1.drive(5000);
  car2.drive(1000);
  car3.drive(2000);

  print("Name : ${car1.getBrand()}");
  print("Model : ${car1.getModel()}");
  print("Year : ${car1.getYear()}");
  print("Miles Driven : ${car1.getMilesDriven()}");
  print("Age : ${car1.getAge()}");

  print("Name : ${car2.getBrand()}");
  print("Model : ${car2.getModel()}");
  print("Year : ${car2.getYear()}");
  print("Miles Driven : ${car2.getMilesDriven()}");
  print("Age : ${car2.getAge()}");

  print("Name : ${car3.getBrand()}");
  print("Model : ${car3.getModel()}");
  print("Year : ${car3.getYear()}");
  print("Miles Driven : ${car3.getMilesDriven()}");
  print("Age : ${car3.getAge()}");

  print("No. of car : ${Car.numberOfCars}");


}