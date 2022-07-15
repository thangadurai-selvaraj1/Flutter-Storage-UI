import 'package:filemanagerui/models/category_model.dart';
import 'package:filemanagerui/models/recent_files_model.dart';
import 'package:filemanagerui/ui/widgets/recent_files.dart';
import 'package:filemanagerui/ui/widgets/storage_info.dart';
import 'package:filemanagerui/utils/colors.dart';
import 'package:filemanagerui/utils/navigationUtils/routes.dart';
import 'package:filemanagerui/utils/strings.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';
import '../widgets/category_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: SECONDARY_COLOR,
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset(
              menu,
              height: 30,
              width: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                search,
                height: 30,
                width: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          title: const Text(FILE_MANAGER),
        ),
        backgroundColor: SECONDARY_COLOR,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const StorageInfo(
                  title: CLOUD_STORAGE,
                  description: "Some description",
                  storage: 0.6,
                  usedColor: Colors.blue,
                  unUsedColor: Colors.grey,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    var data = CategoryModel.getDummy()[index];
                    return CategorySection(
                        icon: data.icon,
                        iconColor: data.iconColor,
                        title: data.title,
                        description: data.description,
                        progress: data.progress);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        RECENT_FILES,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, recentFilesScreen);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            VIEW_ALL,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = RecentFilesModel.getDummy()[index];
                      return RecentFiles(
                          leadingIcon: data.leadingIcon,
                          title: data.title,
                          description: data.description,
                          tailingIcon: data.tailingIcon);
                    }),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
