import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 30.0,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 34.0,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffEE4266),
    Color(0xffFFD23F),
    Color(0xff3BCEAC),
    Color(0xff0EAD69),
    Color(0xff537DBD),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.0 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          ),
        ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
