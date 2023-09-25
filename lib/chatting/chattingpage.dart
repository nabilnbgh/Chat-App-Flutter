import 'package:chatapp/chatting/chatlog.dart';
import 'package:chatapp/chatting/chatting.dart';
import 'package:chatapp/chatting/chattingcard.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  List<ChatLog> chatlog = [];
  late Chatting chatting;
  void addChatLog() {
    chatlog.add(ChatLog(
        messageId: 5,
        text:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
        timestamp: "10:05 AM",
        side: "left"));
    chatlog.add(ChatLog(
        messageId: 4,
        text:
            "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet",
        timestamp: "10:03 AM",
        side: "right"));
    chatlog.add(ChatLog(
        messageId: 3,
        text:
            "Or maybe not, let me check logistics and call you. Give me sometime",
        timestamp: "10:03 AM",
        side: "left"));
    chatlog.add(ChatLog(
        messageId: 2,
        text: "I believe they must have misplaced it elsewhere?!",
        timestamp: "10:02 AM",
        side: "right"));
    chatlog.add(ChatLog(
        messageId: 1,
        text: "Did you recieve the package I sent you the other day?",
        timestamp: "10:00 AM",
        side: "left"));
  }

  @override
  void initState() {
    super.initState();
    addChatLog();
    chatting = Chatting(
        id: 2,
        name: "Alex",
        picture: "https://image.ibb.co/cA2oOb/alex_1.jpg",
        chatlog: chatlog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 27, 33),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 34, 45, 52),
                ),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(chatting.picture),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatting.name,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Color.fromARGB(255, 233, 237, 239),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Online",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Color.fromARGB(255, 233, 237, 239),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (context, index) {
              return ChattingCard(
                textChat: chatlog[index].text,
                direction: chatlog[index].side,
              );
            },
            itemCount: chatlog.length,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 42, 57, 66)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          counterText: '',
                          icon: GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.add_circle,
                                color: Color.fromARGB(255, 123, 139, 149)),
                          ),
                          hintText: "Type message...",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 123, 139, 149)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: const Icon(
                        Icons.send,
                        color: Color.fromARGB(255, 123, 139, 149),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
