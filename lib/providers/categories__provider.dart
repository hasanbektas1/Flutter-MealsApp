import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/category.dart';

final categoriesProvider = Provider((ProviderRef ref) {
  return const [
    Category(id: "1", name: "Başlangıçlar", color: Colors.purple),
    Category(id: "2", name: "Ara Sıcaklar", color: Colors.pink),
    Category(id: "3", name: "Ana Yemekler", color: Colors.yellow),
    Category(id: "4", name: "Tatlılar", color: Colors.red),
    Category(id: "5", name: "Mezeler", color: Colors.green),
  ];
});
