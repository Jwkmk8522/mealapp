import 'package:flutter/material.dart';
import 'package:mealapp/widgets/mealtrait.dart';

import '../models/Meal.dart';

class Wmeal extends StatelessWidget {
  Wmeal({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          FadeInImage(
            placeholder: NetworkImage(
                'https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png'),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black45,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 44),
              child: Column(
                children: [
                  Text(
                    meal.title,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Row(
                    children: [
                      Mealtrait(
                          label: '${meal.duration}min', icon: Icons.schedule),
                      SizedBox(width: 10),
                      Mealtrait(
                          label:
                              '${meal.complexity.name[0].toUpperCase()}${meal.complexity.name.substring(1)}',
                          icon: Icons.work),
                      SizedBox(width: 10),
                      Mealtrait(
                          label:
                              '${meal.affordability.name[0].toUpperCase()}${meal.affordability.name.substring(1)}',
                          icon: Icons.attach_money)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
