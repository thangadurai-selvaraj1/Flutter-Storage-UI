import 'package:flutter/material.dart';

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 12),
  minimumSize: const Size(150, 35),
  primary: Colors.blue.shade400,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(10),
  )),
  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
);
