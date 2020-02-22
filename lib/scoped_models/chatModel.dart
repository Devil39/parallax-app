import 'dart:async';
import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

import 'package:parallax/scoped_models/urls.dart';

mixin ChatModel on Model{
  Future<dynamic> startChat(String uid, String friendUid) async {
   var statuscode;
   var message;
   var body=json.encode({
     "uid": uid,
     "friendUid": friendUid
   });
   try{
      print("Sending start chatting Request!");
      http.Response response=await http.post(
          url_startChat,
          headers: {"Content-type": "application/json"},
          body: body
        );
      print("Response Start Chatting:");
      print(response.statusCode);
      print(response.body);
      statuscode=response.statusCode;
      if(response.statusCode==200)
       {
        return jsonDecode(response.body);
      }
      else{
        if(response.statusCode==500 || response.statusCode==400 || response.statusCode==404)
          {
            throw "Server Error!";
          }
        else{
          print("This wala error!");
          message=jsonDecode(response.body)["message"];
          // throw jsonDecode(response.body)["message"];
          throw message;
        }
      }
   }
  catch(err){
    print("Error starting chat!....$err");
    return {
      "code": statuscode,
      "message": err
    };
  }
 }
}