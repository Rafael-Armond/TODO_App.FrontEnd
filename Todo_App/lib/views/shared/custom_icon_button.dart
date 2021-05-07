import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final double radius;

  CustomIconButton({
    @required this.iconData,
    this.onTap,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
