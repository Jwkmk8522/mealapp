import 'package:flutter/material.dart';
import 'package:mealapp/Screens/categories.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    Widget activepage = const categories();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.set_meal),
          label: "Categories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "Favourites",
        ),
      ]),
    );
  }
}
