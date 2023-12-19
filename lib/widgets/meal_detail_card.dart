import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class MealDetailCard extends StatelessWidget {
  const MealDetailCard({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            color: Colors.black,
            shadowColor: Colors.white,
            elevation: 15,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  meal.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'İçindekiler:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    for (var ingredient in meal.ingredients)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ingredient,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Hazırlanış:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    meal.prepare,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
