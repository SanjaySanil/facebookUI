import 'package:facebook/assets.dart';
import 'package:facebook/blueTick/blueTick.dart';
import 'package:facebook/section/buttons.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../section/headerButton.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String postTitle;
  final String postImage;
  final bool blueTick;
  final String displayLike;
  final String displayComment;
  final String displayShares;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.postTitle,
      required this.postImage,
      required this.blueTick,
      required this.displayLike,
      required this.displayComment,
      required this.displayShares});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtons(
            button1:headerButton(buttonText: "Like", iconColor: Icons.thumb_up_alt_outlined, buttonAction: (){}, color: Colors.grey),
            button2: headerButton(buttonText: "Comment", iconColor: Icons.message_outlined, buttonAction: (){}, color: Colors.grey),
            button3: headerButton(buttonText: "Share", iconColor: Icons.share, buttonAction: (){}, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              displayText(displayLike),
            ],
          ),
          Row(
            children: [
              displayText(displayComment),
              SizedBox(
                width: 5,
              ),
              displayText("Comment"),
              SizedBox(
                width: 10,
              ),
              displayText(displayShares),
              SizedBox(
                width: 5,
              ),
              displayText("Shares"),
              SizedBox(
                width: 10,
              ),
              Avatar(
                displayImage: avatar,
                dispalyStatus: false,
                height: 25,
                width: 25,
              ),
              IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down,color: Colors.grey[700],))
            ],
          ),
        ],
      ),
    );
  }

  Widget displayText(@required String label) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, dispalyStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          blueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(time == null ? "" : time),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.public, color: Colors.grey[700], size: 15)
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
Widget buttonColor(){
  return Icon(Icons.thumb_up,color: Colors.blue,);
}
