import 'package:facebook/addFriendCardSection.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/generated/assets.dart';
import 'package:flutter/material.dart';

class AddFriendSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      child: Column(
        children: [
          ListTile(
            title:Text("People You May Know"),
            trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.more_horiz,color: Colors.grey[700],),),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                 AddFriendCardSection(displayImage: sidhique, titleText: "Davood", subTitleText: "10 Mutal Friends"),
                AddFriendCardSection(displayImage:nikhil, titleText: "Ajay", subTitleText: "20 Mutal Friends"),
                AddFriendCardSection(displayImage:abid, titleText: "Bravo", subTitleText: "2 Mutal Friends"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
