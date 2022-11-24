import 'package:flutter/material.dart';
Widget headerButton({
  required String buttonText,
  required IconData iconColor,
  required void Function() buttonAction,
  required Color color}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      iconColor,
      color: color,
      size: 24.0,
    ),
    label: Text(
      buttonText,
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
    ),
  );
}