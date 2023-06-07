import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 34.0,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.0 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => const ColorItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
