import 'package:flutter/material.dart';

class MenusCard extends StatelessWidget {
  const MenusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealsApp Hakkında'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'MealsApp Hakkında',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "MealsApp, yemek tutkunları için tasarlanmış kullanıcı dostu bir mobil uygulamadır. Uygulama, kullanıcılara kategorilere ayrılmış geniş bir yemek seçeneği sunar. Kullanıcılar istedikleri kategoriyi seçer, favori yemeklerini bulur ve hatta kendi favori tariflerini kaydedebilirler. ",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Uygulama Hakkında',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            const Text(
              'MealsApp, Flutter framework kullanılarak geliştirilmiştir. '
              'Ayrıntılı bilgi ve kaynak kodları için GitHub sayfamızı ziyaret edebilirsiniz:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                print("Geliştirilecek..");
              },
              child: const Text(
                'https://github.com/hasanbektas1/MealsApp',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
