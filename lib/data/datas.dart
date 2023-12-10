import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/menu.dart';

const menus = [
  Menu(name: "Favoriler", iconn: Icon(Icons.favorite)),
  Menu(name: "Hesabım", iconn: Icon(Icons.person)),
  Menu(name: "Tanıtım", iconn: Icon(Icons.pause_presentation)),
  Menu(name: "Yardım Merkezi", iconn: Icon(Icons.help)),
  Menu(name: "Karanlık Mod", iconn: Icon(Icons.dark_mode)),
];

const categories = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.pink),
  Category(id: "3", name: "Ana Yemekler", color: Colors.yellow),
  Category(id: "4", name: "Tatlılar", color: Colors.red),
  Category(id: "5", name: "Mezeler", color: Colors.green),
];
