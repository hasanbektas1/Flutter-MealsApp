import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoriler"),
      ),
      body: InkWell(
        onTap: () {
          print("Geliştirilecek..");
        },
        child: Card(
          child: ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (ctx, index) => Card(
              elevation: 5,
              color: Colors.white,
              child: Column(children: [
                Text(
                  favoriteMeals[index].name,
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
