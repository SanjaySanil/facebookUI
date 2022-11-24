import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Avatar(displayImage:sanjay,dispalyStatus: false),
      title: TextField(
        decoration: InputDecoration(
            hintText: "Whats on your mind?",
            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
