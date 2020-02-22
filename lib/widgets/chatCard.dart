import 'package:flutter/material.dart';

import 'package:parallax/screens/chatScreen.dart';

class ChatCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          print("Pushing!");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ),
          );
        },
          child: Card(
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 21, vertical: 10),
        // color: Colors.black,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Container(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                Expanded(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Somehting",
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Somebuinf",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black87,
                  child: Text("2"),
                  maxRadius: 12
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}