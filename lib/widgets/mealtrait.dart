import 'package:flutter/material.dart';

class Mealtrait extends StatelessWidget {
  const Mealtrait({super.key, required this.label, required this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 17),
        SizedBox(width: 5),
        Text(
          label,
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
