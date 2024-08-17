import 'package:flutter/cupertino.dart';
//class food
class Food{
  late final String name;
  late final String description;
  late final String imagePath;
  late final double price;
  final FoodCategory category ;
  List<Addon> availableAddons;

 Food({required this.name,
 required this.description,
 required this.imagePath,
 required this.price,
 required this.category ,
 required this.availableAddons });
}

//food categories
enum FoodCategory{
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food addons

class Addon{
  late String name;
  late double price;

  Addon({required this.name,
  required this.price});
}