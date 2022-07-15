import 'package:flutter/material.dart';

import '../utils/images.dart';

class RecentFilesModel {
  final String leadingIcon;
  final String title;
  final String description;
  final IconData tailingIcon;

  RecentFilesModel(
      this.leadingIcon, this.title, this.description, this.tailingIcon);

  static List<RecentFilesModel> getDummy() {
    return [
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
      RecentFilesModel(folder, "Music", "description", Icons.more_vert),
    ];
  }
}
