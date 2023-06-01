import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 46.0,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: Center(
          child: Icon(
        icon,
        size: 28.0,
      )),
    );
  }
}
