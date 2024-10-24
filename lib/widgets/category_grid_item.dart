import 'package:flutter/material.dart';

import 'package:mealapp/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  CategoryGridItem(
      {super.key, required this.raja, required this.onselectcategory});

  final Category raja;
  final VoidCallback onselectcategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onselectcategory,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                raja.color.withOpacity(0.8),
                raja.color.withOpacity(0.5),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            raja.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
