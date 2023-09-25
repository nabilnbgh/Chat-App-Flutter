import 'package:chatapp/chat/chat.dart';
import 'package:chatapp/chat/chatcard.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Chat> listChat = [];

  void addListChat() {
    listChat.add(Chat(
        id: 2,
        name: "Alex",
        picture: "https://image.ibb.co/cA2oOb/alex_1.jpg",
        latestTimestamp: "10:00 AM",
        lastChat:
            "Or maybe not, let me check logistics and call you. Give me sometime"));
    listChat.add(Chat(
        id: 3,
        name: "Bob",
        picture: "https://image.ibb.co/gSyTOb/bob_1.jpg",
        latestTimestamp: "17:30 PM",
        lastChat: "Alright"));
    listChat.add(Chat(
        id: 4,
        name: "Zach",
        picture: "https://image.ibb.co/b4kxGw/zach_1.jpg",
        latestTimestamp: "Yesterday",
        lastChat: "I thought that the event was over long ago"));
    listChat.add(Chat(
        id: 5,
        name: "Chloe",
        picture: "https://image.ibb.co/ncAa3b/chloe_1.jpg",
        latestTimestamp: "Wednesday",
        lastChat: "sure i'll take it from you"));
    listChat.add(Chat(
        id: 6,
        name: "Zen",
        picture: "https://image.ibb.co/eeqWbw/zen_1.jpg",
        latestTimestamp: "19/11/17",
        lastChat: "lol"));
  }

  @override
  void initState() {
    super.initState();
    addListChat();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return ChatCard(chat: listChat[index]);
      }),
      itemCount: listChat.length,
    );
  }
}
