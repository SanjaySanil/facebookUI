import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'storyCard.dart';

class StorySection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(labelText:"Add to Your Story", story: sanjay, avatar: sanjay,createStoryStatus: true,displayBorder: true,),
          StoryCard(labelText:"PavanKumar ", story: abidStory, avatar: pavan1,createStoryStatus: false,displayBorder: true,),
          StoryCard(labelText:"Anand CB", story: anand, avatar: anand1,createStoryStatus: false,displayBorder: true,),
          StoryCard(labelText:"Fazalul Abid", story: anees, avatar: anees1,createStoryStatus: false,displayBorder: true,),


        ],
      ),
    );

  }
}
