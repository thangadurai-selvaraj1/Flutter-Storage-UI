import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final double progress;

  const CategorySection(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.title,
      required this.description,
      required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.grey, fontSize: 8),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 4,
                    backgroundColor: Colors.white10,
                    valueColor: AlwaysStoppedAnimation<Color>(iconColor),
                  ),
                ),
                Text(
                  "${progress * 100}%".replaceAll(".0", ""),
                  style: const TextStyle(color: Colors.grey, fontSize: 8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
