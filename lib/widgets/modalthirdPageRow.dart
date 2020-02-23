import 'package:flutter/material.dart';

class ThirdPageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 6),
                child: Icon(Icons.mode_edit),
              ),
              Text("Meditate"),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 12),
                child: GestureDetector(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 39
                    ),
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 12),
                child: GestureDetector(
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 21
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 12),
                child: GestureDetector(
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 27
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}