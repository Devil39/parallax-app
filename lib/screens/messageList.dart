import 'package:flutter/material.dart';

import 'package:parallax/models/messageModel.dart';
import 'package:parallax/screens/chatList.dart';
import 'package:parallax/widgets/messageCard.dart';
import 'package:parallax/scoped_models/mainModel.dart';
// import 'package:parallax/models/chatList.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {

  var messages=null;

  @override
  void initState(){
    super.initState();
    final MainModel model=MainModel();
    _initializePage(model);
  }

  void _initializePage(MainModel model) async {
    var a=await model.getAllPosts();
    // print(a);
    // print(a["payload"]["posts"]);
    setState(() {
      messages=MessagesModel.fromJson(a["payload"]["posts"]).messages;
    });
    // print(messages.messages);
    // var messages=MessagesModel.fromJson(a["payload"]["posts"]);
  }

  List<Widget> _buildAppBarActionButtons(){
    return <Widget>[
          Container(
            child: IconButton(
              icon: Icon(
                Icons.bookmark,
                size: 30,
                color: Colors.black,
              ),
              onPressed: (){}
            ),
          ),
        ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Lorem Ipsum",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: _buildAppBarActionButtons(),
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: messages==null
      ?Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      )
      :ListView.builder(
        itemCount: messages.length,
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index){
          return Container(
            // child: Text("2"),
            child: MessageCard(messages[index]),
          );
        }
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  // Navigator.push(context, ChatList());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatList(),
                    ),
                  );
                },
                child: Container(
                  child: Icon(Icons.home),
                ),
              ),
              Container(
                child: Icon(Icons.home),
              ),
              Container(
                child: Icon(Icons.message),
              ),
              // Container(
              //   // child: Column(
              //   //   children: <Widget>[
              //   //     Icon(Icons.home),
              //   //     Text("Home"),
              //   //   ],
              //   // ),
              // ),
              // Container(
              //   child: Icon(Icons.home),
              // ),
              // Container(
              //   child: Icon(Icons.home),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}