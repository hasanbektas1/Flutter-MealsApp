import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/widgets/menu_card.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
              child: Card(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {
                    print("Geliştirilecek..");
                    if (menu.name == "Favoriler") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => Favorites()));
                    }
                    if (menu.name == "Tanıtım") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => MenusCard()));
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.black.withOpacity(0.9),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            menu.name,
                            style: const TextStyle(
                                fontSize: 21, color: Colors.white),
                          ),
                          menu.iconn
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
