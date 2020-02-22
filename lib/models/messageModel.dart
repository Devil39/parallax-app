class MessagesModel{
  List<dynamic> messages;

  MessagesModel({this.messages});

  factory MessagesModel.fromJson(dynamic json){
    List<dynamic> messageList=json.map((i)=>MessageModel.fromJson(i)).toList();
    return MessagesModel(
      messages: messageList
    );
  }
}

class MessageModel{
  String messageId;
  bool isAno;
  String description;
  String timeStamp;
  String title;
  String uid;

  MessageModel({
    this.messageId,
    this.isAno,
    this.description,
    this.timeStamp,
    this.title,
    this.uid
  });

  factory MessageModel.fromJson(dynamic json){
    return MessageModel(
      messageId: json["message_id"],
      isAno: json["isAno"],
      description: json["desc"],
      timeStamp: json["timeStamp"],
      title: json["title"],
      uid: json["uid"]
    );
  }
}