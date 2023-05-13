import 'package:flutter/material.dart';

class BlueSquare extends StatelessWidget {
  final double size;
  final int clicks;
  final Function updateClicks;

  const BlueSquare({
    Key? key,
    required this.size,
    required this.clicks,
    required this.updateClicks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateClicks();
      },
      child: Container(
        height: size,
        width: size,
        color: Colors.blue,
        child: Text(
          '$clicks',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
