import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;

  CircleIcon(this.iconData, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.3), // Adjust opacity as needed
        ),
        padding: EdgeInsets.all(10.0), // Adjust padding as needed
        child: Icon(
            iconData,
            color: color,
            size: 50.0,
            ),
        );
    }
}