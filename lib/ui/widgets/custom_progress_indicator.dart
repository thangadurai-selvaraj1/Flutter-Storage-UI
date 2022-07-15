import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double progress;
  final Color color;
  const CustomProgressIndicator(
      {Key? key, required this.progress, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(10),
          height: 100,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 8,
            backgroundColor: Colors.white10,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
        Positioned(
          top: 40,
          left: 38,
          child: Text(
            "${(progress * 100)}".replaceAll(".0", ""),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
