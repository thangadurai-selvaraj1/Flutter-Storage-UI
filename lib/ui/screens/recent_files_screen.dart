import 'package:filemanagerui/utils/strings.dart';
import 'package:flutter/material.dart';

import '../../models/recent_files_model.dart';
import '../../utils/colors.dart';
import '../widgets/recent_files.dart';

class RecentFilesScreen extends StatelessWidget {
  const RecentFilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SECONDARY_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: SECONDARY_COLOR,
        title: const Text(RECENT_FILES),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: RecentFilesModel.getDummy().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var data = RecentFilesModel.getDummy()[index];
              return RecentFiles(
                  leadingIcon: data.leadingIcon,
                  title: data.title,
                  description: data.description,
                  tailingIcon: data.tailingIcon);
            }),
      ),
    );
  }
}
