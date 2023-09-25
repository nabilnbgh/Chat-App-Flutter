import 'package:chatapp/chatting/chatlog.dart';

class Chatting {
  Chatting(
      {required this.id,
      required this.name,
      required this.picture,
      required this.chatlog});
  int id;
  String name;
  String picture;
  List<ChatLog> chatlog;
}
