import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final VoidCallback onPressed;
  final bool loading;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double elevation;

  CustomButton({
    @required this.text,
    this.fontSize,
    this.onPressed,
    this.loading,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text),
        hoverElevation: 50,
        color: backgroundColor,
        textColor: textColor,
        elevation: elevation,
        onPressed: onPressed,
      ),
    );
  }
}
