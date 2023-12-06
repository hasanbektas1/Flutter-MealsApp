import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  void _selectCategory(BuildContext context, Category category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealList(
            meals: meals
                .where((element) => element.categoryId == category.id)
                .toList())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bir kategori seçin")),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final category in categories)
            CategoryCard(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
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
                    "https://cdn.yemek.com/uploads/2022/09/YemekCom_Site_Onizleme_1200x630.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Text(
                  "Kategoriler",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            for (final category in categories)
              Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                )),
                child: CategoryCard(
                  category: category,
                  onSelectCategory: () {
                    _selectCategory(context, category);
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
