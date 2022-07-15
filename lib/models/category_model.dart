import 'package:flutter/material.dart';

class CategoryModel {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final double progress;

  CategoryModel(
      this.icon, this.iconColor, this.title, this.description, this.progress);

  static List<CategoryModel> getDummy() {
    return [
      CategoryModel(
          Icons.photo, Colors.yellowAccent, "Images", "100 Images", 0.8),
      CategoryModel(Icons.video_collection_rounded, Colors.redAccent, "Videos",
          "30 Videos", 0.5),
      CategoryModel(Icons.music_note, Colors.green, "Musics", "234 Songs", 0.9),
      CategoryModel(Icons.file_copy, Colors.blue, "Documents", "200 Docs", 0.3),
    ];
  }
}
