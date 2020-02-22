import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {

  var message;

  MessageCard(this.message);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.black,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      // shape: ,
      child: Container(
        // margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 15, left: 10, right: 10, top: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(message.title),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 35),
                          child: Text("10 hours ago"),
                        ),
                        // Text("10 hours ago"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.only(top: 0),
                      child: Flexible(
                        child: Text(
                          message.description,
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             Container(
               margin: EdgeInsets.only(top: 10),
               padding: EdgeInsets.symmetric(vertical: 10),
               width: double.infinity,
              child: Text(
                "Message Anonymous Ant",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              color: Colors.black,
             ),
            ],
          ),
        ),
      ),
    );
  }
}