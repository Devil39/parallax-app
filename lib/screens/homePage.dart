import 'package:flutter/material.dart';

import 'package:parallax/widgets/dateWidget.dart';
import 'package:parallax/widgets/activityWidget.dart';
import 'package:parallax/widgets/articleWidget.dart';
import 'package:parallax/screens/chatList.dart';
import 'package:parallax/screens/messageList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  // void showModal(BuildContext context){
  //   showBottomSheet(
  //     context: context,
  //     builder: (BuildContext context){
  //     return Container(
  //       height: 150.0,
  //       child: Text("Fenil"),
  //     );
  //   });
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(),
        // leading: Container(
        //   margin: EdgeInsets.all(10),
        //   child: Text(
        //   "Hello, Gagan",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 15,
        //   ),
        // ),
        // ),
        title: Text(
          "Hello, Gagan",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(21),
        children: <Widget>[
          DateWidget(),
          ActivityWidget(),
          ArticleWidget(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatList(),
                    ),
                  );
                },
                child: Container(
                  // child: FlatButton(
                  //   child: Container(
                  //     child: Image.asset('images/home.png'),
                  //   ),
                  //   onPressed: (){},
                  // ),
                  child: IconButton(
                    icon: Icon(Icons.home),
                    onPressed: (){}
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.people),
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessageList(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.message),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessageList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){},
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            // showModal(context);
            scaffoldKey.currentState.showBottomSheet((context)=>Container(
                height: 150.0,
                color: Colors.red
              )
            );
          },
          iconSize: 33,
        ),
      ),
    );
  }
}