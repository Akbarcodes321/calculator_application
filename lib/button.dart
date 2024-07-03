import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPress;
  const Button({super.key, required this.name, required this.color,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 75,
          decoration:BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff004D40),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
      );
  }
}
