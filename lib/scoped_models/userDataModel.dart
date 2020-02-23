import 'dart:async';
import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

import 'package:parallax/scoped_models/urls.dart';

mixin ChipModel on Model{
  Future<dynamic> getAllAcitivityForHomePage() async {
   var statuscode;
   var message;
   try{
      print("Sending get all acitivty Request!");
      http.Response response=await http.get(
          url_getAllActivities,
          headers: {"Content-type": "application/json"},
        );
      print("Response for getting all activities:");
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
    print("Error getting all activities for home page!....$err");
    return {
      "code": statuscode,
      "message": err
    };
  }
 }
}