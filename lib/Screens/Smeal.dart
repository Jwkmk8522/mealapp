import 'package:flutter/material.dart';
import 'package:mealapp/models/Meal.dart';
import 'package:mealapp/widgets/Wmeal.dart';

class Smeal extends StatelessWidget {
  const Smeal({super.key, required this.meals, required this.title});
  final List<Meal> meals;
  final String title;
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "No meal in this Category",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSecondaryContainer),
        ),
        SizedBox(height: 16),
        Text(
          "Try with a defferent Category",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSecondaryContainer),
        ),
      ],
    ));
    if (meals.isNotEmpty) {
      content = ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) => Wmeal(meal: meals[index]));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: content,
    );
  }
}
