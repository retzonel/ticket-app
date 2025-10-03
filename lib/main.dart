import 'package:flutter/material.dart';

void main() {
  print("Hello World");
  var car = Car();
  car.wheelsNum();
  // runApp(const MyApp());
}

abstract class Vehicle {
  Vehicle();
  int wheels = 10;
  void wheelsNum();
}

class Car extends Vehicle {
  void carType() {
    print("land runner");
  }

  @override
  void wheelsNum() {
    print("the car's wheels number is $wheels");
  }
}
