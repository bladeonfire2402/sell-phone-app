import 'package:flutter/material.dart';

class ButtonSwitch extends StatelessWidget {
  const ButtonSwitch({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
  });

  final Function()? onTap;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80, // Chiều rộng của nút
      height: 30, // Chiều cao của nút
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor ?? Theme.of(context).colorScheme.onPrimary, 
          backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primaryFixed, padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ), // Màu chữ của nút
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
