import 'package:facebook/generated/assets.dart';
import 'package:flutter/material.dart';
import 'assets.dart';

class AddFriendCardSection extends StatelessWidget {
  final String displayImage;
  final String titleText;
  final String subTitleText;
  AddFriendCardSection({
    required this.displayImage,
    required this.titleText,
    required this.subTitleText
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 5),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionButtons(),
        ],
      ),
    );
  }

  Widget suggestionButtons() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(titleText),
              subtitle: Text(subTitleText),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonAction: () {},
                      buttonIcon: Icons.add_moderator,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend"),
                  outlinedButton(
                      buttonAction: () {},
                      buttonTextColor: Colors.black,
                      buttonText: "Remove")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget outlinedButton({
    required void Function() buttonAction,
    required buttonTextColor,
    required String buttonText,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.grey[300]),
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconButton(
      {required void Function() buttonAction,
      required IconData buttonIcon,
      required Color buttonColor,
      required Color buttonTextColor,
      required Color buttonIconColor,
      required String buttonText}) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      onPressed: () {},
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.asset(displayImage,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
