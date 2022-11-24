import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: [
          createRoom(),
          Avatar(displayImage: anand, dispalyStatus: true),
          Avatar(displayImage: abid, dispalyStatus: true),
          Avatar(displayImage: anees, dispalyStatus: true),
          Avatar(displayImage: sanjith, dispalyStatus: true),
          Avatar(displayImage: shihab, dispalyStatus: true),
          Avatar(displayImage: aljo, dispalyStatus: true),
          Avatar(displayImage: nandhu, dispalyStatus: true),
        ],
      ),
    );
  }
}

Widget createRoom() {
  return Container(
    padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
    child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(color: Colors.blue, width: 1)),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      onPressed: () {},
      label: Text(
        "Create\nRoom",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
