import 'package:filemanagerui/ui/widgets/style.dart';
import 'package:filemanagerui/utils/colors.dart';
import 'package:filemanagerui/utils/navigationUtils/routes.dart';
import 'package:flutter/material.dart';

import '../../utils/images.dart';
import '../../utils/strings.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SECONDARY_COLOR,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                man,
              ),
            ),
            Expanded(
              child: ClipPath(
                clipper: CustomClip(),
                child: Container(
                  width: double.infinity,
                  color: Colors.black12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        EXPLORE_YOUR_TEXT,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        KEEP_YOUR_TEXT,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, dashboardScreen);
                        },
                        style: buttonStyle,
                        child: const Text(LETS_GO),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var h = size.height;
    var w = size.width;

    var path = Path();

    path.moveTo(0, 50);

    path.lineTo(0, h);

    path.lineTo(w, w);

    path.lineTo(w, 50);

    path.quadraticBezierTo(w / 2, h - 250, 0, 50);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
