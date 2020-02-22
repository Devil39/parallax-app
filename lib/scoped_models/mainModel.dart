import 'package:scoped_model/scoped_model.dart';

import 'package:parallax/scoped_models/communityModel.dart';
import 'package:parallax/scoped_models/userModel.dart';
import 'package:parallax/scoped_models/chatModel.dart';

class MainModel extends Model with CommunityModel, UserModel, ChatModel{

}