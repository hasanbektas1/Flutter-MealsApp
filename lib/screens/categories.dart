import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/categories__provider.dart';
import 'package:mealsapp/providers/meals_provider.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';
import 'package:mealsapp/widgets/menu_card.dart';

class Categories extends ConsumerWidget {
  const Categories({Key? key}) : super(key: key);

  void _selectCategory(
      BuildContext context, Category category, List<Meal> mealsProvider) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
              meals: mealsProvider
                  .where((element) => element.categoryId == category.id)
                  .toList(),
              categoryName: category,
            )));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealsFromState = ref.watch(mealsProvider);
    final categoriesFromState = ref.watch(categoriesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Favorites()));
                },
              ))
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1),
        children: [
          for (final category in categoriesFromState)
            CategoryCard(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category, mealsFromState);
              },
            )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://st4.depositphotos.com/3538103/40645/v/950/depositphotos_406455800-stock-illustration-user-icon-vector-people-icon.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "Hasan Bektaş",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ]),
            ),
            for (final menu in menus)
              Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                )),
                child: MenuCard(
                  menu: menu,
                ),
              )
          ],
        ),
      ),
    );
  }
}
