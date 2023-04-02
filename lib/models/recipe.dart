import 'package:flutter/material.dart';

class Recipe {
  Recipe(
    {this.recipeName = '',
    this.recipeImage = '',
    this.recipeMaker = '',
    this.startColor,
    this.endColor});

  String recipeName;
  String recipeImage;
  String recipeMaker;
  Color? startColor;
  Color? endColor;
}

var recipes = [
  Recipe(
    recipeName: 'Super Chocolate Cake',
    recipeImage: 'chocolate_cake.jpg',
    recipeMaker: 'Michael',
    startColor: const Color(0xFF5272F3),
    endColor: const Color(0xFF5A9DF5)
  ),
  Recipe(
    recipeName: 'Cookies With Chocolate Drops',
    recipeImage: 'cookies.jpg',
    recipeMaker: 'Jane',
    startColor: const Color(0xFFB352F3),
    endColor: const Color(0xFFB87FFA)
  ),
  Recipe(
    recipeName: 'Spaghetti Carbonara',
    recipeImage: 'carbonara.jpg',
    recipeMaker: 'Sarah',
    startColor: const Color.fromARGB(255, 243, 82, 82),
    endColor: const Color.fromARGB(255, 250, 127, 127)
  ),
];