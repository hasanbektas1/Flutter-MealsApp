import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

const categories = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Mezeler", color: Colors.red),
  Category(id: "3", name: "Ana Yemekler", color: Colors.green),
  Category(id: "5", name: "Tatlılar", color: Colors.yellow),
  Category(id: "5", name: "Ara Sıcaklar", color: Colors.pink),
];

const meals = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Katmer",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
];
