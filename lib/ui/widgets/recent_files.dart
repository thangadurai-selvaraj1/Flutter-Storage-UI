import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final String description;
  final IconData tailingIcon;

  const RecentFiles(
      {Key? key,
      required this.leadingIcon,
      required this.title,
      required this.description,
      required this.tailingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(
            leadingIcon,
            height: 40,
            width: 40,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.grey, fontSize: 11),
              )
            ],
          ),
          trailing: Icon(
            tailingIcon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
