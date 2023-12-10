import 'package:flutter/material.dart';
import 'package:mealsapp/models/menu.dart';
import 'package:mealsapp/screens/favorites.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Theme.of(context).primaryColor,
        onTap: () {
          print("Geliştirilecek..");
          if (menu.name == "Favoriler") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => Favorites()));
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue.withOpacity(0.2),
              Colors.blue.withOpacity(0.9),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  menu.name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                menu.iconn
              ],
            ),
          ),
        ),
      ),
    );
  }
}
