import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() onPressed;
  const CalculatorButton({
    Key? key,
    required this.title,
    this.backgroundColor,
    this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: backgroundColor ?? Colors.grey[900],
          shape: CircleBorder(),
          padding: EdgeInsets.all(10),
          minimumSize: Size(75,75),
          maximumSize: Size(120,120)
      ),

      child: Text(
        title,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
