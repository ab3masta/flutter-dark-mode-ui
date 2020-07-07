import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

FournitureList fournitureList = FournitureList(fournitures: [
  Fourniture(
      firstName: "Classic Leather",
      lastName: "Arm Chair",
      price: 4200,
      image: "assets/images/Item_1.png",
      description:
          "kjdsqbckdjqcdb ugcvdsiuc iugcdiucv iqusgcvdsq iugcuidscv ucyd  uicgviudcv  iucvdctg ciydt gdicv ciduc dctgi"),
  Fourniture(
      firstName: "Poppy Plastic",
      lastName: "Tub Chair",
      price: 3000,
      image: "assets/images/Item_2.png",
      description:
          "kjdsqbckdjqcdb ugcvdsiuc iugcdiucv iqusgcvdsq iugcuidscv ucyd  uicgviudcv  iucvdctg ciydt gdicv ciduc dctgi"),
  Fourniture(
      firstName: "Bar Stool",
      lastName: "Chair",
      price: 2500,
      image: "assets/images/Item_3.png",
      description:
          "kjdsqbckdjqcdb ugcvdsiuc iugcdiucv iqusgcvdsq iugcuidscv ucyd  uicgviudcv  iucvdctg ciydt gdicv ciduc dctgi"),
]);

class FournitureList {
  List<Fourniture> fournitures;
  FournitureList({
    @required this.fournitures,
  });
}

class Fourniture {
  String firstName;
  String lastName;
  String image;
  String description;
  int price;

  Fourniture({
    @required this.firstName,
    @required this.lastName,
    @required this.description,
    @required this.image,
    @required this.price,
  });
}
