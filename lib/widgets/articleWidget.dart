import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "We found something interesting",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/clumsy.png',
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width*1.0,
              ),
            ],
          ),
          Text(
            "Creating the perfect work-life balance",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800
            ),
          ),
          Text("6 min read"),
        ],
      ),
    );
  }
}