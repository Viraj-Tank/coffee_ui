import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;
  CoffeeType(
      {Key? key,
      required this.coffeeType,
      required this.isSelected,
      required this.onTap
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Text(
          coffeeType,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color:isSelected ? Colors.orange: Colors.white,
          ),
        ),
      ),
    );
  }
}
