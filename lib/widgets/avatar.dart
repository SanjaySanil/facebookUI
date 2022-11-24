import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool dispalyStatus;
  final bool dispalyBorder;
  final double width;
  final double height;

  Avatar(
      {required this.displayImage,
      required this.dispalyStatus,
      this.dispalyBorder = false,
      this.width = 60,
      this.height = 60});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: dispalyBorder == true
                ? Border.all(color: Colors.blueAccent, width: 3)
                : Border(),
          ),
          padding: EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              displayImage,
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
          ),
        ),
        dispalyStatus == true
            ? Positioned(
                right: 0,
                bottom:3 ,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
