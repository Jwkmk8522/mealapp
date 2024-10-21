import 'package:flutter/material.dart';

class maindrawer extends StatelessWidget {
  const maindrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                ),
                SizedBox(width: 10),
                Text("Food Lover...")
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text("Meal"),
          ),
          ListTile(
            leading: Icon(
              Icons.filter,
              size: 26,
            ),
            title: Text("Filters"),
          ),
        ],
      ),
    );
  }
}
