import 'package:flutter/material.dart';

import 'custom_progress_indicator.dart';
import 'space_indicator.dart';

class StorageInfo extends StatelessWidget {
  final String title;
  final String description;
  final double storage;
  final Color usedColor;
  final Color unUsedColor;

  const StorageInfo(
      {Key? key,
      required this.title,
      required this.description,
      required this.storage,
      required this.usedColor,
      required this.unUsedColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomProgressIndicator(
              progress: 0.9,
              color: usedColor,
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SpaceIndicator(
                        color: usedColor,
                        text: "${storage * 100}GB Used".replaceAll(".0", "")),
                    SpaceIndicator(
                        color: unUsedColor,
                        text: "${(1.0 - storage) * 100}GB Free"
                            .replaceAll(".0", ""))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
