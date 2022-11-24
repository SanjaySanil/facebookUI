import 'package:facebook/addFriendSection.dart';
import 'package:facebook/section/buttons.dart';
import 'package:facebook/section/headerButton.dart';
import 'package:facebook/section/roomsection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/storySedtion/storySection.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'assets.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  Widget divider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                fontSize: 35,
                color: Color.fromRGBO(24, 119, 242, 1),
                fontWeight: FontWeight.w900),
          ),
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: () {}),
            CircularButton(buttonIcon: Icons.message, buttonAction: () {}),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtons(
              button1: headerButton(
                  buttonText: "Live",
                  iconColor: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.red),
              button2: headerButton(
                  buttonText: "Photo",
                  iconColor: Icons.photo_library,
                  buttonAction: () {},
                  color: Colors.green),
              button3: headerButton(
                  buttonText: "Room",
                  iconColor: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.purple),
            ),
            divider,
            RoomSection(),
            divider,
            StorySection(),
            divider,
            PostCard(
              avatar: sanjay,
              name: "Sanjay Sanil",
              time: "5h",
              postTitle: "Stay With the Feelings!",
              postImage: sanjay1,
              blueTick: true,
              displayComment: " 500K",
              displayLike: "1M",
              displayShares: "200K",
            ),
            divider,
            PostCard(
              avatar: pavan,
              name: "Pavan Kumar AV",
              time: "4h",
              postTitle: "Happy Hell",
              postImage: pavan1,
              blueTick: true,
              displayComment: "500K",
              displayLike: "100K",
              displayShares: "1K",
            ),
            divider,
            AddFriendSection(),
            divider,
            PostCard(
              avatar: sanjith,
              name: "Sanjith Edathadan",
              time: "1h",
              postTitle: "",
              postImage: sanjith1,
              blueTick: false,
              displayComment: "400K",
              displayLike: "110K",
              displayShares: "10K",
            ),
            divider,
            PostCard(
              avatar: sidhique,
              name: "Piolet_On_track",
              time: "1h",
              postTitle: "",
              postImage: sidhique1,
              blueTick: false,
              displayComment: "300K",
              displayLike: "110K",
              displayShares: "10K",
            ),
            divider,
            PostCard(
              avatar: anees,
              name: "Anees Hassainar",
              time: "10m",
              postTitle: "",
              postImage: anees1,
              blueTick: false,
              displayComment: "222K",
              displayLike: "10K",
              displayShares: "1K",
            ),
            divider,
            PostCard(
              avatar: abid,
              name: "Fazalul Abid",
              time: "10m",
              postTitle: "Thazhathillada",
              postImage: abid1,
              blueTick: false,
              displayComment: "601K",
              displayLike: "110K",
              displayShares: "1K",
            ),
            divider,
            PostCard(
              avatar: aljo,
              name: "Aljo Augustine",
              time: "10m",
              postTitle: "",
              postImage: aljo1,
              blueTick: false,
              displayComment: "700K",
              displayLike: "101K",
              displayShares: "1K",
            ),
            divider,
            PostCard(
              avatar: anand,
              name: "Anand CB",
              time: "1h",
              postTitle: "",
              postImage: anand1,
              blueTick: false,
              displayComment: "155k",
              displayLike: "100K",
              displayShares: "1K",
            ),
            divider,
            PostCard(
              avatar: nandhu,
              name: "Black Whale",
              time: "20m",
              postTitle: "Black Whale",
              postImage: nandhu1,
              blueTick: true,
              displayComment: "20k",
              displayLike: "140K",
              displayShares: "122K",
            ),
            divider,
            PostCard(
              avatar: nikhil,
              name: "Nikhil Jayadevan",
              time: "40m",
              postTitle: "Happy Pills",
              postImage: nikhil1,
              blueTick: false,
              displayComment: " 1K",
              displayLike: "10K",
              displayShares: "1K",
            ),
            divider,
            PostCard(
              avatar: shihab1,
              name: "S K S",
              time: "50m",
              postTitle: "Empty",
              postImage: shihab,
              blueTick: true,
              displayComment: "500K",
              displayLike: "100K",
              displayShares: "10K",
            ),
            divider,
          ],
        ),
      ),
    );
  }
}
