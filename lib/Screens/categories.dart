import 'package:flutter/material.dart';
import 'package:mealapp/Screens/Smeal.dart';
import 'package:mealapp/data/dummy_data.dart';

import 'package:mealapp/widgets/category_grid_item.dart';

import '../models/Meal.dart';
import '../models/category.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> gridslideanimate;
  final List<Meal> meals = dummyMeals;
  final List<Category> category = availableCategories;
  @override
  void initState() {
    controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    gridslideanimate =
        Tween(begin: Offset(1, -1), end: Offset.zero).animate(controller);

    super.initState();
    controller.forward();
  }

  void selectcategory(context, Category category) {
    final filtermeal =
        meals.where((meal) => meal.categories.contains(category.id)).toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Smeal(
                  meals: filtermeal,
                  title: category.title,
                )));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: gridslideanimate,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: [
          for (final raja1 in availableCategories)
            CategoryGridItem(
                raja: raja1,
                onselectcategory: () {
                  selectcategory(context, raja1);
                }),
        ],
      ),
    );
  }
}
