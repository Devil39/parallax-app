import 'package:flutter/material.dart';

import 'package:parallax/widgets/activityCard.dart';

class ActivityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "You might love doing these today!",
            style: TextStyle(
              fontSize: 17.7,
              fontWeight: FontWeight.w800
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              // crossAxisAlignment: WrapCrossAlignment.center,
              // runAlignment: WrapAlignment.center,
              // textDirection: TextDirection.ltr,
              alignment: WrapAlignment.center,
              children: <Widget>[
                ActivityCard(title: "Jogging",),
                ActivityCard(title: "Frogging",),
                ActivityCard(title: "Watch Cinema",),
                ActivityCard(title: "Jogging",),
                ActivityCard(title: "Jogging",),
                ActivityCard(title: "Jogging",),
                ActivityCard(title: "Jogging",),
                ActivityCard(title: "Jogging",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}