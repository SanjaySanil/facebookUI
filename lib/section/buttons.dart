import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  final Widget button1;
  final Widget button2;
  final Widget button3;

  HeaderButtons({
    required this.button1,
    required this.button2,
    required this.button3,
  });

  Widget verticalDivider =
      VerticalDivider(thickness: 1, color: Colors.grey[300]);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button1,
          verticalDivider,
          button2,
          verticalDivider,
          button3,
        ],
      ),
    );
  }
}
