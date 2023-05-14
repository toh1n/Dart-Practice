/*
Name : Mazharul Islam Tohin
Assignment : 3
Date : 15-05-2023
Problem :
Create a class Car with the following properties:
● brand: a string representing the brand of the car
● model: a string representing the model of the car
● year: an integer representing the year the car was made
● milesDriven: a double representing the number of miles driven by the car
The class should have the following methods:
● drive(double miles): a method that takes a double parameter representing the
number of miles driven and adds it to the milesDriven property
● getMilesDriven(): a method that returns the value of the milesDriven property
● getBrand(): a method that returns the value of the brand property
● getModel(): a method that returns the value of the model property
● getYear(): a method that returns the value of the year property


● getAge(): a method that returns the age of the car (i.e. the difference between the
current year and the year property)
★ The class should also have a static property called numberOfCars that keeps track
of the number of Car objects that have been created. This property should be
incremented every time a Car object is created.
In the main() function, create three Car objects with different brands, models, and years.
Drive each car a different number of miles using the drive() method.
Print out the brand, model, year, and miles driven for each car using the
getBrand(), getModel(), getYear(), and getMilesDriven() methods, respectively.
Also print out the age of each car using the getAge() method.
Finally, print out the total number of Car objects created using the numberOfCars static
property.
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
