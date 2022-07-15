import 'package:filemanagerui/ui/screens/dashboard_screen.dart';
import 'package:filemanagerui/ui/screens/landing_screen.dart';
import 'package:filemanagerui/ui/screens/recent_files_screen.dart';
import 'package:filemanagerui/utils/navigationUtils/routes.dart';
import 'package:filemanagerui/utils/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: FILE_MANAGER_UI,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        landingScreen: (context) => const LandingScreen(),
        dashboardScreen: (context) => const DashboardScreen(),
        recentFilesScreen: (context) => const RecentFilesScreen()
      },
    );
  }
}
